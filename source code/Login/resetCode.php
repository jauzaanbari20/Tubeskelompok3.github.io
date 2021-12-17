<?php require_once "controllerUserData.php"; ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Reset Kode</title>
	<link rel="stylesheet" type="text/css" href="style1.css">
	
</head>
<body>
	<div class="container">
      <div class="row">
		<h1>Kode Verifikasi OTP</h1>
		<form id="" action="resetCode.php" method="POST" autocomplete="off">
                    <?php 
                    if(isset($_SESSION['info'])){
                        ?>
                        <div class="alert alert-success text-center" style="padding: 0.4rem 0.4rem">
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
			
            
            
            <div class="form-group">
                <input class="form-control" type="number" name="otp" placeholder="Enter verification code" required>
            </div>
            <div class="form-group">
                <input class="form-control button" type="submit" name="check-reset-otp" value="Submit">
            </div>
		</form>
      </div>
	</div>
	

</body>
</html>