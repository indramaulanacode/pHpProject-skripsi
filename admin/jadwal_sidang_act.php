<?php 
include '../dbKonfig.php';
if($_POST['sidang']){

	$sidang = $_POST ['jadwal_sidang'];
	

	$query = mysqli_query($connect,"INSERT INTO tbl_jadwal VALUES ('','','$sidang')");
	if($query){

		echo '<script> alert("Selesai"); </script>';
	}else{
		echo '<script> alert("Gagal"); </script>';
		
	
	}
}

 ?>