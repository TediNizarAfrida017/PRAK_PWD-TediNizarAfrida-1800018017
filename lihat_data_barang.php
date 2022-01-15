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
						<a class="nav-link" href="index.php"><i class="fa fa-arrow-left"></i>&nbspKembali</a>
					</li>
					<li class="nav-item active">
						<a class="nav-link" href="tambah_barang.php"><i class="fa fa-plus"></i>&nbspTambah Barang</a>
					</li>
					<li class="nav-item active">
					<a class="nav-link" href="data_barang_json.php"><i class="fa fa-file"></i>&nbspJson</a>
					</li>
					<li class="nav-item active">
					<a class="nav-link" href="data_barang_xml.php"><i class="fa fa-file"></i>&nbspXml</a>
					</li>
					<li class="nav-item active">
					<a class="nav-link" href="akses_barang.php"><i class="fa fa-file"></i>&nbspData Service</a>
					</li>
					<li class="nav-item active">
					<a class="nav-link" href="lap_barang.php"><i class="fa fa-print"></i>&nbspCetak Barang</a>
					</li>
				</ul>
				
			</div>
		</div>
	</nav>
	</body>

	<form method="post">
		<input type="text" name="inputan" placeholder="isi pencarian nama barang dan id barang" class="form-control">
		<input type="submit" name="submit" value="submit">

	</form>

      <div class="container" style="margin-top:20px">
		<h4>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspLihat Data Barang</h4>
		<hr>
<div class="table-responsive   table-sm ">
  <table class="table">

	<tr>
		<th>Id Barang </th>
		<th>Nama Barang</th>
		<th>Harga Barang</th>
		<th>Keterangan</th>
		<th>Diameter Velg</th>
		<th>Merk Velg</th>
		<th>Warna Velg</th>
		<th>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspOpsi</th>
	</tr>

<?php
	include "koneksi.php";
	error_reporting(0);
	//membuat link url di getdatamhs.php
$url = "http://localhost/velg/getdatabarang.php";
//mengambil data dari $url 
$client = curl_init($url);
//mengembalikan transfer menjadi bentuk String.
curl_setopt($client, CURLOPT_RETURNTRANSFER, 1);
//menampilkan data dalam $client
$response = curl_exec($client);
//menerjemahkan string JSON
$result = json_decode($response); 
	$no = 1;


				$inputan= $_POST['inputan'];
                 if($_POST['submit']){
                  if($inputan==""){
                    $q = mysqli_query($koneksi,"SELECT*FROM data_barang");
                  }
                  else if($inputan!=""){
                    $q = mysqli_query($koneksi,"SELECT*FROM data_barang WHERE nama_barang LIKE '%$inputan%' or id_barang LIKE '%$inputan%' ");
                  }
                 }else{
                  $q = mysqli_query($koneksi,"SELECT*FROM data_barang");
                 }
                 $cek = mysqli_num_rows($q);

                 if($cek < 1){
                  ?>
                  <tr>
                    <td colspan="8">
                      <center>Data Yang Anda Cari Tidak Ditemukan !!!
                      <a href="" class="btn btn-sm btn-success"><span class="glyphicon glyphicon-refresh"></span></a></center>
                    </td>
                  </tr>
                  <?php
                 }else{
                  while($x = mysqli_fetch_array($q)){  ?>

	<tr>
		<td><?= $x['id_barang']?></td>
		<td><?= $x['nama_barang']?></td>
		<td><?= $x['harga_barang']?></td>
		<td><?= $x['keterangan']?></td>
		<td><?= $x['diameter_velg']?></td>
		<td><?= $x['merk_velg']?></td>
		<td><?= $x['warna_velg']?></td>
		<td>
		<a href="tambah_pembelian.php?id_barang=<?php echo $x['id_barang'];?>"> + beli</a>&nbsp&nbsp&nbsp&nbsp
		<a href="edit_barang.php?id_barang=<?php echo $x['id_barang'];?>"><i class="fa fa-edit" title="Edit Data"></i></a>&nbsp&nbsp&nbsp&nbsp
		<a href="delete_barang.php?id_barang=<?php echo $x['id_barang']; ?>"><i class="fa fa-trash" title="Hapus Data"></i></a>
		
	</tr>
<div>
<?php
 } }
?>
</div>
</table>