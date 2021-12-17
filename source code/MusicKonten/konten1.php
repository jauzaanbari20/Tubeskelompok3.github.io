<?php
include 'koneksi.php';
$query =  mysqli_query($koneksi, "SELECT * FROM Music WHERE id=1");

if (empty($_SESSION['csrf_token'])) {
    $_SESSION['csrf_token'] = bin2hex(random_bytes(32));
}
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta name="csrf-token" content="<?= $_SESSION['csrf_token'] ?>">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All too Well</title>
    <link rel="stylesheet" href="../bootstrap-4.6.0-dist/css/bootstrap.css">
    <link rel="stylesheet" href="js/rapi.css">
    <link rel="stylesheet" href="js/bt1.css">
    <link rel="stylesheet" href="js/konten.css">
    <link rel="stylesheet" href="../bootstrap-4.6.0-dist/filenyaitu.css">
</head>

<body>
    <div class="container">
        <?php include '../navbar/navbar.php' ?>
        <div class="container mt-5 mb-2">
            <div class="row">
                <!--utk berita-->
                <div class="col-sm-8">
                    <!--isi berita-->
                    <div class="container mt-5 bg-light   ">
                        <div class="row my-3 pl-4 pr-4">
                            <?php if (mysqli_num_rows($query) > 0) { ?>
                                <?php

                                while ($data = mysqli_fetch_array($query)) {
                                ?>
                                    <tr>


                                        <div class="pb-3">
                                            <div class="mt-4 tanggal"><?php echo $data["tanggal"]; ?></div>
                                            <?php echo $data["konten"]; ?> <br>
                                        </div> 
                                        <div class="mb-2 tanggal">source : <br><?php echo $data["sumber"]; ?></div> <br>

                                    </tr>
                                <?php  } ?>
                            <?php } ?>
                        </div>
                    </div>
                    <!--end isi berita-->


                </div>
                <!--end isi, komentar, rekom kecil-->


    
                <?php include '../Highlight/Highlight.php'; ?>
            </div>
            <div class='container mt-3 pb-3 bg-light'>
            <?php
            echo "";
            if (empty($_SESSION["name"])) {
                echo "<div class='pt-3 pb-2'>Silahkan Login terlebih dahulu jika ingin berkomentar.</div>";
            } else {
                echo  "<div class='container mb-3'>";
                echo "<form method='POST' id='form_komen'>";
                echo "<div class='form-group'>";
                echo "<input  type='text' name='nama_pengirim' id='nama_pengirim' class='form-control' placeholder='Masukkan Nama'  />";
                echo "</div>";
                echo "<div class='form-group'>";
                echo "<textarea name='komen' id='komen' class='form-control' placeholder='Tulis Komentar' rows='5'></textarea>";
                echo  "</div>";
                echo  "<div class='form-group'>";
                echo  "<input type='hidden' name='komentar_id' id='komentar_id' value='0' />";
                echo  "<input type='submit' name='submit' id='submit' class='btn btn-info' value='Submit' />";
                echo  "</div>";
                echo  "</form>";
                echo   "<hr>";
                echo   "<h4 class='mb-3'>Komentar :</h4>";
                echo   "<span id='message'></span>";
            }
            echo "";
            ?>
            <div id="display_comment"></div>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script>
            $(document).ready(function() {
                //Mengirimkan Token Keamanan
                $.ajaxSetup({
                    headers: {
                        'Csrf-Token': $('meta[name="csrf-token"]').attr('content')
                    }
                });



                $('#form_komen').on('submit', function(event) {
                    event.preventDefault();
                    let nama_pengirim = $('#nama_pengirim').val();
                    let komen = $('#komen').val();

                    if (nama_pengirim == '') {
                        alert("Nama Pengirim Harus disii");
                    } else if (komen == '') {
                        alert("Komentar Harus disii");
                    } else {
                        var form_data = $(this).serialize();
                        $.ajax({
                            url: "tambah_komentar.php",
                            method: "POST",
                            data: form_data,
                            success: function(data) {
                                $('#form_komen')[0].reset();
                                $('#komentar_id').val('0');
                                load_comment();
                            },
                            error: function(data) {
                                console.log(data.responseText)
                            }
                        })
                    }
                });

                load_comment();

                function load_comment() {
                    $.ajax({
                        url: "ambil_komentar.php",
                        method: "POST",
                        success: function(data) {
                            $('#display_comment').html(data);
                        },
                        error: function(data) {
                            console.log(data.responseText)
                        }
                    })
                }

                $(document).on('click', '.reply', function() {
                    var komentar_id = $(this).attr("id");
                    $('#komentar_id').val(komentar_id);
                    $('#nama_pengirim').focus();
                });
            });
        </script>
        </div>





        <script src="../bootstrap-4.6.0-dist//jquery-3.6.0.min.js"></script>
        <script src="../bootstrap-4.6.0-dist//js/bootstrap.js"></script>
</body>


</html>