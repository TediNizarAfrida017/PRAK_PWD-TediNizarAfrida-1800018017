
<?php

include "koneksi.php";

?>
<html>
<head>

		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>

		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

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
					<a class="nav-link" href="index.html"><i class="fa fa-home"></i>&nbspHome</a>
				</li>
				
				<li class="nav-item">
				    <a class="nav-link"  href="tambah_barang.php"><i class="fa fa-plus "></i>&nbsp Tambah Data Barang</a>
				</li>
				
				</ul>
			</div>
		</div>
	</nav>
	</body>
	
	<div class="container" style="margin-top:20px">
		<h2>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspEdit Barang</h2>
		<hr>
	<?php
		//jika sudah mendapatkan parameter GET id dari URL
		if(isset($_GET['id_barang'])){
			//membuat variabel $id untuk menyimpan id dari GET id di URL
			$id_barang = $_GET['id_barang'];
			
			//query ke database SELECT tabel mahasiswa berdasarkan id = $id
			$select     = mysqli_query($koneksi, "SELECT * FROM data_barang WHERE id_barang='$id_barang'") or die(mysqli_error($koneksi));
			
			//jika hasil query = 0 maka muncul pesan error
			if(mysqli_num_rows($select) == 0){
				echo '<div class="alert alert-warning">ID tidak ada dalam database.</div>';
				exit();

			//jika hasil query > 0
			}else{
				//membuat variabel $data dan menyimpan data row dari query
				$data = mysqli_fetch_assoc($select);
			}
		}
		?>
		<form action="update_barang.php" method="post">
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Id Barang</label>
				<div class="col-sm-10">
			    <input type="text" name="id_barang" value="<?php echo $data['id_barang']; ?>" class="form-control" size="4" readonly required>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Nama Barang</label>
				<div class="col-sm-10">
				<input type="text" name="nama_barang" value="<?php echo $data['nama_barang']; ?>" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Harga Barang</label>
				<div class="col-sm-10">
				<input type="text" name="harga_barang" value="<?php echo $data['harga_barang']; ?>" class="form-control">
			    </div>
		    </div>
		    <div class="form-group row">
				<label class="col-sm-2 col-form-label">Keterangan</label>
				<div class="col-sm-10">
				<input type="text" name="keterangan" value="<?php echo $data['keterangan']; ?>" class="form-control">
			    </div>
		    </div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Diameter Velg</label>
				<div class="col-sm-10">
						<select name="diameter_velg" value="<?php echo $data['diameter_velg']; ?>" class="form-control">
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
						<select name="merk_velg" value="<?php echo $data['merk_velg']; ?>" class="form-control">
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
						<select name="warna_velg" value="<?php echo $data['warna_velg']; ?>" class="form-control">
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
					<a href="lihat_data_barang.php" class="btn btn-warning">KEMBALI</a>
				</div>
			</div>
		</form>
	</div>
</head>
</html>