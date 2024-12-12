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
						<h4 class="panel-title">Data Proposal Mahasiswa</h4>
						<div class="heading-elements">
							<a href="data_proposal.php" class="btn btn-sm btn-primary"><i class="icon-arrow-left12"></i> KEMBALI</a>
						</div>
					</div>
					<div class="panel-body">
						<div class="table-responsive">
							<form action="kelola_proposal_act.php" method="post" enctype="multipart/form-data" >
								
								<?php
								$id = $_GET['id'];
								$data = mysqli_query($connect,"SELECT * FROM tbl_proposal WHERE id='$id'");		
								while($d=mysqli_fetch_array($data)){
									?>
									<table class="table">
									
									<tr>
										<th width="20%">Nim Mahasiswa</th>
										<td>
										<input type="hidden" name="id" value="<?php echo $d['id']; ?>">
							
											<h9><?php echo $d['nim']; ?></h9>
										</td>
									</tr>
									<tr>
										<th width="20%">Nama Mahasiswa</th>
										<td>
										<h9><?php echo $d['nama_mahasiswa']; ?></h9></td>
									</tr>

									<tr>
										
									<th width="20%">Proposal</th>

									
									<td>
											<?php echo $d['nama_file']; ?> 
										
											<?php echo"<a class='btn btn-success' href='../proposal/$d[nama_file]'>"?>Lihat</i></a>
											</td>		
									
								

										
									</tr>

							

									<div class="form-group">

									<label> Revisi </label>
									<select class="form-control" name="revisi" id="revisi" required aria-label="select example">
									<option value="TIDAK">Tidak</option>
                                    <option value="YA">YA</option>
														
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
										<td><input type="submit" value="SIMPAN"  name="kelola" class="btn btn-primary btn-sm"></td>
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