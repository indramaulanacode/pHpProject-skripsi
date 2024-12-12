<?php include 'header.php'; ?>
<?php include '../dbKonfig.php';
	include 'session.php';
?>
<!-- Main content -->
<div class="content-wrapper">

	<!-- Content area -->
	<div class="content">

		<!-- Main charts -->
		<div class="row">
			<div class="col-lg-12">
				<!-- Traffic sources -->
				<div class="panel panel-flat">
					<div class="panel-heading">
						<h4 class="panel-title">Ajukan Judul</h4>
						<div class="heading-elements">
							<a href="proses_acc_judul.php" class="btn btn-sm btn-primary"><i class="icon-arrow-left12"></i> KEMBALI</a>
						</div>
					</div>
					<div class="panel-body">
						<div class="table-responsive">
							<form name="ajukanjudul" action="ajukan_judul_act.php" method="post" enctype="multipart/form-data" onSubmit="return validasi()">
								<table class="table">
								
								<tr>	
									</tr>
									<tr>
									<th width="20%">Nama Mahasiswa</th>
									<td><select class="form-control" name="nama" onSubmit="return validasi()">
												<option value="<?php echo $_SESSION['nama']; ?>"><?php echo $_SESSION['nama']; ?></option>
												
							
											</select></td>
											</tr>

											<tr>
											<th width="20%">Nim Mahasiswa</th>
									<td><select class="form-control" name="nim" onSubmit="return validasi()">
									<option value="<?php echo $_SESSION['nim']; ?>"><?php echo $_SESSION['nim']; ?></option>
												
												
											</select></td>

</tr>
									<tr>
										<th width="20%">Judul 1 </th>
										<td><input type="text" class="form-control" id="judul1" name="judul1" placeholder="Harap Masukan Nama Judul Anda"></td>
										<td><input type="hidden" class="form-control" id="id_mahasiswa" value="<?php echo $_SESSION['id']; ?>" name="id_mahasiswa" placeholder="Harap Masukan Nama Judul Anda"></td>
									</tr>
							
                                    <tr>
										<th width="20%">Judul 2 </th>
										<td><input type="text" class="form-control" id="judul2" name="judul2" placeholder="Harap Masukan Nama Judul Anda" ></td>
									</tr>
                                    <tr>
										<th width="20%">Judul 3 </th>
										<td><input type="text" class="form-control" id="judul3" name="judul3" placeholder="Harap Masukan Nama Judul Anda" ></td>
										<td><input type="hidden" class="form-control" id="acc" value="Masih Dalam Proses" name="acc" placeholder="Harap Masukan Nama Judul Anda" ></td>
									</tr>
							
									<tr>
										<th></th>
										<td><input type="submit" value="SIMPAN" name="upload" class="btn btn-primary btn-sm"></td>
									</tr>		
								</table>
							</form>
						</div>					
					</div>					
				</div>	


			</div>

		</div>		

		
		<div class="footer text-muted">

		</div>

	</div>
</div>

<script>
        function validateForm() {
            if (document.forms["ajukanjudul"]["judul"].value == "") {
                alert("Judul Tidak Boleh Kosong");
                document.forms["ajukanjudul"]["judul"].focus();
                return false;
            }
        }
    </script>


<?php include 'footer.php'; ?>