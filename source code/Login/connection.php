<?php
if(!isset($_SESSION)){
	session_start();
}


$host = 'localhost';
$user = 'root';
$pass = '';
$database = 'test';

$con = mysqli_connect($host, $user, $pass, $database);

if ($con ->connect_error){
	die("Koneksi Gagal: ".$koneksi->connect_error);
}
?>