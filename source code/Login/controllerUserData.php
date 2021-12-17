<?php 
session_start();
require "connection.php";
$email = "";
$name = "";
$errors = array();
$level = 1;

//if user signup button
if(isset($_POST['signup'])){
    $name = mysqli_real_escape_string($con, $_POST['name']);
    $email = mysqli_real_escape_string($con, $_POST['email']);
    $password = mysqli_real_escape_string($con, $_POST['password']);
    $cpassword = mysqli_real_escape_string($con, $_POST['cpassword']);
    if($password !== $cpassword){
        $errors['password'] = "Password tidak sama dengan konfirmasi password!";
    }
    $email_check = "SELECT * FROM tubes WHERE email = '$email'";
    $res = mysqli_query($con, $email_check);
    if(mysqli_num_rows($res) > 0){
        $errors['email'] = "Email yang anda masukkan sudah terdaftar!";
    }
    if(count($errors) === 0){
        $encpass = password_hash($password, PASSWORD_BCRYPT);
        $code = rand(999999, 111111);
        $status = "notverified";
        $insert_data = "INSERT INTO tubes (name, email, password, code, status, level)
                        values('$name', '$email', '$encpass', '$code', '$status', '$level')";
        $data_check = mysqli_query($con, $insert_data);
        if($data_check){
            $subject = "Kode Verifikasi E-Mail";
            $message = "Kode verifikasi anda adalah $code";
            $sender = "From: trinfo2021@gmail.com";
            if(mail($email, $subject, $message, $sender)){
                $info = "Kami telah mengirimkan kode verifikasi ke email - $email";
                $_SESSION['info'] = $info;
                $_SESSION['email'] = $email;
                $_SESSION['password'] = $password;
                header('location: otp.php');
                exit();
            }else{
                $errors['otp-error'] = "Gagal saat mengirimkan kode!";
            }
        }else{
            $errors['db-error'] = "Gagal memasukkan data ke database!";
        }
    }

}
    //if user click verification code submit button
    if(isset($_POST['check'])){
        $_SESSION['info'] = "";
        $otp_code = mysqli_real_escape_string($con, $_POST['otp']);
        $check_code = "SELECT * FROM tubes WHERE code = $otp_code";
        $code_res = mysqli_query($con, $check_code);
        if(mysqli_num_rows($code_res) > 0){
            $fetch_data = mysqli_fetch_assoc($code_res);
            $fetch_code = $fetch_data['code'];
            $email = $fetch_data['email'];
            $code = 0;
            $status = 'verified';
            $update_otp = "UPDATE tubes SET code = $code, status = '$status' WHERE code = $fetch_code";
            $update_res = mysqli_query($con, $update_otp);
            if($update_res){
                $_SESSION['name'] = $name;
                $_SESSION['email'] = $email;
                header('location: login.php');
                exit();
            }else{
                $errors['otp-error'] = "Gagal saat memperbaharui Kode!";
            }
        }else{
            $errors['otp-error'] = "Anda memasukkan kode yang salah!";
        }
    }

    //if user click login button
    if(isset($_POST['login'])){
       
        $name = mysqli_real_escape_string($con, $_POST['name']);
        $password = mysqli_real_escape_string($con, $_POST['password']);
        $check_email = "SELECT * FROM tubes WHERE name = '$name'";
        $res = mysqli_query($con, $check_email);
        if(mysqli_num_rows($res) > 0){
            $fetch = mysqli_fetch_assoc($res);
            $fetch_pass = $fetch['password'];
          
            if(password_verify($password, $fetch_pass)){
                $_SESSION['name'] = $name;
                $status = $fetch['status'];
                if($status == 'verified'&& $level == 1){
                  $_SESSION['name']=$name;
                  $_SESSION['password'] = $password;
                  $_SESSION['level'] = $level;
                    header('location: ../tubes/Home.php');
                }elseif($status == 'verified'&& $level == 2){
                    $_SESSION['name']=$name;
                    $_SESSION['password'] = $password;
                    $_SESSION['level'] = $level;
                      header('location: admin.php');
                }else{
                    $info = "Anda belum melakukan verifikasi email - $email";
                    $_SESSION['info'] = $info;
                    header('location: otp.php');
                }
            }else{
                $errors['name'] = "Username atau password salah!";
            }
        }else{
            $errors['name'] = "Sepertinya anda belum terdaftar! klik tombol Daftar.";
        }
    }

    //if user click login Admin button
    if(isset($_POST['loginn'])){
       
        $name = mysqli_real_escape_string($con, $_POST['name']);
        $password = mysqli_real_escape_string($con, $_POST['password']);
        $check_email = "SELECT * FROM tubess WHERE name = '$name'";
        $res = mysqli_query($con, $check_email);
        if(mysqli_num_rows($res) > 0){
            $fetch = mysqli_fetch_assoc($res);
            $fetch_pass = $fetch['password'];
          
            if(password_verify($password, $fetch_pass)){
                $_SESSION['name'] = $name;
                $status = $fetch['status'];
                if($status == 'verified' ){
                  $_SESSION['name']=$name;
                  $_SESSION['password'] = $password;
                  
                    header('location: ../admin/admin.php');
                }else{
                    $info = "Anda belum melakukan verifikasi email - $email";
                    $_SESSION['info'] = $info;
                    header('location: otp.php');
                }
            }else{
                $errors['name'] = "Incorrect email or password!";
            }
        }else{
            $errors['name'] = "Sepertinya anda belum terdaftar! klik tombol Daftar.";
        }
    }

    //if user click continue button in forgot password form
    if(isset($_POST['check-email'])){
        $email = mysqli_real_escape_string($con, $_POST['email']);
        $check_email = "SELECT * FROM tubes WHERE email='$email'";
        $run_sql = mysqli_query($con, $check_email);
        if(mysqli_num_rows($run_sql) > 0){
            $code = rand(999999, 111111);
            $insert_code = "UPDATE tubes SET code = $code WHERE email = '$email'";
            $run_query =  mysqli_query($con, $insert_code);
            if($run_query){
                $subject = "Password Reset Code";
                $message = "Your password reset code is $code";
                $sender = "From: shahiprem7890@gmail.com";
                if(mail($email, $subject, $message, $sender)){
                    $info = "Kami telah mengirimkan otp reset password ke email anda- $email";
                    $_SESSION['info'] = $info;
                    $_SESSION['email'] = $email;
                    header('location: resetCode.php');
                    exit();
                }else{
                    $errors['otp-error'] = "Gagal saat mengirimkan kode!";
                }
            }else{
                $errors['db-error'] = "Sepertinya ada yang salah!";
            }
        }else{
            $errors['email'] = "Alamat email ini tidak terdaftar!";
        }
    }

    //if user click check reset otp button
    if(isset($_POST['check-reset-otp'])){
        $_SESSION['info'] = "";
        $otp_code = mysqli_real_escape_string($con, $_POST['otp']);
        $check_code = "SELECT * FROM tubes WHERE code = $otp_code";
        $code_res = mysqli_query($con, $check_code);
        if(mysqli_num_rows($code_res) > 0){
            $fetch_data = mysqli_fetch_assoc($code_res);
            $email = $fetch_data['email'];
            $_SESSION['email'] = $email;
            $info = "Silakan membuat password baru.";
            $_SESSION['info'] = $info;
            header('location: newPass.php');
            exit();
        }else{
            $errors['otp-error'] = "Kamu memasukkan kode yang salah!";
        }
    }

    //if user click change password button
    if(isset($_POST['change-password'])){
        $_SESSION['info'] = "";
        $password = mysqli_real_escape_string($con, $_POST['password']);
        $cpassword = mysqli_real_escape_string($con, $_POST['cpassword']);
        if($password !== $cpassword){
            $errors['password'] = "Konfirmasi password tidak sama!";
        }else{
            $code = 0;
            $email = $_SESSION['email']; //getting this email using session
            $encpass = password_hash($password, PASSWORD_BCRYPT);
            $update_pass = "UPDATE tubes SET code = $code, password = '$encpass' WHERE email = '$email'";
            $run_query = mysqli_query($con, $update_pass);
            if($run_query){
                $info = "Password telah berhasil diubah. Anda sudah bisa masuk dengan password baru anda";
                $_SESSION['info'] = $info;
                header('Location: login.php');
            }else{
                $errors['db-error'] = "Gagal saat memperbaharui password anda!";
            }
        }
    }
    
   //if login now button click
    if(isset($_POST['login-now'])){
        header('Location: login.php');
    }
?>