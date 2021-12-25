<?php
//menyertakan file koneksi.php
require_once "koneksi.php";
	//query untuk menampilkan data mahasiswa
	$sql   = "select * from mahasiswa";
	//menjalankan instruksi query
	$query = mysqli_query($koneksi,$sql);
	//membuay perulangan nilai array
	while ($row = mysqli_fetch_assoc($query)) {
		$data[] = $row;
	}
	//mengirimkan data json ke browser
	header('content-type: application/json'); 
	//merubah variabel PHP (berisi array) menjadi JSON
	echo json_encode($data);
//menutup koneksi database
mysqli_close($koneksi);
?>
