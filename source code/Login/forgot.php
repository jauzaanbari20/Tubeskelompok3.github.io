<?php require_once "controllerUserData.php"; ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Validasi Tubez</title>
	<link rel="stylesheet" type="text/css" href="style1.css">
	
</head>
<body>
	<div class="container">
      <div class="row">
		<h1>Lupa Password?</h1>
		<form id="" action="forgot.php" method="POST" autocomplete="">
                     <?php
                        if(count($errors) > 0){
                            ?>
                            <div class="alert alert-danger text-center">
                                <?php 
                                    foreach($errors as $error){
                                        echo $error;
                                    }
                                ?>
                            </div>
                            <?php
                        }
                    ?>
			
            <div>
				<input type="email" id="form_email" name="email" required="" value="">
				<span class="error_form" id="email_error_message"></span>
				<label>Email</label>	
			</div>
            
            <input type="submit" value="Lanjutkan" name="check-email">
		</form>
      </div>
	</div>
	

</body>
</html>