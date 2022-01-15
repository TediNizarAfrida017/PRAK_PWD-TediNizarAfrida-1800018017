<?php

include "koneksi.php";
		//jika tombol simpan di tekan/klik
			$id_karyawan    = $_POST['id_karyawan'];
			$nama_karyawan  = $_POST['nama_karyawan'];
			$jenis_kelamin  = $_POST['jenis_kelamin'];
			$alamat	        = $_POST['alamat'];
			$No_Handphone	= $_POST['no_hp'];
			$Jabatan    	= $_POST['jabatan'];
			
			$sql = ("UPDATE data_karyawan SET nama_karyawan='$nama_karyawan',jenis_kelamin='$jenis_kelamin',alamat='$alamat',no_hp='$no_hp',jabatan='$jabatan',jenis_pekerjaan='$jenis_pekerjaan' where id_karyawan='$id_karyawan'");

			mysqli_query($koneksi,$sql);
			echo $sql;

		if($sql){
			echo '<script>alert("Berhasil menyimpan data."); document.location="lihat_data_karyawan.php?id_karyawan='.$id_karyawan.'";</script>';
			}else{
			echo '<div class="alert alert-warning">Gagal melakukan proses edit data.</div>';
			}
		?>