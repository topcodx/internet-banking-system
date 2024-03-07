<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

$dbuser="root";
$dbpass="";
$host="localhost";
$db="internetbanking";
$mysqli=new mysqli($host,$dbuser, $dbpass, $db);
