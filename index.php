<?php

require_once ("app.php");

pstart ();

$body .= "<div id='beat_display'>*</div>\n";

$body .= "<div>\n";
$body .= file_get_contents ("bar1.svg");
$body .= "</div>\n";


$body .= "<div id='debug'></div>\n";

pfinish ();

