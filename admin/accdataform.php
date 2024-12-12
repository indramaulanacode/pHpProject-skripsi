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
						<h4 class="panel-title">Data Judul Mahasiswa</h4>
						<div class="heading-elements">
							<a href="data_pengajuan_judul.php" class="btn btn-sm btn-primary"><i class="icon-arrow-left12"></i> KEMBALI</a>
						</div>
					</div>
					<div class="panel-body">
						<div class="table-responsive">
							<form action="accdata_act.php" method="post" enctype="multipart/form-data" >
								<?php
								$id = $_GET['id'];
								$data = mysqli_query($connect,"SELECT * FROM tbl_judul WHERE id='$id'");		
								while($d=mysqli_fetch_array($data)){
									?>
									<table class="table">
									
									<tr>
										<th width="20%">Nim Mahasiswa</th>
										<td>
										<input type="hidden" name="id" value="<?php echo $d['id']; ?>">
							
											<h9><?php echo $d['nim']; ?></h9></td>
									</tr>
									<tr>
										<th width="20%">Nama Mahasiswa</th>
										<td>
										<h9><?php echo $d['nama_mahasiswa']; ?></h9></td>
									</tr>
									<tr>
										<th width="20%">Judul 1</th>
										<td>
											<input type="text" class="form-control" id="judul1" name="judul1" value="<?php echo $d['judul1']; ?>"></td>
									</tr>	
									<tr>
										<th width="20%">Judul 2</th>
										<td>
											<input type="text" class="form-control" id="judul2" name="judul2" value="<?php echo $d['judul2']; ?>"></td>
									</tr>	
									<tr>
										<th width="20%">Judul 3</th>
										<td>
											<input type="text" class="form-control" id="judul3" name="judul3" value="<?php echo $d['judul3']; ?>"></td>
									</tr>	
									
									<tr>
									<div class="form-group">
													<label> Judul Yang Di ACC </label>
														<select class="form-control" name="acc" id="acc" required aria-label="select example">
														<option value="Tidak Diterima">Tidak</option>
														<option value="<?php echo $d['judul1']; ?>"><?php echo $d['judul1']; ?></option>
														<option value="<?php echo $d['judul2']; ?>"><?php echo $d['judul2']; ?></option>
														<option value="<?php echo $d['judul3']; ?>"><?php echo $d['judul3']; ?></option>
			                  						</select>
													  <tr>
									<label for="keterangan">Tambah Keterangan</label>
    								<textarea class="form-control" id="keterangan" rows="3"
									name="keterangan"></textarea>
									</tr>
													</div>
										
									</tr>	
									<tr>
										<th></th>
										<td><input type="submit" value="SIMPAN"  name="accjudul" class="btn btn-primary btn-sm"></td>
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