<?php
   include "include/header.php";
?> 

<br><br>

<div class="row">

    <!-- Area Chart -->
    <div class="container-fluid px-4 col-lg-9 mr-auto">
        <div class="card shadow mb-4">
            
            <div class=" card-header py-3 d-flex flex-row align-items-center justify-content-between">
                <h6 class="m-0 font-weight-bold text-primary">Daftar Akun</h6> 
            </div>
            <!-- Card Body -->
            <div class="card-body">
               <!-- Card Body -->
            <div class="card-body">
               <?php
               if(isset($_GET['halaman'])&& $_GET['halaman']!=""){
                   $halaman=$_GET['halaman'];
               }else {
                   $halaman = 1;
               }
               
               $limit = 5;
               if($halaman > 1){
                   $offset = ($halaman * $limit) - $limit;
               } else $offset = 0;
               $sebelum = $halaman - 1;
               $sesudah = $halaman + 1;

               $query = "SELECT * FROM tubess WHERE level=2";
               $result = mysqli_query($con, $query);
               $jlh_data = mysqli_num_rows($result);

               $jlh_halaman = ceil($jlh_data / $limit);
               $hal_akhir = $jlh_halaman;

                $query2 = "SELECT * FROM tubess WHERE level=2 LIMIT $offset,$limit";
                $result2 = mysqli_query($con,$query2);
                
                echo "<table class='table table-bordered'>";
                echo "<tr><th>Username</th><th>Email</th><th>Password</th><th colspan='2'></th></tr>";
                    foreach ($result2 as $data) {
                        echo "<tr>";
                        echo "<td>$data[name]</td>";
                        echo "<td>$data[email]</td>";
                        echo "<td>$data[password]</td>";
                        

                        //tombol update
                        
                        echo "<td><form method='POST' action='ubah.php'>";
                        echo "<input hidden type='text' name='id' value=" . $data['id'] . ">";
                        echo "<button type='submit' name='btnUpdate' class='btn btn-success'>Update</button>";
                        echo "</form></td>";

                        //tombol delete
                        echo "<td><form onsubmit=\"return confirm ('Anda Yakin Mau Menghapus Data?');\" ";
                        echo "method='POST'><input hidden name='id' type='text' value=$data[id]>";
                        echo "<button type='submit' name='btnHapus' class='btn btn-danger'>";
                        echo " Delete</button>";
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
            <div class="mx-auto">
            <nav aria-label="Page navigation example">
            <ul class="pagination">
                <?php
                if($halaman==1){
                    echo "";
                } else {
                ?>
                <li class="page-item"><a class="page-link" href="<?php echo "daftar-member.php?halaman=$sebelum";?>">&lt;&lt;</a></li>
                <?php } ?>
                <li class="page-item"><a class="page-link" href="<?php echo "daftar-member.php?halaman=1";?>">1</a></li>
                <li class="page-item"><a class="page-link" href="<?php echo "daftar-member.php?halaman=2";?>">2</a></li>
                <li class="page-item"><a class="page-link" href="<?php echo "daftar-member.php?halaman=3";?>">3</a></li>
                <li class="page-item"><a class="page-link" href="<?php echo "daftar-member.php?halaman=$sesudah";?>">&gt;&gt;</a></li>
            </ul>
             <?php echo "<a href=../admin/phpfpdf/index.php><button type='button' name='btnCETAK' class='btn btn-success'>CETAK</button></a>"; ?>
            </nav>
            </div>
        </div>
    </div>    
</div>
</div>
<!-- /.container-fluid -->

</div>
        <script>
            CKEDITOR.replace('konten');
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="js/my-login.js"></script>
    </body>
</html>