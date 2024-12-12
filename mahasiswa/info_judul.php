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
						<h4 class="panel-title">Info Judul</h4>
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
										<th width="12%">ACC</th>
                                        <th width="12%">Info</th>
										
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
											<td><?php echo $d['acc'] ?></td>
											<td><button type="button" class="btn btn-primary editbtn" data-toggle="modal" data-target="#exampleModalLong">
										Lihat
										</button></td>
                                    <?php
                                    }
                                    ?>
										<!-- Modal -->
										<div class="modal fade" id="editmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
										<div class="modal-dialog" role="document">
											<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="Judul Mahasiswa">Judul Mahasiswa</h5>
												<button type="button" class="close" data-dismiss="modal" aria-label="Close">
												<span aria-hidden="true">&times;</span>
												</button>
											</div>

											<form action="accdata.php" method="POST">
											<div class="modal-body">

												<input type="hidden" name="id" id="id">

												<div class="form-group">
													<label> NIM Mahasiswa </label>
													<input type="text" name="nim" id="nim" class="form-control"
													>
												</div>

												<div class="form-group">
													<label>Nama Mahasiswa </label>
													<input type="text" name="nama_mahasiswa" id="nama_mahasiswa" class="form-control"
														>
												</div>
													<div class="form-group">
														<label> ACC </label>
														</div>
														<input type="text" name="acc" id="acc" class="form-control">
													</div>
													
													
													</div>
													</form>
													<div class="modal-footer">
														<button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
											
													</div>
									</div>
											</div>
											

											</div>
										</div>
										</div>
								</tbody>
							</table>
						</div>					
					</div>					
				</div>
			</div>
		</div>		

	</div>
</div>


<script>
        $(document).ready(function () {

            $('.editbtn').on('click', function () {

                $('#editmodal').modal('show');

                $tr = $(this).closest('tr');

                var data = $tr.children("td").map(function () {
                    return $(this).text();
                }).get();

                console.log(data);

                $('#update_id').val(data[0]);
                $('#nim').val(data[1]);
                $('#nama_mahasiswa').val(data[2]);
                $('#acc').val(data[3]);

			
            });
        });
    </script>
<?php include 'footer.php'; ?>