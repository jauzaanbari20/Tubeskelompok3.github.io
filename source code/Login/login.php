<?php require_once "controllerUserData.php"; ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Login</title>
	<link rel="stylesheet" type="text/css" href="style1.css">
    <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
    
	
</head>
<body>
	<div class="container">
      <div class="row">
		<h1>Login</h1>
		<form id="" action="login.php" method="POST" autocomplete="">
                    <?php 
                    if(isset($_SESSION['info'])){
                        ?>
                        <div class="alert alert-success text-center">
                            <?php echo $_SESSION['info']; ?>
                        </div>
                        <?php
                    }
                    ?>
                    <?php
                    if(count($errors) > 0){
                        ?>
                        <div class="alert alert-danger text-center">
                            <?php
                            foreach($errors as $showerror){
                                echo $showerror;
                                
                            }
                            ?>
                        </div>
                        <?php
                    }
                    ?>
			<div>
				<input type="text" id="" name="name" required="" value="<?php echo $name ?>">
				<span class="error_form" id="email_error_message"></span>
				<label>Username</label>	
			</div>
            <div>
				<input type="password" id="form_password" name="password" required="">
				<span class="error_form" id="password_error_message"></span>
				<label>Password</label>	
			</div>
            <div class="link forget-pass text-left " style="padding-bottom: 15px ;padding-left: 5px; "><a href="loginAdmin.php">Login as admin.</a></div>
            <div class="link forget-pass text-left " style="padding-bottom: 15px ;padding-left: 5px"><a href="forgot.php">Forgot password?</a></div>
            <input type="submit" value="Login" name="login">
		</form>
      </div>
	</div>
	

</body>
</html>