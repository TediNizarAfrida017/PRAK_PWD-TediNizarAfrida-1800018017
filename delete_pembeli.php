
<?php

include "koneksi.php";

$id_pembeli = $_GET['id_pembeli'];
$data        = " DELETE FROM data_pembeli  where id_pembeli='$id_pembeli'";

mysqli_query($koneksi,$data);
header('location:lihat_data_pembeli.php'); 

?>