
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
					<a class="nav-link" href="index.php"><i class="fa fa-home"></i>&nbspHome</a>
				</li>
				
				<li class="nav-item">
				    <a class="nav-link"  href="tambah_karyawan.php"><i class="fa fa-plus "></i>&nbsp Tambah Data Karyawan</a>
				</li>
				
				</ul>
			</div>
		</div>
	</nav>
	</body>
	
	<div class="container" style="margin-top:20px">
		<h2>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspEdit Karyawan</h2>
		<hr>
	<?php
		//jika sudah mendapatkan parameter GET id dari URL
		if(isset($_GET['id_karyawan'])){
			//membuat variabel $id untuk menyimpan id dari GET id di URL
			$id_karyawan = $_GET['id_karyawan'];
			
			//query ke database SELECT tabel mahasiswa berdasarkan id = $id
			$select     = mysqli_query($koneksi, "SELECT * FROM data_karyawan WHERE id_karyawan='$id_karyawan'") or die(mysqli_error($koneksi));
			
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

		<form action="update_karyawan.php" method="post">
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Id Karyawan</label>
				<div class="col-sm-10">
			    <input type="text" name="id_karyawan" value="<?php echo $data['id_karyawan']; ?>" class="form-control" size="4" readonly required>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Nama Karyawan</label>
				<div class="col-sm-10">
				<input type="text" name="nama_karyawan" value="<?php echo $data['nama_karyawan']; ?>" class="form-control" required>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">Jenis Kelamin</label>
				<div class="col-sm-10">
						<select name="jenis_kelamin" class="form-control">
							<option value="Pilih">Pilih</option>
							<option value="laki-laki">Laki-Laki</option>
							<option value="perempuan">Perempuan</option>
						</select>
			</div>
		</div>
		    <div class="form-group row">
				<label class="col-sm-2 col-form-label">No Hanadphone</label>
				<div class="col-sm-10">
				<input type="text" name="no_hp" value="<?php echo $data['no_hp']; ?>" class="form-control" required>
			    </div>
		    </div>
		    <div class="form-group row">
				<label class="col-sm-2 col-form-label">Alamat</label>
				<div class="col-sm-10">
				<input type="text" name="alamat" value="<?php echo $data['alamat']; ?>" class="form-control" required>
			    </div>
		    </div>
		    <div class="form-group row">
				<label class="col-sm-2 col-form-label">Jabatan</label>
				<div class="col-sm-10">
						<select name="jabatan" class="form-control">
							<option value="Pilih">Pilih</option>
							<option value="costumer service">Costumer Service</option>
							<option value="kasir">kasir</option>
							<option value="supir">supir</option>
						</select>
		</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2 col-form-label">&nbsp;</label>
			<div class="col-sm-10">
				<input type="submit" name="submit" class="btn btn-primary" value="SIMPAN">
				<a href="lihat_data_karyawan.php" class="btn btn-warning">KEMBALI</a>
				</div>
		</div>
		</div>
		</form>
	</div>
</head>
</html>
