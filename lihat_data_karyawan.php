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
						<a class="nav-link" href="tambah_karyawan.php"><i class="fa fa-plus"></i>&nbspTambah Karyawan</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	</body>

<?php
	include "koneksi.php";


	$data = mysqli_query($koneksi,"SELECT * FROM data_karyawan");
	$no = 1;
?>
<div class="container" style="margin-top:20px">
		<h4>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspLihat Data Karyawan</h4>
		<hr>
<div class="table-responsive   table-sm ">
  <table class="table">

	<tr>
		<th>Id Karyawan </th>
		<th>Nama Karyawan</th>
		<th>Jenis Kelamin</th>
		<th>Alamat</th>
		<th>No Handphone</th>
		<th>Jabatan</th>
		<th>Opsi</th>
	</tr>

<?php

foreach ($data as $x) { ?>

	<tr>
		<td><?= $x['id_karyawan']?></td>
		<td><?= $x['nama_karyawan']?></td>
		<td><?= $x['jenis_kelamin']?></td>
		<td><?= $x['alamat']?></td>
		<td><?= $x['no_hp']?></td>
		<td><?= $x['jabatan']?></td>
		<td>
			<a href="edit_karyawan.php?id_karyawan=<?php echo $x['id_karyawan'];?>"><i class="fa fa-edit" title="Edit Data"></i></a>&nbsp&nbsp&nbsp&nbsp
			<a href="delete_karyawan.php?id_karyawan=<?php echo $x['id_karyawan'];?>"><i class="fa fa-trash" title="Hapus Data"></i>
	</tr>
<div>
<?php
$no++; } 
?>
</div>
</table>