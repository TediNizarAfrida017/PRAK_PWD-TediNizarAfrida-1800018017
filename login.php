<?php
  include "koneksi.php";
  session_start();
  if(@$_SESSION['userweb'] != ""){
      header('location:index.php');
  }
?>
<!DOCTYPE html>
<html>
<head>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js"></script>

</head>
<body>
	<style type="text/css">
    	body{

        background:-webkit-linear-gradient(bottom, #2dbd6e, #a6f77b);
        height: 1000px;
        background-repeat: no-repeat;
          }
  </style>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container">
			<a class="navbar-brand" href="#">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspTUGAS AKHIR - PWD2021 </a>
	</div>
	</nav>
</body>
<body>
	<div class="container">
      <br><br><br>
      <center>
      <div class="col-md-6" style="background-color: white; padding: 50px; box-shadow: 1px 2px 8px rgba(0, 0, 0, 0.65); border-radius: 25px;">
        
        
      <center>
        <div class="panel panel-default">
          <div class="panel-heading">
              <h3><span class="glyphicon glyphicon-book" aria-hidden="true"></span><img src="images/logoono.png" width="250"></h3>
              <br>
              <h5>OV [OnoVelg]</h5>
              <p><span class="glyphicon glyphicon-road" aria-hidden="true"></span>
              Jln. Mawar Gang Tamanan Wetan Rt.04, Ringroad Selatan - Yogyakarta</p>
          </div>
        <div class="panel-body">
        <br>
        <div class="alert alert-success">
            <span class="glyphicon glyphicon-alert" aria-hidden="true"></span>
            Masukkan Username, Password dan Captcha Dengan Benar !
        </div>
        <div class="col-md-11">
            <form action="" method="POST">
              <div class="input-group">
              <input type="text" name="username" class="form-control" placeholder="Username" aria-describedby="basic-addon1" required="required">
              </div><br>
              <div class="input-group">
              <input type="password" name="password" class="form-control" placeholder="Password" aria-describedby="basic-addon1" required="required">
              </div><br>
              <img src="captcha.php" style="float: left;">
			        <input name='captcha_code' type='text' class="form-control" placeholder="Captcha">
              </div>&nbsp&nbsp

              <input name="flogin" type="submit" class="btn btn-block btn-primary" value="Login">
              </form>

            <?php 
              if(isset($_POST['flogin'])){
                $user = $_POST['username'];
                $pass = $_POST['password'];
                if ($_POST["captcha_code"] == $_SESSION["captcha_code"]) {
                $q = mysqli_query($koneksi, "SELECT * FROM data_pembeli WHERE username='$user' AND password=md5('$pass')");
                $cek = mysqli_num_rows($q);
                $data = mysqli_fetch_array($q);
                if ($cek < 1){
                  ?>
                    <br>
                    <div class="alert alert-danger">
                      Maaf Username atau Password Tidak Cocok !
                    </div>
                  <?php
                }
                else{
                      $_SESSION['userweb']=$user;
                      header('location:index.php');
                  }
                }
                else {
                    echo "<center>Login gagal! Captcha tidak sesuai<br>"; }
              }
          ?> 
		</div>
		</div>
    <center>
		</div>
		</div>
		</div>
		</body>
</html>