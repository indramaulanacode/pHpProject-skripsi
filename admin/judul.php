<?php include 'header.php'; ?>
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
						<h4 class="panel-title">Data Anda</h4>
						<div class="heading-elements">
						</div>
					</div>
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table table-bordered table-hover table-striped">
								<thead>
									<tr>
										<th width="5%">No</th>
										<th width="15%">Nim Mahasiswa</th>
										<th width="15%">Nama Mahasiswa</th>
										<th width="12%">Judul 1</th>
										<th width="12%">Judul 2</th>
										<th width="12%">Judul 3</th>
										<th width="12%">ACC</th>

									</tr>
								</thead>
								<tbody>
									<?php
									$data = mysqli_query($connect,"SELECT * FROM tbl_judul");	
									$no = 1;	
									while($d=mysqli_fetch_array($data)){
										?>
										<tr>
											<td align="center"><?php echo $no++; ?></td>
											<td><?php echo $d['nim'] ?></td>
											<td><?php echo $d['nama_mahasiswa'] ?></td>
											<td><?php echo $d['judul1'] ?></td>
											<td><?php echo $d['judul2'] ?></td>
                                            <td><?php echo $d['judul3'] ?></td>
										
										</tr>
										<?php
									}
									?>
								</tbody>
							</table>
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