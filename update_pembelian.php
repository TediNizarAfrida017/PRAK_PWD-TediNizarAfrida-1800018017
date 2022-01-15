<?php

include "koneksi.php";
		//jika tombol simpan di tekan/klik
			$id_barang          = $_POST['id_barang'];
			$jumlah_pembelian	= $_POST['jumlah_pembelian'];
			$total_bayar        = $_POST['total_bayar'];
			$metode_bayar       = $_POST['metode_bayar'];
			
			$sql = ("UPDATE data_barang SET jumlah_pembelian='$jumlah_pembelian',total_bayar='$total_bayar',metode_bayar='$metode_bayar'where id_barang='$id_barang'");

			mysqli_query($koneksi,$sql);
			echo $sql;

		if($sql){
			echo '<script>alert("Berhasil menyimpan data."); document.location="lihat_data_pembelian.php?id_barang='.$id_barang.'";</script>';
			}else{
			echo '<div class="alert alert-warning">Gagal melakukan proses edit data.</div>';
			}
		?>