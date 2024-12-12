<?php 
	    $nama = $_POST['nama'];
	    $username = $_POST['username'];
	    $password = $_POST['password'];
		//import file koneksi database 
		require_once('koneksi.php');
		//Membuat SQL Query
		$sql = "INSERT INTO tbl_peserta(id,username,password,asal_sekolah,skor,soal) VALUES ('','$username','$password','$nama',0,0)";
		
		if(mysqli_query($con,$sql)){
			$arr = array("err"=> 1);
		}else{
			$arr = array("err"=> 0);
		}
		echo json_encode($arr);
		mysqli_close($con);
?>