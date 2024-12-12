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
						<h4 class="panel-title">Acc Judul Skripsi Mahasiswa</h4>
						<div class="heading-elements">
						</div>
					</div>

                    <form action="" method="get">
			              <table class="table">
			                <tr>
			                  <th width="30%">
			                    <select class="form-control" name="namamahasiswa" id="namamahasiswa">
				                    <option value="">--Nama mahasiswa--</option>


                                   <?php $data = mysqli_query($connect,"SELECT * FROM tbl_judul");	
									$no = 1;	
									while($d=mysqli_fetch_array($data)){
                                        ?>

                                        <option value=""><?php echo $d['nama_mahasiswa'] ?></option>

                                  <?php  }
										?>
				                   
			                  	</select>
			                  	<th  width="30%">
								<input type="number" class="form-control" id="judul" name="judul" placeholder="judul mahasiswa" >
			                  	</th>
			              		<th>
			              			<a href="reset_soal.php" class="btn btn-sm btn-primary">ACC JUDUL</a>
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
										<th width="12%">Judul Di Acc</th>

									</tr>
								</thead>
								<tbody>
									<?php

                                if(isset($_GET['namamahasiswa']) && isset($_GET['judul'])){
                                    $nama = $_GET['namamahasiswa'];
                                    $judul = $_GET['judul'];
                                    if($kategori !== ""){
                                    $data = mysqli_query($connect,"INSERT INTO tbl_acc_judul SELECT * FROM tbl_judul WHERE nama_mahasiswa = '$nama' ORDER BY RAND() LIMIT $judul");	
                                }else{
                                    $data = mysqli_query($connect,"INSERT INTO tbl_acc_judul SELECT * FROM tbl_judul ORDER BY RAND() LIMIT $judul");	
                                }
                            }

									$data = mysqli_query($connect,"SELECT * FROM tbl_acc_judul");	
									$no = 1;	
									while($d=mysqli_fetch_array($data)){
										?>
										<tr>
											<td align="center"><?php echo $no++; ?></td>
											<td><?php echo $d['nim_mahasiswa'] ?></td>
											<td><?php echo $d['nama_mahasiswa'] ?></td>
											<td><?php echo $d['judulacc'] ?></td>
										
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