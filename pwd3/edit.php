<?php
include "koneksi.php";
// include database connection file include_once("koneksi.php");

// Check if form is submitted for user update, then redirect to homepage after update 
if(isset($_POST['update']))
{
$nim = $_POST['nim'];
$nama=$_POST['nama'];
$jkel=$_POST['jkel'];
$alamat=$_POST['alamat'];
$tgllhr=$_POST['tgllhr'];
$prodi = $_POST['prodi'];

// update user data
$result = mysqli_query($koneksi, "UPDATE mahasiswa SET nama='$nama', jkel='$jkel', alamat='$alamat', tgllhr='$tgllhr', prodi='$prodi' WHERE nim='$nim'");

// Redirect to homepage to display updated user in list 
header("Location: index.php");
}
?>

<?php
// Display selected user data based on id
// Getting id from url
$nim = $_GET['nim'];

// Fetech user data based on id
$result = mysqli_query($koneksi, "SELECT * FROM mahasiswa WHERE nim='$nim'");

while($user_data = mysqli_fetch_array($result))
{
$nim = $user_data['nim'];
$nama2 = $user_data['nama'];
$jkel = $user_data['jkel'];
$alamat = $user_data['alamat'];
$tgllhr = $user_data['tgllhr'];
$prodi = $user_data['prodi'];
}
?>
<html>
<head>
<title>Edit Data Mahasiswa</title>
</head>

<body>
<a href="index.php">Home</a>
<br/><br/>

<form name="update_mahasiswa" method="post" action="edit.php">
<table border="0">
<tr>
<td>Nama</td>
<td><input type="text" name="nama" value="<?php echo $nama2; ?>"></td>
</tr>
<tr>
<td>Gender</td>
<td><input type="text" name="jkel" value="<?php echo $jkel; ?>"></td>
</tr>
<tr>
<td>alamat</td>
<td><input type="text" name="alamat" value="<?php echo $alamat; ?>"></td>
</tr>
<tr>
<td>Tgl Lahir</td>
<td><input type="text" name="tgllhr" value="<?php echo $tgllhr; ?>"></td>
</tr>
<tr>
<td>Prodi</td>
<td><input type="text" name="prodi" value="<?php echo $prodi; ?>"></td>
</tr>
<tr>
<td><input type="hidden" name="nim" value="<?php echo $nim; ?>"></td>
<td><input type="submit" name="update" value="Update"></td>
</tr>
</table>
</form>
</body>
</html>
