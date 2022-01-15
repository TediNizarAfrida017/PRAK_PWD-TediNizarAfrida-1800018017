<?php

$url = "http://localhost/velg/getdatabarang.php";
$client = curl_init($url);
curl_setopt($client, CURLOPT_RETURNTRANSFER, 1);

$response = curl_exec($client);
$result = json_decode($response); foreach ($result as $r) {
	echo "<p>";
	echo "ID BARANG 	: " . $r->id_barang . "<br />";
	echo "NAMA BARANG 	: " . $r->nama_barang . "<br />";
	echo "HARGA BARANG	: " . $r->harga_barang . "<br />";
	echo "KETERANGAN 	: " . $r->keterangan . "<br />";
	echo "DIAMETER VELG : " . $r->diameter_velg. "<br />";
	echo "MERK VELG		: " . $r->merk_velg . "<br />";
	echo "WARNA VELG 	: " . $r->warna_velg . "<br />";
	echo "</p>";
}