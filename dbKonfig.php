<?php
	$connect = mysqli_connect("localhost","root","");
	mysqli_select_db($connect,"db_skripsi");
	if(!$connect){
		echo "GAGAL KONEKSI KE DATABASE";
		exit();
	}
?>