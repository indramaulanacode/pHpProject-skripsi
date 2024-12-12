<?php 
include '../dbKonfig.php';
if($_POST['upload']){

	$id = $_POST ['id_mahasiswa'];
	$nim = $_POST ['nim'];
	$nama = $_POST['nama'];
	$judul = $_POST['judul1'];
	$kategori = $_POST['judul2'];
	$metode = $_POST['judul3'];
	$acc = $_POST['acc'];
	

	$query = mysqli_query($connect,"INSERT INTO tbl_judul VALUES ('','$id','$nim','$nama','$judul','$kategori','$metode','$acc','')");
	if($query){
		header("location:proses_acc_judul.php");
	}else{
		echo '<script> alert("Anda Telah Mengajukan Judul. Tunggu Tahap Berikutnya"); </script>';
		header("location:judul_anda.php");
	
	}
}

 ?>