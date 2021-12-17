<?php
  require_once 'koneksi.php'

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Yeay</title>
</head>
<body>
    <?php
    $sumber= $_POST['sumber'];
    $date = $_POST['date'];
    $konten = $_POST['konten'];

    $sql = "INSERT INTO games (id,sumber,tanggal,konten) VALUES ('','$sumber','$date','$konten')";
    if($koneksi->query($sql)===TRUE){
    	echo "<h2>Upload berita berhasil!</h2>";
     } else {
      	   echo "Terjadi kesalahan: " .$sql."<br/>".$koneksi->error;
   	}
  
     $koneksi->close();



    ?>
    
</body>
</html>