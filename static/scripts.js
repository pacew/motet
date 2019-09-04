/* much taken from lilypond-html-live-score.js */

var start_msecs;
var glyphs = [];
var currentGlyph = 0;
var intervalID;

function makeGlyphsGrey() {
    glyphs.forEach(function (glyph) {
        glyph.node.setAttribute("fill-opacity", "0.2");
        glyph.node.setAttribute("stroke-opacity", "0.2");
    });
}

function svgCallback() {
  if (currentGlyph < glyphs.length) {
        window.requestAnimationFrame(makeSomeGlyphsBlack);
    } else {
        window.clearInterval(intervalID);
    }
}

var last_pos = 0
function maybe_scroll (pos) {
  if (last_pos == 0 && pos > 1000)
    return
  if (pos <= last_pos + 10)
    return;
  last_pos = pos;
  $("html").animate ({scrollTop: pos - 200});
}

var foobar;
var beats_per_minute = 60;
var last_beatnum = -1000;
var count_in = 8;

function makeSomeGlyphsBlack() {
  delta_secs = (Date.now() - start_msecs) / 1000;
  var beats_per_second = beats_per_minute / 60;
  var beatnum = Math.floor(delta_secs / beats_per_second);
  beatnum -= count_in;

  if (beatnum == last_beatnum)
    return;
  last_beatnum = beatnum;

  var text;
  if (beatnum < 0) {
    var togo = - beatnum - 1;
    var num = beatnum + count_in;
    var m = Math.floor(num / 4);
    var n = num % 4;
    text = "count-in, 2m half-notes: " + (m+1) + "-" + (n+1);
    $("#beat_display").text(text);
  } else {
    var beat_in_measure = (beatnum % 4) + 1;

    $("#beat_display")
      .text(beat_in_measure)
      .animate({color: "black"}, 0)
      .animate({color:"white"}, 900);
  }

  if (beatnum < 0)
    return;

  delta_secs = (beatnum + 1) * beats_per_second;
  
  var last;
  while (currentGlyph < glyphs.length
	 && glyphs[currentGlyph].time < delta_secs) {
    last = glyphs[currentGlyph].node;

    glyphs[currentGlyph].node.setAttribute("fill-opacity", "1.0");
    glyphs[currentGlyph].node.setAttribute("stroke-opacity", "1.0");
    currentGlyph++;
  }
  if (last) {
    foobar = last;
    maybe_scroll ($(last).offset().top)
  }

  

}

function setup () {
  start_msecs = Date.now();
  
//  var gNodes = document.querySelectorAll("g.ly.grob");
  var gNodes = document.querySelectorAll(".Clef");

  // Populate the glyphs array.  It stores pointers to the
  // child nodes (glyphs) of <g> nodes (grobs) with timing data
  // for each glyph.  This gives us a flat array rather than an
  // array of grobs with a nested array of glyphs for each grob.
  for (var i = 0; i < gNodes.length; i += 1) {
    var gNode = gNodes[i];

    var gNodeTime = parseFloat(gNode.getAttribute("data-time"));
    var gNodeChildren = gNode.children;

    for (var c = 0; c < gNodeChildren.length; c += 1) {
      glyphs.push({
        time: gNodeTime,
        node: gNodeChildren[c]
      });
    }
  }

  glyphs.sort(function(a, b) { return a.time - b.time; });

  makeGlyphsGrey();

  intervalID = window.setInterval(svgCallback, 100);
}


$(function () {
  $("#debug").html(window.innerHeight + "x" + window.innerWidth);
  setup ();
  $("html").animate ({scrollTop: 0});

});

 
