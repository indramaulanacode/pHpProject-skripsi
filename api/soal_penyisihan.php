<?php 
		$data = json_decode(file_get_contents('php://input'), true);

		//import file koneksi database 
		require_once('koneksi.php');
		
		//Membuat SQL Query
		$sql = "SELECT * FROM tbl_soal_ujian";
		$r = mysqli_query($con,$sql);
	    $arr = array();
	    while($row = mysqli_fetch_array($r)){
	    array_push($arr, array("id"=>$row['id'],
		    "soal"=>$row['soal'],
			"jawaban_a"=>$row['jawaban_a'],
			"jawaban_b"=>$row['jawaban_b'],
			"jawaban_c"=>$row['jawaban_c'],
			"jawaban_d"=>$row['jawaban_d'],
			"jawaban_e"=>$row['jawaban_e'],
			"jawaban"=>$row['jawaban'],
			"kategori"=>$row['kategori']));
	    }
	//Menampilkan dalam format JSON
	echo json_encode($arr);
	
	mysqli_close($con);
?>