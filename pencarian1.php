<?php
  include "koneksi.php";
?>
<html>
<head>

		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
     	<script src="js/jquery-3.2.1.js"></script>
    	<script src="js/bootstrap.min.js"></script>
<body>
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container">
			<a class="navbar-brand" href="#">RESPONSI - PWD 2022</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active">
						<a class="nav-link" href="index.php"><i class="fa fa-home"></i>&nbspHome</a>
					</li>
					<li class="nav-item active">
						<a class="nav-link" href="Lihat_data_barang.php"><i class="fa fa-plus"></i>&nbspLihat Barang</a>
					</li>
					<li class="nav-item active">
						<a class="nav-link" href="tambah_barang.php"><i class="fa fa-plus"></i>&nbspTambah Barang</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	</body>
	<div class="container" style="margin-top:20px">
		<h2>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspPENCARIAN</h2>
		<hr>
		<form method="post" class="form-inline position-relative ml-lg-4">
        <input name="inputan" class="form-control px-0 w-100" type="text" placeholder="Cari Berdasarkan Nama Supplier">
        <button name="cari" type="submit" value="cari" class="search-icon"><i class="ti-search text-dark"></i></button>
      </form>
		</div>
		</div>
<?php
include "koneksi.php";
if (isset($_POST['submit'])) {
			$id_pembeli	        = $_POST['id_pembeli'];
			$nama_pembeli    	= $_POST['nama_pembeli'];
			$alamat	            = $_POST['alamat'];
			$no_hp	            = $_POST['no_hp'];
			$id_karyawan        = $_POST['id_karyawan'];

$data = "INSERT INTO data_pembeli(id_pembeli,nama_pembeli,alamat,no_hp,id_karyawan) VALUES('$id_pembeli','$nama_pembeli','$alamat','$no_hp','$id_karyawan')";
echo $data;
$lala = mysqli_query($koneksi,$data);
header('location:lihat_data_pembeli.php');
}
?>
</head>
</html>