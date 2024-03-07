<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

$dbuser="root";
$dbpass="root";
$host="localhost";
$db="internet_banking_system";
$mysqli=new mysqli($host,$dbuser, $dbpass, $db);
