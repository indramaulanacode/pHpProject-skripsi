<?php 
		$data = json_decode(file_get_contents('php://input'), true);
		require_once('koneksi.php');
		
		//Membuat SQL Query
		$sql = "SELECT * FROM tbl_soal_ujian";
		$r = mysqli_query($con,$sql);

		//Meng-update Database 
		if(mysqli_num_rows($r) > 0)
		{
			$arr = array("err"=> 1);
		}else{
			$arr = array("err"=> 0);
		}
		echo json_encode($arr);
		mysqli_close($con);
?>