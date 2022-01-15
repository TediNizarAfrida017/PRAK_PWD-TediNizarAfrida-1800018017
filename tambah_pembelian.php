	<?php
	include "koneksi.php";
	$id = $_GET['id_barang'];
	$q=mysqli_query($koneksi,"SELECT * FROM data_barang WHERE id_barang ='$id'");
	$barang = mysqli_fetch_array($q);
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
						<a class="nav-link" href="lihat_data_pembelian.php"><i class="fa fa-plus"></i>&nbspLihat Pembelian</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	</body>
	<div class="container" style="margin-top:20px">
		<h2>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspTambah Data Pembelian</h2>
		<hr>
		<form action="" method="post">
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Id Barang</label>
				<div class="col-sm-10">
			    <input type="text" name="id_barang" value="<?php echo $id; ?>" class="form-control" placeholder="Misal B001" size="4" readonly required>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Harga Pembelian</label>
				<div class="col-sm-10">
						<input type="text" name="harga_barang" value="<?php echo $barang['harga_barang']; ?>" class="form-control">
			</div>
		    </div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Id Pembeli</label>
				<div class="col-sm-10">
			    <select name="id_pembeli" class="form-control">
			    	<?php
			    	$dd = mysqli_query($koneksi,"SELECT*FROM data_pembeli");
			    	while($pp=mysqli_fetch_array($dd)){
			    		?>
			    		<option value="<?php echo $pp['id_pembeli']; ?>"><?php echo $pp['nama_pembeli']; ?></option>
			    		<?php
			    	}
			    	?>
			    </select>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Jumlah Pembelian</label>
				<div class="col-sm-10">
				<select name="jumlah_barang" class="form-control">
							<option value="Pilih">Pilih</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
						</select>
				</div>
			</div>
		    
		     <div class="form-group row">
				<label class="col-sm-2 col-form-label">Metode Bayar</label>
				<div class="col-sm-10">
						<select name="metode_bayar" class="form-control">
							<option value="Pilih">Pilih</option>
							<option value="Tunai">Tunai</option>
							<option value="Non-Tunai">Non-Tunai</option>
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
			$id_barang        = $_POST['id_barang'];
			$jumlah_barang    = $_POST['jumlah_barang'];
			$total_bayar      = $_POST['harga_barang'] * $jumlah_barang;
			$metode_bayar	  = $_POST['metode_bayar'];
			$id_pembeli       = $_POST['id_pembeli'];

			?>
			<br>
			<h1>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspTotal Harga : Rp. <?php echo $total_bayar; ?> </h1>
			<?php


$data = "INSERT INTO data_pembelian (id_barang,jumlah_pembelian,total_bayar,metode_bayar,id_pembeli) VALUES('$id_barang','$jumlah_barang','$total_bayar','$metode_bayar','$id_pembeli')";
//echo $data;
$baba = mysqli_query($koneksi,$data);
}
?>
<br><br>
</head>
</html>