<?php
$conn = mysqli_connect("localhost","root","");
$db = mysqli_select_db($conn, 'db_skripsi');
if(! $conn )
{
 die('Could not connect: ' . mysqli_error());
}

if(isset($_POST['kelola']))   
        
{  
        $id = $_POST['id'];
        
        $revisi = $_POST['revisi'];
        $ket = $_POST['keterangan'];

        $query = "UPDATE tbl_proposal SET revisi='$revisi', keterangan='$ket' WHERE id='$id'";
        $query_run = mysqli_query($conn, $query);

        if($query_run)
        {
          
            header("Location:data_proposal.php");
        }
        else
        {
            echo 'GAGAL MENGUPLOAD FILE';
        }
    }

?>
