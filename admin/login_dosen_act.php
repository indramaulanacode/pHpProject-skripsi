<?php 
include '../dbKonfig.php';
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

	$query = mysqli_query($connect,"SELECT * FROM tbl_dosen WHERE email='$email' AND dpassword='$password'");
	if(mysqli_num_rows($query)>0){
		$data_dosen = mysqli_fetch_assoc($query);
		session_start();
		$_SESSION['email'] = $data_dosen['email'];
		$_SESSION['id'] = $data_dosen['id_dosen'];
		$_SESSION['nama'] = $data_dosen['nama_dosen'];
		$_SESSION['status'] = "login";
		header("location:home.php");
	} 
	else{
		header("location:index.php?pesan=gagal")or die(mysql_error());
	}
}

?>
