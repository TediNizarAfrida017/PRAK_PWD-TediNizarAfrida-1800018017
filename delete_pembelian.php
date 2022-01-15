
<?php

include "koneksi.php";

$id_pembelian = $_GET['id_pembelian'];
$data        = " DELETE FROM data_pembelian  where id_pembelian='$id_pembelian'";

mysqli_query($koneksi,$data);
header('location:lihat_data_pembelian.php'); 

?>