
<?php

include "koneksi.php";

$id_karyawan = $_GET['id_karyawan'];
$data        = " DELETE FROM data_karyawan  where id_karyawan='$id_karyawan'";

mysqli_query($koneksi,$data);
header('location:lihat_data_karyawan.php'); 

?>