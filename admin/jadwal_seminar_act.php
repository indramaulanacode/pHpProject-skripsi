<?php 
include '../dbKonfig.php';
if($_POST['seminar']){

	$seminar = $_POST ['jadwal_seminar'];
	

	$query = mysqli_query($connect,"INSERT INTO tbl_jadwal VALUES ('','$seminar','')");
	if($query){

		echo '<script> alert("Selesai"); </script>';
	}else{
		echo '<script> alert("Gagal"); </script>';
		
	
	}
}

 ?>