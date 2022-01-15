
<?php

include "koneksi.php";

$id_barang = $_GET['id_barang'];
$data        = " DELETE FROM data_barang  where id_barang='$id_barang'";

mysqli_query($koneksi,$data);
header('location:lihat_data_barang.php'); 

?>