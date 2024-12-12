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
						<h4 class="panel-title">Data Proposal Mahasiswa</h4>
						<div class="heading-elements">
						</div>
					</div>


<!-- form pilah nama mahasiswqa -->
					</form>

					<form action="" method="get">
			              <table class="table">
			                <tr>
			                  <th width="30%">Pilih Nama Mahasiswa Yang Dibimbing</th>
							  <th>

				
							  </th>

							  <th>
			                    <select class="form-control" name="pilih_nama" id="pilih_nama">
				                    <option value="">--Nama Mahasiswa--</option>
									<?php
									$data = mysqli_query($connect,"SELECT DISTINCT nama_mahasiswa FROM tbl_proposal;");		
									while($d=mysqli_fetch_array($data)){
									?>
				                    <option value="<?php echo $d['nama_mahasiswa'] ?>"><?php echo $d['nama_mahasiswa'] ?></option>

									<?php }?>
				                    
			                  	</select>
			                  	
			              		<th>
			              			<input type="submit" value="Mulai" class="btn btn-primary btn-sm">
			              		</th>
			                </tr>

					
				
			              </table>
			            </form>
						
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table table-bordered table-hover table-striped">
							<thead>
									<tr>
										<th width="5%">No</th>
										<th width="15%">Nim Mahasiswa</th>
										<th width="15%">Nama Mahasiswa</th>
										<th width="12%">Proposal</th>
										<th width="12%">Revisis</th>
										<th width="12%">Keterangan</th>
										<th width="12%">Kelola</th>
								
									</tr>
								</thead>
								<tbody>
									<?php
									if(isset($_GET['pilih_nama'])){

										$pilih = $_GET['pilih_nama'];
										
										$data = mysqli_query($connect,"SELECT * FROM tbl_proposal WHERE nama_mahasiswa ='$pilih'");	
										$no = 1;
										while($d=mysqli_fetch_array($data)){
											?>
									

										<tr>
											<td align="center"><?php echo $no++; ?></td>
											<td><?php echo $d['nim'] ?></td>
											<td><?php echo $d['nama_mahasiswa'] ?></td>
											<td><?php echo $d['nama_file'] ?></td>
											<td><?php echo $d['revisi'] ?></td>
                                            <td><?php echo $d['keterangan'] ?></td>
								
											
											<td>

												<a class="btn btn-success" btn-flat btn-icon btn-xs" href="kelola_proposal.php?id=<?php echo $d['id'];?>">kelola</i></a>

												
												<?php }?>
												<?php } ?>
									</td>
			
								</tbody>
							</table>

										
					</div>					
				</div>
			</div>
		</div>		

	</div>
</div>



<?php include 'footer.php'; ?>