<?php 
include '../dbKonfig.php';

if($_POST['upload']){

$nama = $_POST['nama'];
$nim = $_POST['nim'];
$revisi = $_POST['revisi'];

$rand = rand();
$ekstensi =  array('pdf','docx','png','jpg','jpeg','gif');
$filename = $_FILES['skripsi']['name'];
$ukuran = $_FILES['skripsi']['size'];
$ext = pathinfo($filename, PATHINFO_EXTENSION);

if(!in_array($ext,$ekstensi) ) {
	header("location:index.php?alert=gagal_ekstensi");

}

else{

	if($ukuran < 1044070){	

		$nama_file = $rand.'_'.$filename;
		move_uploaded_file($_FILES['skripsi']['tmp_name'], '../skripsi/'.$rand.'_'.$filename);

        
		mysqli_query($connect,"INSERT INTO tbl_skripsi VALUES (NULL, '$nim','$nama','$nama_file', '$revisi', '')");
        header("location:index.php?alert=berhasil");
        


	}else{
		header("location:index.php?alert=gagak_ukuran");
	}
}

}

?>