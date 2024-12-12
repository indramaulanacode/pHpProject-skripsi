<?php 
		$data = json_decode(file_get_contents('php://input'), true);
		//MEndapatkan Nilai Dari Variable 
		$username = $_POST['username'];
		$benar = $_POST['benar'];
		//import file koneksi database 
		require_once('koneksi.php');
		
		//Membuat SQL Query
		$sql = "UPDATE tbl_peserta set skor = '$benar' WHERE username = '$username'";
		$r = mysqli_query($con,$sql);

		//Meng-update Database 
		if(mysqli_query($con,$sql)){
			$arr = array("err"=> 1);
		}else{
			$arr = array("err"=> 0);
		}
		echo json_encode($arr);
		mysqli_close($con);
?>