<?php 
		$data = json_decode(file_get_contents('php://input'), true);
		//MEndapatkan Nilai Dari Variable 
		$username = $_POST['username'];
		$password = $_POST['password'];
		//import file koneksi database 
		require_once('koneksi.php');
		
		//Membuat SQL Query
		$sql = "SELECT * FROM tbl_peserta WHERE username = '$username' AND password = '$password'";
		$r = mysqli_query($con,$sql);
		$row = mysqli_fetch_array($r);
		//Meng-update Database 
		if(mysqli_num_rows($r) > 0)
		{
			$arr = array("err"=> 1, "sekolah"=>$row['asal_sekolah']);
		}else{
			$arr = array("err"=> 0);
		}
		echo json_encode($arr);
		mysqli_close($con);
?>