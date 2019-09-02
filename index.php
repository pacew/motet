<?php

require_once ("app.php");

pstart ();

$body .= "<div>\n";
$body .= file_get_contents ("bar1-1.svg");
$body .= "</div>\n";


$body .= "<div id='debug'></div>\n";

pfinish ();

