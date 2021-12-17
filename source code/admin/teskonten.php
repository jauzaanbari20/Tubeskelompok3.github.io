<?php
include 'koneksi.php';
$query=  mysqli_query($koneksi,"SELECT * FROM form ORDER BY id DESC");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
    <?php if(mysqli_num_rows($query)>0){ ?>
        <?php
            
            while($data = mysqli_fetch_array($query)){
        ?>
        <tr>
            
            
            <?php echo $data["konten"];?>  <?php echo $data["tanggal"];?> <br>
            by : <?php echo $data["judul"]; ?> <br>
           
        </tr>
        <?php  } ?>
        <?php } ?>
    
</body>
</html>