<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V2</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">

</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form" method="POST" >
					<h3 class="smh">Login</h3>
					<br>
					<div class="wrap-input100 validate-input" data-validate = "ketik email dengan format: abc..@gmail.com">
						<input class="input100" type="text" name="email">
						<span class="focus-input100" data-placeholder="Email">
							<i class="bi bi-envelope"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Ketik password disini" maxlength="10">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
						<input class="input100" type="password" name="password">
						<span class="focus-input100" data-placeholder="Password"></span>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn smh" name="btnLogin">
								Login
							</button>
						</div>
					</div>

					<div class="text-center p-t-40">
						<span class="txt1">
							Belom Daftar?
						</span>
						<br>
						<a class="txt2" href="register.html">
							Registrasi Disini
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	<?php
	require 'koneksi.php';
	if(isset($_POST['btnLogin'])){
		$user_email=$_POST['email'];
		$user_password=$_POST['password'];

		$sql = "SELECT * FROM tubes WHERE email = '{$user_email}' and password = '{$user_password}'";
		$query = mysqli_query($koneksi, $sql);

		if(!$query){
			die("Query gagal " . mysqli_error($koneksi));
		  }
		
		  while ($row = mysqli_fetch_array($query)){
			$user = $row['name'];
			$email = $row['email'];
			$pass = $row['password'];
			
			
			}
			if($user_email == $email && $user_password == $pass){      
				header("Location:../tubes/Home.php");
				$_SESSION['name'] = $user;
				$_SESSION['email'] = $email;
			  } else {
				echo "User tidak ditemukan";
			  }
			
		  
		
	  


	}

	?>

		
        
        

		

		
	
	
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
	<script src="js/main.js"></script>

</body>
</html>