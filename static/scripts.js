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

function makeSomeGlyphsBlack() {
  delta = (Date.now() - start_msecs) / 16666;
  while (currentGlyph < glyphs.length
	 && glyphs[currentGlyph].time < delta) {
    glyphs[currentGlyph].node.setAttribute("fill-opacity", "1.0");
    glyphs[currentGlyph].node.setAttribute("stroke-opacity", "1.0");
    currentGlyph++;
  }
}

function setup () {
  start_msecs = Date.now();
  
  var gNodes = document.querySelectorAll("g.ly.grob");

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
});

 
