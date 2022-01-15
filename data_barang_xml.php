<?php
include "koneksi.php"; 
header('Content-Type: text/xml');
$query = "SELECT * FROM data_barang";
$hasil = mysqli_query($koneksi,$query);
$jumField = mysqli_num_fields($hasil);

echo "<?xml version='1.0'?>"; echo "<data>";
while ($data = mysqli_fetch_array($hasil))
{
	echo "<barang>"; 
	echo"<id_barang>",$data['id_barang'],"</id_barang>"; 
	echo"<nama_barang>",$data['nama_barang'],"</nama_barang>"; 
	echo"<harga_barang>",$data['harga_barang'],"</harga_barang>"; 
	echo"<diameter_velg>",$data['diameter_velg'],"</diameter_velg>"; 
	echo"<merk_velg>",$data['merk_velg'],"</merk_velg>";
	echo"<warna_velg>",$data['warna_velg'],"</warna_velg>"; 
	echo "</barang>";
}
echo "</data>";
?>
