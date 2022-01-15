<?php

include "koneksi.php";
		//jika tombol simpan di tekan/klik
			$id_pembeli     = $_POST['id_pembeli'];
			$nama_pembeli	= $_POST['nama_pembeli'];
			$alamat         = $_POST['alamat'];
			$no_hp          = $_POST['no_hp'];
			
			$sql = ("UPDATE data_pembeli SET nama_pembeli='$nama_pembeli',alamat='$alamat',no_hp='$no_hp'where id_pembeli='$id_pembeli'");

			mysqli_query($koneksi,$sql);
			echo $sql;

		if($sql){
			echo '<script>alert("Berhasil menyimpan data."); document.location="lihat_data_pembeli.php?id_pembeli='.$id_pembeli.'";</script>';
			}else{
			echo '<div class="alert alert-warning">Gagal melakukan proses edit data.</div>';
			}
		?>