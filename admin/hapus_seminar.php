<?php 
include '../dbKonfig.php';
$id = $_GET['id'];
mysqli_query($connect,"DELETE FROM tbl_jadwal WHERE id ='$id' ");
header("location:jadwal.php");
?>