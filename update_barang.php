<?php

include "koneksi.php";
		//jika tombol simpan di tekan/klik
			$id_barang      = $_POST['id_barang'];
			$nama_barang    = $_POST['nama_barang'];
			$harga_barang   = $_POST['harga_barang'];
			$keterangan	    = $_POST['keterangan'];
			$diameter_velg	= $_POST['diameter_velg'];
			$merk_velg 	    = $_POST['merk_velg'];
            $warna_velg   	= $_POST['warna_velg'];
			
			$sql = ("UPDATE data_barang SET nama_barang='$nama_barang',harga_barang='$harga_barang',keterangan='$keterangan',diameter_velg='$diameter_velg',merk_velg='$merk_velg',warna_velg='$warna_velg' where id_barang='$id_barang'");

			mysqli_query($koneksi,$sql);
			echo $sql;

		if($sql){
			echo '<script>alert("Berhasil menyimpan data."); document.location="lihat_data_barang.php?id_barang='.$id_barang.'";</script>';
			}else{
			echo '<div class="alert alert-warning">Gagal melakukan proses edit data.</div>';
			}
		?>