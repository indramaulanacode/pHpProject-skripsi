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

	$query = mysqli_query($connect,"SELECT * FROM tbl_mahasiswa WHERE email='$email' AND mpassword='$password'");

	if(mysqli_num_rows($query)>0){

		$data_user = mysqli_fetch_assoc($query);
		session_start();
		$_SESSION['un'] = $data_user['email'];
		$_SESSION['id'] = $data_user['id_mahasiswa'];
		$_SESSION['nim'] = $data_user['nim'];
		$_SESSION['nama'] = $data_user['nama_mahasiswa'];
		$_SESSION['status'] = "login";
		header("location:mahasiswa/");
	} 
	else{
		header("location:index.php?pesan=gagal")or die(mysql_error());
	}
}

?>
