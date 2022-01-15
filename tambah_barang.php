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
						<a class="nav-link" href="lihat_data_pembelian.php"><i class="fa fa-arrow-left"></i>&nbspKembali</a>
					</li>
					<li class="nav-item active">
						<a class="nav-link" href="lihat_data_barang.php"><i class="fa fa-plus"></i>&nbspLihat Barang</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	</body>
	<div class="container" style="margin-top:20px">
		<h2>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspTambah Data Barang</h2>
		<hr>
		<form action="tambah_barang.php" method="post">
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Id Barang</label>
				<div class="col-sm-10">
			    <input type="text" name="id_barang" class="form-control" placeholder="Misal B1" size="4" required>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Nama Barang</label>
				<div class="col-sm-10">
				<input type="text" name="nama_barang" class="form-control" required>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Harga Barang</label>
				<div class="col-sm-10">
				<input type="text" name="harga_barang" class="form-control" required>
			    </div>
		    </div>
		    <div class="form-group row">
				<label class="col-sm-2 col-form-label">Keterangan</label>
				<div class="col-sm-10">
				<input type="text" name="keterangan" class="form-control" required>
			    </div>
		    </div>
		     <div class="form-group row">
				<label class="col-sm-2 col-form-label">Diameter Velg</label>
				<div class="col-sm-10">
						<select name="diameter_velg" class="form-control">
							<option value="Pilih">Pilih</option>
							<option value="13">13</option>
							<option value="14">14</option>
							<option value="15">15</option>
							<option value="16">16</option>
							<option value="17">17</option>
							<option value="18">18</option>
							<option value="19">19</option>
							<option value="20">20</option>
							<option value="21">21</option>
						</select>
			</div>
		    </div>
		     <div class="form-group row">
				<label class="col-sm-2 col-form-label">Merk Velg</label>
				<div class="col-sm-10">
						<select name="merk_velg" class="form-control">
							<option value="Pilih">Pilih</option>
							<option value="BBS">BBS</option>
							<option value="HRE">HRE</option>
							<option value="OZ Racing">OZ Racing</option>
							<option value="Honda">Honda</option>
							<option value="Volk Rays">Volk Rays</option>
							<option value="Borbet">Borbet</option>
							<option value="Vossen">Vossen</option>
							<option value="Auto Speed">Auto Speed</option>
							<option value="Enkei">Enkei</option>
							<option value="Zen">Zen</option>
							<option value="Woodbell">Woodbell</option>
						</select>
			</div>
		    </div>
		      <div class="form-group row">
				<label class="col-sm-2 col-form-label">Warna Velg</label>
				<div class="col-sm-10">
						<select name="warna_velg" class="form-control">
							<option value="Pilih" >Pilih</option>
							<option value="Emas"  >Emas</option>
							<option value="Silver">Silver</option>
							<option value="Merah" >Merah</option>
							<option value="Biru"  >Biru</option>
							<option value="Orange">Orange</option>
						</select>
			</div>
		    </div>
		<div class="form-group row">
			<label class="col-sm-2 col-form-label">&nbsp;</label>
			<div class="col-sm-10">
				<input type="submit" name="submit" class="btn btn-primary" value="SIMPAN">
				<a href="index.html" class="btn btn-warning">KEMBALI</a>
		</div>
		</div>
		</form>
		</div>
		</div>
<?php
include "koneksi.php";
if (isset($_POST['submit'])) {
			$id_barang      = $_POST['id_barang'];
			$nama_barang    = $_POST['nama_barang'];
			$harga_barang   = $_POST['harga_barang'];
			$keterangan	    = $_POST['keterangan'];
			$diameter_velg	= $_POST['diameter_velg'];
			$merk_velg 	    = $_POST['merk_velg'];
            $warna_velg   	= $_POST['warna_velg'];

$data = "INSERT INTO data_barang (id_barang,nama_barang,harga_barang,keterangan,diameter_velg,merk_velg,warna_velg) VALUES('$id_barang','$nama_barang','$harga_barang','$keterangan','$diameter_velg','$merk_velg','$warna_velg')";
//echo $data;
mysqli_query($koneksi,$data);

header('location:lihat_data_barang.php');
}
?>
</head>
</html>