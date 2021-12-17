
<?php

session_start();
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
    <title>Document</title>
    <link rel="stylesheet" href="bootstrap-4.6.0-dist\css\bootstrap.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css" rel="stylesheet">
    <style>
      .alpha{
        letter-spacing: 3px;
        
      }
    </style>
</head>
<body >
    <div class="container mb-5">
        <nav class="navbar fixed-top navbar-expand-lg navbar-light badge-secondary">
              <a class="navbar-brand" href="#">LOGO</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>

              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                  <li class="nav-item">
                    <a href="TUBES KEKNYA.html" class="nav-link active" aria-current="page">HOME</a>
                  </li>
                  <li class="nav-item">
                    <a href="#" target="_blank" class="nav-link active">KONTAK</a>
                  </li>
                  <li class="nav-item">
                    <a href="sport.html" target="_blank" class="nav-link active">SPORT</a>
                  </li>
                  <li class="nav-item">
                    <a href="horror.html" target="_blank" class="nav-link active">HORROR</a>
                  </li>
                  <li class="nav-item">
                    <a href="games.html" target="_blank" class="nav-link active">GAMES</a>
                  </li>
                  <li class="nav-item">
                    <a href="shoping.html" target="_blank" class="nav-link active">SHOPPING</a>
                  </li>
                  <li class="nav-item">
                    <a href="shoping.html" target="_blank" class="nav-link active">MOVIE</a>
                  </li>
                  <a href="login.html" target="_blank" button class="btn btn-success" type="submit">LOGIN</a>
                </ul> <br>
                
              </div>
            </div>
          </nav>
    </div> <br>
    <section>
        
        <h2 style="text-align: center;"> <b>dark</b></h2> 
          <p  class="alpha">
                 &nbsp; &nbsp; series dark menurut gue menjadi series terbaik netflix yang wajib banget kalian tonton! dark menceritakan tentang seseorang yang mencoba membuat mesin waktu yang memungkinkan pengguna nya bisa kemasa lalu dan ke masa depan. dari sinopsis nya uda gila banget ga si? <br>
                 &nbsp;&nbsp;  series ini terdiri dari 3 season yang 1 eps nya berdurasi sekitar 46-50 menit, santaii ga ngebosenin kok malah ketagihan ntar wqwqwq fun fact : series ini mempunyai jawaban loh dari paradoks waktu yang kalian suka suka in itu , kea kalo misalnya kita mengajak ayah kita yang masih kecil ke masa depan apakah kita masih ada di masa depan tersebut? kalau gada berarti siapa yang bawa ? xixixi <br>
                 <center>
                   rate = 10000000k /1
                 </center>
          <center>
            <img src="D:\std\5ed796c1701db.jpg" alt="" srcset="" width="400px"  ><br><br>
          </center>
         
        
	
        
	 

          <div class="container mb-3">
	
	<form method="POST" id="form_komen">
		<div class="form-group">
			<input type="text" name="nama_pengirim" id="nama_pengirim" class="form-control" placeholder="Masukkan Nama" />
		</div>
		<div class="form-group">
			<textarea name="komen" id="komen" class="form-control" placeholder="Tulis Komentar" rows="5"></textarea>
		</div>
		<div class="form-group">
			<input type="hidden" name="komentar_id" id="komentar_id" value="0" />
			<input type="submit" name="submit" id="submit" class="btn btn-info" value="Submit" />
		</div>
	</form>
	<hr>
	<h4 class="mb-3">Komentar :</h4>
	<span id="message"></span>
   
   	<div id="display_comment"></div>
</div>
 



    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script>
		$(document).ready(function(){
			//Mengirimkan Token Keamanan
			$.ajaxSetup({
	            headers : {
	                'Csrf-Token': $('meta[name="csrf-token"]').attr('content')
	            }
	        });
        
			$('#form_komen').on('submit', function(event){
				event.preventDefault();
				let nama_pengirim = $('#nama_pengirim').val();
				let komen = $('#komen').val();
				
				if(nama_pengirim==''){
				    alert("Nama Pengirim Harus disii");
				} else if(komen==''){
				    alert("Komentar Harus disii");
				} else {
    				var form_data = $(this).serialize();
    				$.ajax({
    					url:"tambah_komentar.php",
    					method:"POST",
    					data:form_data,
    					success:function(data){
    						$('#form_komen')[0].reset();
    						$('#komentar_id').val('0');
    						load_comment();
    					}, error: function(data) {
    		            	console.log(data.responseText)
    		            }
    				})
				}
			});
 
			load_comment();
 
			function load_comment(){
				$.ajax({
					url:"ambil_komentar.php",
					method:"POST",
					success:function(data){
						$('#display_comment').html(data);
					}, error: function(data) {
		            	console.log(data.responseText)
		            }
				})
			}
 
			$(document).on('click', '.reply', function(){
				var komentar_id = $(this).attr("id");
				$('#komentar_id').val(komentar_id);
				$('#nama_pengirim').focus();
			});
		});
	</script>
	

    </section>

    <script src="C:\xampp\htdocs\belajarphp\jquery-3.6.0.js"></script>
    <script src="C:\xampp\htdocs\belajarphp\bootstrap-4.6.0-dist\js\bootstrap.js"></script>
</body>
</html>