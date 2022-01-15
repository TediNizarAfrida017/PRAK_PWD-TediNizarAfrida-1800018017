<?php
// memanggil library FPDF 
require('fpdf/fpdf.php');
// intance object dan memberikan pengaturan halaman PDF
$pdf = new FPDF('l','mm','A5');
// membuat halaman baru
$pdf->AddPage();
// setting jenis font yang akan digunakan
$pdf->SetFont('Arial','B',16);
// mencetak string
$pdf->Cell(190,7,'PENJUALAN VELG MOBIL',0,1,'C');
$pdf->SetFont('Arial','B',12);
$pdf->Cell(190,7,'ONO VELG  ',0,1,'C');

// Memberikan space kebawah agar tidak terlalu rapat
$pdf->Cell(10,7,'',0,1);

$pdf->SetFont('Arial','B',10);
$pdf->Cell(25,6,'ID BARANG',1,0);
$pdf->Cell(35,6,'NAMA BARANG',1,0);
$pdf->Cell(25,6,'HARGA',1,0);
$pdf->Cell(35,6,'DIAMETER VELG',1,0);
$pdf->Cell(30,6,'MERK VELG',1,0);
$pdf->Cell(30,6,'WARNA VELG',1,1);
$pdf->SetFont('Arial','',10); include 'koneksi.php';
$mahasiswa = mysqli_query($koneksi, "select * from data_barang"); // query yang diambil dari tabel mahasiswa
while ($row = mysqli_fetch_array($mahasiswa)){
$pdf->Cell(25,6,$row['id_barang'],1,0);
$pdf->Cell(35,6,$row['nama_barang'],1,0);
$pdf->Cell(25,6,$row['harga_barang'],1,0);
$pdf->Cell(35,6,$row['diameter_velg'],1,0);
$pdf->Cell(30,6,$row['merk_velg'],1,0);
$pdf->Cell(30,6,$row['warna_velg'],1,1);
}
//menampilkan output dari parameter yang telah dibuat
$pdf->Output();
?>
