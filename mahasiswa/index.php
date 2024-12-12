<?php 
include 'header.php';
?>
<!-- Main content -->
<div class="content-wrapper">

	<!-- Content area -->
	<div class="content">
<div class="row">
			<div class="col-lg-12">
						<div class="panel bg-teal-400">
							<div class="panel-body">
								<h3 class="no-margin" style="text-align: center;">Jadilah Mahasiswa Berprestasi. Dan selalu berdo'a sebelum mengajukan judul</h3>
								
					</div>
				</div>
			</div>
			<div class="col-lg-12">


			<!-- batas -->
				
			<div class="content">
    <?php
                               
								$data = mysqli_query($connect,"SELECT * FROM tbl_jadwal WHERE jadwal_seminar ");		
								$no = 1;
                                while($d=mysqli_fetch_array($data)){
									?>
		<!-- Main charts -->
		<div class="row">
			<div class="col-lg-12">
				<!-- Traffic sources -->
                
                
				<div class="panel panel-flat">
					<div class="panel-heading">
						<h4 class="panel-title">Jadwal Seminar </h4>
						<div class="heading-elements">
							
						</div>
					</div>
								
					<div class="panel-body">
						<div class="table-responsive">
							<form action="accdata.php" method="post" enctype="multipart/form-data" >

									<table class="table">
                                    
									<tr class="bg-light">
										<th width="20%">Jadwal Seminar <?php echo $no++; ?> </th>
										<td>
                                        <b>:</b>
											<span><?php echo $d['jadwal_seminar']; ?></span></td>
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
		
		
		<!-- batasssssssssss -->
		
		
	<div class="content">
<?php
					   
						$data = mysqli_query($connect,"SELECT * FROM tbl_jadwal WHERE jadwal_sidang ");		
						$no = 1;
						while($d=mysqli_fetch_array($data)){
							?>
<!-- Main charts -->
<div class="row">
	<div class="col-lg-12">
		<!-- Traffic sources -->
		
		
		<div class="panel panel-flat">
			<div class="panel-heading">
				<h4 class="panel-title">Jadwal Sidang </h4>
				<div class="heading-elements">
					
				</div>
			</div>
						
			<div class="panel-body">
				<div class="table-responsive">
					<form action="accdata.php" method="post" enctype="multipart/form-data" >

							<table class="table">
							
							<tr class="bg-light">
								<th width="20%">Jadwal Sidang <?php echo $no++; ?> </th>
								<td>
								<b>:</b>
									<span><?php echo $d['jadwal_sidang']; ?></span></td>
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
		</div>
	</div>
</div>




	

<?php include 'footer.php'; ?>