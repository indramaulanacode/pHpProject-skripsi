<?php
$conn = mysqli_connect("localhost","root","");
$db = mysqli_select_db($conn, 'db_skripsi');
if(! $conn )
{
 die('Could not connect: ' . mysqli_error());
}

if(isset($_POST['accjudul']))   
        
{  
        $id = $_POST['id'];
        $nim = $_POST[''];
        $nama = $_POST[''];
        $judul1 = $_POST['judul1'];
        $judul2 = $_POST['judul2'];
        $judul3 = $_POST['judul3'];
        $acc = $_POST['acc'];
        $ket = $_POST['keterangan'];
        $query = "UPDATE tbl_judul SET judul1='$judul1', judul2=' $judul2', judul3='$judul3', acc='$acc', keterangan='$ket' WHERE id='$id'";
        $query_run = mysqli_query($conn, $query);

        if($query_run)
        {
          
            header("Location:data_pengajuan_judul.php");
        }
        else
        {
            echo 'GAGAL MENGUPLOAD FILE';
        }
    }

?>
