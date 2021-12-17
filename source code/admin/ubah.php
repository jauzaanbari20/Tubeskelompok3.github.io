<?php 
session_start();
require "include/header.php"; 
?> 
 
 

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

                    
                        <!-- Area Chart -->
                        <div class="container-fluid px-4 col-lg-8">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Update Akun</h6>
                                    
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
                                    <?php
                                        $id = $_POST['id'];
                                        $query = "SELECT * FROM tubes WHERE id=$id";
                                        $hasil = mysqli_query($con, $query);
                                        foreach($hasil as $data){ 
                                    ?>

                                    <form method="POST" class="my-login-validation"  novalidate="true" >
                                        <input hidden type="number" name="id" value="<?php echo $data['id']; ?>">
                                        <!--<div class="form-group">
                                            <label for="username">Username</label>
                                            <input value="<?php echo $data['username']?>" id="username" type="text" class="form-control" name="username" required data-eye>
                                            <div class="invalid-feedback">
                                                What's your username?
                                            </div>
                                        </div>-->

                                        <div class="form-group">
                                            <label for="name">Name</label>
                                            <input value="<?php echo $data['name']?>" id="name" type="text" class="form-control" name="nama" required autofocus>
                                            <div class="invalid-feedback">
                                                What's your name?
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="email">E-Mail Address</label>
                                            <input value="<?php echo $data['email']?>" id="email" type="email" class="form-control" name="email" required>
                                            <div class="invalid-feedback">
                                                Your email is invalid
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="password">Password</label>
                                            <input value="<?php echo $data['password']?>" id="password" type="password" class="form-control" name="password" required data-eye>
                                            <div class="invalid-feedback">
                                                Password is required
                                            </div>
                                        </div>

                                        
                                        <div class="form-group m-0">
                                            <button name="btnUbah" type="submit" class="btn btn-primary btn-block">
                                                Update
                                            </button>
                                        </div>
                                        
                                    </form>
                                    <!--tutup foreach-->
                                    <?php } ?>
                                    <?php 
                                        if (isset($_POST['btnUbah'])){
                                            $no = $_POST['id'];
                                            
                                            $pass = $_POST['password'];
                                            $nama = $_POST['nama'];
                                            $email = $_POST['email'];

                                            if($con){
                                                $sql = "UPDATE tubes SET password='$pass', name='$nama', email='$email' WHERE id=$no";
                                                mysqli_query($con, $sql);
                                                echo "<p class='alert alert-succes text-center'><b>Perubahan Akun Berhasil Disimpan.";
                                                echo "<a href='Daftar-member2.php' class='btn btn-primary'>Kembali</a></b></p>";
                                            } elseif ($con->connect_error){
                                                echo "<p class='alert alert-danger text-center'><b>Terjadi kesalahan: $error</b></p>";
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



           