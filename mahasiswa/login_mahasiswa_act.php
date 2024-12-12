<?php 
include 'dbKonfig.php';
$email = $_POST['email'];
$password = $_POST['password'];
$p=$_POST['password'];
if($email=="" && $p==""){
	header("location:index.php?pesan=kosong");
}elseif($email ==""){
	header("location:index.php?pesan=email");
}elseif($p==""){
	header("location:index.php?pesan=password");
}else{

 	$query = mysqli_query($connect,"SELECT * FROM tbl_mahasiswa WHERE email='$email' AND password='$password'");
 	if(mysqli_num_rows($query)>0){

 		$data = mysqli_fetch_assoc($sql);
 		session_start();
 		$_SESSION['uname'] = $email;
		$_SESSION['nama'] = $data = ['nama_mahasiswa'];
		$_SESSION['status'] = "login";
header("location:mahasiswa/");

			}	else{
		header("location:index.php?pesan=gagal")or die(mysqli_error());
 	}
}

?>