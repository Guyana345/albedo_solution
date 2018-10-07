<?php 

$host = "localhost";
$db_name = "masterrepair";
$username = "tmakuyana";
$password = "Guyana345@";
$conn = mysqli_connect($host,$username,$password,$db_name);

if(!$conn)
{
die("Connection failed: " . mysqli_connect_error());
}

?>