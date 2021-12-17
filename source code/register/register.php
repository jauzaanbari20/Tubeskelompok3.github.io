<?php
require_once 'koneksi.php'
?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>done!</title>
</head>
<body>
    <?php
    $email=$_POST['email'];
    $username=$_POST['nama'];
    $password=$_POST['pass'];

    $sql= "INSERT INTO tubes (email,username,password,komentar) VALUES ('$email','$username','$password','')";
    if($koneksi->query($sql)===TRUE){
    	echo "<h2>Registrasi berhasil!</h2>";
        
     } else {
      	   echo "Terjadi kesalahan: " .$sql."<br/>".$koneksi->error;
   	}
    ?>
</body>
</html>