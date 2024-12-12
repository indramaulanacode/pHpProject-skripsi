<?php include 'header.php'; ?>
<div class="content-wrapper">

	<!-- Content area -->
	<div class="content">
    <?php
                                $nim=  $_SESSION['nim'];
								$data = mysqli_query($connect,"SELECT * FROM tbl_proposal WHERE nim='$nim';");		
								$no = 1;
                                while($d=mysqli_fetch_array($data)){
									?>
		<!-- Main charts -->
		<div class="row">
			<div class="col-lg-12">
				<!-- Traffic sources -->
                
                
				<div class="panel panel-flat">
					<div class="panel-heading">
						<h4 class="panel-title">Proposa <?php echo $no++; ?> </h4>
						<div class="heading-elements">
							
						</div>
					</div>
								
					<div class="panel-body">
						<div class="table-responsive">
							<form action="accdata.php" method="post" enctype="multipart/form-data" >

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
										<th width="20%" >Proposal</th>
										<td>
                                            <b>:</b>
										<h9><?php echo $d['nama_file']; ?></h9>
										<h9><?php echo"<a class='btn btn-success' href='../proposal/$d[nama_file]'>"?>Lihat</i></a>
											</td>	</h9>
                                    </td>
									</tr>
                                    <tr>
										<th width="20%" >Revisi</th>
										<td>
                                            <b>:</b>
										<h9><?php echo $d['revisi']; ?></h9></td>
									</tr>
                                    <tr>
										<th width="20%" >Keterangan Dosen</th>
										<td>
                                            <b>:</b>
										<h9><?php echo $d['keterangan']; ?></h9></td>
									</tr>
                                    
                                   
								
									</table>
									
								</form>
							</div>					
						</div>						
					</div>	


				</div>

			</div>		
            <?php } ?>
			<div class="footer text-muted">
			</div>

		</div>
	</div>

<?php include 'footer.php'; ?>