<?php
//membuat link url di getdatamhs.php
$url = "http://localhost/pwd10/getdatamhs.php";
//mengambil data dari $url 
$client = curl_init($url);
//mengembalikan transfer menjadi bentuk String.
curl_setopt($client, CURLOPT_RETURNTRANSFER, 1);
//menampilkan data dalam $client
$response = curl_exec($client);
//menerjemahkan string JSON
$result = json_decode($response); 
	//membuat perulangan data
	foreach ($result as $r) {
	echo "<p>";
	//menampilkan data nim
	echo "NIM : " . $r->nim . "<br />";	
	//menampilkan data nama
	echo "Nama : " . $r->nama . "<br />";  
	//menampilkan data jkel
	echo "jenis kel : " . $r->jkel . "<br />"; 
	//menampilkan data alamat
	echo "Alamat : " . $r->alamat . "<br />"; 
	//menampilkan data tgllhr
	echo "Tgl Lahir : " . $r->tgllhr . "<br />"; 
	echo "</p>";
}
