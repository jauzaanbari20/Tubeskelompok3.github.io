<?php 
session_start();
require "connection.php"; ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ubah Admin</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="css/my-login.css">
</head>
<body>
    
    <!-- Begin Page Content -->
    <div class="container-fluid">

                    


<!-- Content Row -->

<div class="row">

    <!-- Area Chart -->
    <div class="col-xl-10 col-lg-7">
        <div class="card shadow mb-4">
            <!-- Card Header - Dropdown -->
            <div
                class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                <h6 class="m-0 font-weight-bold text-primary">Daftar Akun</h6>
                
            </div>
            <!-- Card Body -->
            <div class="card-body">
               <?php
                    $query = "SELECT * FROM tubes";
                    $hasil = mysqli_query($con,$query);
                    echo "<table class='table table-bordered'>";
                    echo "<tr><th>Nama</th><th>Email</th><th>Password</th><th></th></tr>";
                    foreach ($hasil as $data) {
                        echo "<tr>";
                        echo "<td>$data[name]";
                        echo "<td>$data[email]";
                        echo "<td>$data[password]";
                        
                        
                        //update
                        echo "<td><form method='POST' action='ubah2.php'>
                        <input hidden type='text' name='id' value=" . $data['id'] . ">
                        <button type='submit' name='btnUpdate' class='btn btn-success'>Update</button></form></td>";

                        //tombol delete
                        echo "<td><form onsubmit=\"return confirm ('Anda Yakin Mau Menghapus Data?');\" method='POST'>";
                        echo "<input hidden name='id' type='text' value=$data[id]>";
                        echo "<button type='submit' name='btnHapus' class='btn btn-danger'>";
                        echo "<i class='fas fa-trash-alt'></i> Delete</button>";
                        echo "</form></td>";

                        echo "</tr>";
                    }
                    echo "</table>";

               ?>
               <?php
                if(isset($_POST['btnHapus'])){
                    $id = $_POST['id'];
                    
                    if ($con) {
                        $sql = "DELETE FROM tubes WHERE id=$id";
                        mysqli_query($con, $sql);
                        echo "<p class='alert alert-success text-center'><b>Data Akun Berhasil Dihapus.</b></p>";
                    } elseif ($con->connect_error) {
                        echo "<p class='alert alert-danger text-center><b>Data Anda Gagal Dihapus. Terjadi Kesalahan: ";
                        echo $con->connect_error . "</b></p>";
                    }
                }
               ?>

            </div>
        </div>
    </div>

    
</div>



</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script src="js/my-login.js"></script>
</body>
</html>