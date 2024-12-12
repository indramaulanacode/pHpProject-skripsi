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
						<h4 class="panel-title">Data Pengajuan Judul Mahasiswa</h4>
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
										<th width="12%">ACC Judul</th>
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
											<td><?php echo $d['acc'] ?></td>
											<td>
										<!-- Button trigger modal -->
										<button type="button" class="btn btn-primary editbtn" data-toggle="modal" data-target="#exampleModal">
										Detail
										</button>

												<a class="btn btn-success" btn-flat btn-icon btn-xs" href="accdataform.php?id=<?php echo $d['id'];?>">ACC</i></a>

												
												<?php }?>
									</td>
			
								</tbody>
							</table>

							<!-- Modal -->
							<div class="modal fade" id="exampleModal" id="editmodal"tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">Data Mahasiswa</h5>
									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
								<form action="updatecode.php" method="POST">

									<div class="modal-body">

										<input type="hidden" name="id" id="id">

										<div class="form-group">
											<label> Nim Mahasiswa </label>
											<input type="number" name="nim" id="nim" class="form-control"
												placeholder="Enter First Name">
										</div>

										<div class="form-group">
											<label> Nama Mahasiswa </label>
											<input type="text" name="nama_mahasiswa" id="nama_mahasiswa" class="form-control"
												placeholder="Enter Last Name">
										</div>

										<div class="form-group">
											<label> Judul 1 </label>
											<input type="text" name="judul1" id="judul1" class="form-control"
												placeholder="Enter Course">
										</div>

										<div class="form-group">
											<label> Judul 2 </label>
											<input type="text" name="judul2" id="judul2" class="form-control"
												placeholder="Enter Phone Number">
										</div>
							
										<div class="form-group">
											<label> Judul 3 </label>
											<input type="text" name="judul3" id="judul3" class="form-control"
												placeholder="Enter Phone Number">
										</div>
										<div class="form-group">
											<label> ACC </label>
											<input type="text" name="acc" id="acc" class="form-control"
												placeholder="Enter Phone Number">
										</div>
										
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
										<!-- <button type="submit" name="updatedata" class="btn btn-primary">Update Data</button> -->
									</div>
									</form>
								</div>
							
								</div>
							</div>
							</div>
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
                $('#judul1').val(data[3]);
                $('#judul2').val(data[4]);
				$('#judul3').val(data[5]);
				$('#acc').val(data[6]);
				
            });
        });
    </script>
<?php include 'footer.php'; ?>