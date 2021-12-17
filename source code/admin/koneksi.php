<?php
if(!isset($_SESSION)){
	session_start();
}

$host = 'localhost';
$username = 'root';
$password = '';
$database = 'test';

$con = mysqli_connect($host, $username, $password, $database);

if ($con ->connect_error){
	die("Koneksi Gagal: ".$koneksi->connect_error);
}
?>