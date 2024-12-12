<?php 
		$data = json_decode(file_get_contents('php://input'), true);
		require_once('koneksi.php');
		
		$username = $_POST['username'];
		//Membuat SQL Query
		$sql = "SELECT * FROM tbl_soal_ujian2";
		$r = mysqli_query($con,$sql);

		//Meng-update Database 
		if(mysqli_num_rows($r) > 0)
		{
			$sql2 = "SELECT * FROM tbl_peserta2 WHERE username = '$username'";
			$r2 = mysqli_query($con,$sql2);
			if(mysqli_num_rows($r2) > 0)
			{
				$arr = array("err"=> 1);
			}else{
				$arr = array("err"=> 3);
			}
		}else{
			$arr = array("err"=> 0);
		}
		echo json_encode($arr);
		mysqli_close($con);
?>