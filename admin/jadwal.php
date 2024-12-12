<?php include 'header.php'; ?>

<!-- jjjjjjjjjjjjjjjjjjjjjjjjjjjjj -->

<div class="content-wrapper">

	<!-- Content area -->
	<div class="content">
   
		<!-- Main charts -->
		<div class="row">
			<div class="col-lg-12">
				<!-- Traffic sources -->
                
				<div class="panel panel-flat">
					<div class="panel-heading">
						<h4 class="panel-title">Jadwal</h4>
						<div class="heading-elements">
							
						</div>
					</div>
								
					<div class="panel-body">
						<div class="table-responsive">
                        <form action="jadwal_seminar_act.php" method="post">
						<table class="table">
			                <tr>
			                  <th width="30%">Masukan Jadwal Seminar</th>
							  <th>
								<input  class="form-control" type="date" name="jadwal_seminar" required pattern="\d{4}-\d{2}-\d{2}">
								<span class="validity"></span>
							  </th>
							  
							  <th>
								  <input type="submit" value="Tetapkan" name="seminar" class="btn btn-primary btn-sm">
								</th>
							</tr>
					</table>

                    </form>
                        <form action="jadwal_sidang_act.php" method="post">
						<table class="table">

			                <tr>
			                  <th width="30%">Masukan Jadwal Sidang</th>
							  <th>
								<input  class="form-control" type="date" name="jadwal_sidang" required pattern="\d{4}-\d{2}-\d{2}">
								<span class="validity"></span>
							  </th>
							  
							  <th>
								  <input type="submit" value="Tetapkan" name="sidang" class="btn btn-primary btn-sm">
								</th>
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

            <!-- Tabel jadwal Seminar  -->
            <!-- Main charts -->
		<div class="row">
			<div class="col-lg-12">
				<!-- Traffic sources -->
				<div class="panel panel-flat">
					<div class="panel-heading">
						<h4 class="panel-title">Tabel Jadwal</h4>
						<div class="heading-elements">
						</div>
					</div>
					<div class="panel-body">
						<div class="table-responsive">
                        <h6 class="panel-title">Jadwal Seminar</h6>
							<table class="table table-bordered table-hover table-striped">
								<thead>
									<tr>
										<th width="5%">No</th>
										<th width="15%">Jadwal Seminar</th>
                                        <th width="12%">Kelola Jadwal</th>
									</tr>
								</thead>
								<tbody>
									<?php
									$data = mysqli_query($connect,"SELECT * FROM tbl_jadwal WHERE jadwal_seminar");	
									$no = 1;	
									while($d=mysqli_fetch_array($data)){
										?>
										<tr>
											<td align="center"><?php echo $no++; ?></td>
											<td><?php echo $d['jadwal_seminar'] ?></td>
											<td>

												<a class="btn btn-success" btn-flat btn-icon btn-xs href="hapus_seminar.php?id=<?php echo $d['id'];?>">hapus</i></a>

												
												<?php }?>
									</td>
			
								</tbody>
							</table>

							</div>
							</div>

                            <!-- Sidang -->
                            <div class="panel-body">
                                <div class="table-responsive">
                                <h6 class="panel-title">Jadwal Sidang</h6>
                                    <table class="table table-bordered table-hover table-striped">
                                        <thead>
                                            <tr>
                                                <th width="5%">No</th>
                                                <th width="15%">Jadwal Sidang</th>
                                                <th width="12%">Kelola Jadwal</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            $data = mysqli_query($connect,"SELECT * FROM tbl_jadwal WHERE jadwal_sidang");	
                                            $no = 1;	
                                            while($d=mysqli_fetch_array($data)){
                                                ?>
                                                <tr>
                                                    <td align="center"><?php echo $no++; ?></td>
                                                    <td><?php echo $d['jadwal_sidang'] ?></td>
                                                    <td>
        
                                                        <a class="btn btn-success" btn-flat btn-icon btn-xs href="hapus_seminar.php?id=<?php echo $d['id'];?>">hapus</i></a>
        
                                                        
                                                        <?php }?>
                                            </td>
                    
                                        </tbody>
                                    </table>
        
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
</div>


    
                    <?php include 'footer.php'; ?>