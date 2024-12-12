<?php include 'header.php'; ?>
<div class="content-wrapper">

	<!-- Content area -->
	<div class="content">

		<!-- Main charts -->
		<div class="row">
			<div class="col-lg-12">
				<!-- Traffic sources -->
				<div class="panel panel-flat">
					<div class="panel-heading">
						<h4 class="panel-title">Judul Anda</h4>
						<div class="heading-elements">
							
						</div>
					</div>
					<div class="panel-body">
						<div class="table-responsive">
							<form action="accdata.php" method="post" enctype="multipart/form-data" >
								<?php
                                $nim=  $_SESSION['nim'];
								$data = mysqli_query($connect,"SELECT * FROM tbl_judul WHERE nim='$nim';");		
								while($d=mysqli_fetch_array($data)){
									?>
									<table class="table">
									
									<tr class="bg-light">
										<th width="20%">Nim Mahasiswa </th>
										<td>
                                        <b>:</b>
											<h9><?php echo $d['nim']; ?></h9></td>
									</tr>
									<tr>
										<th width="20%">Nama Mahasiswa</th>
										<td>
                                        <b>:</b>
										<h9><?php echo $d['nama_mahasiswa']; ?></h9></td>
									</tr>
                                    <tr>
										<th width="20%" >Judul 1</th>
										<td>
                                            <b>:</b>
										<h9><?php echo $d['judul1']; ?></h9></td>
									</tr>
                                    <tr>
										<th width="20%">Judul 2</th>
										<td>
                                        <b>:</b>
										<h9><?php echo $d['judul2']; ?></h9></td>
									</tr>
                                    <tr>
										<th width="20%">Judul 3 :</th>
										<td>
                                        <b>:</b>
										<h9><?php echo $d['judul3']; ?></h9></td>
									</tr>
                                    <tr>
										<th width="20%" class="text-warning">Judul ACC</th>
										<td>
                                        <b>:
										<h9><?php echo $d['acc']; ?></h9></td>
									</tr>
                                    <tr>
										<th width="20%">Keterangan Dosen</th>
										<td>
                                        <b>:</b>
										<h9><?php echo $d['keterangan']; ?></h9></td>
									</tr>
								
									</table>
									<?php } ?>
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

<?php include 'footer.php'; ?>