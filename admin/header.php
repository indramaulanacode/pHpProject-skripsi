<!DOCTYPE html>
<html>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
	<?php 
	session_start();
	include 'sessionad.php';
	include '../dbKonfig.php';
	?>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Aplikasi Ujian Online</title>


	<!-- datatables -->	
	

	<!-- Global stylesheets -->
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900" rel="stylesheet" type="text/css">
	<link href="../assets/css/icons/icomoon/styles.css" rel="stylesheet" type="text/css">
	<link href="../assets/css/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="../assets/css/core.css" rel="stylesheet" type="text/css">
	<link href="../assets/css/components.css" rel="stylesheet" type="text/css">
	<link href="../assets/css/colors.css" rel="stylesheet" type="text/css">
	<!-- /global stylesheets -->

	<!-- Core JS files -->
	<script type="text/javascript" src="../assets/js/plugins/loaders/pace.min.js"></script>
	<script type="text/javascript" src="../assets/js/core/libraries/jquery.min.js"></script>
	<script type="text/javascript" src="../assets/js/core/libraries/bootstrap.min.js"></script>
	<script type="text/javascript" src="../assets/js/plugins/loaders/blockui.min.js"></script>
	<!-- /core JS files -->

	<!-- Theme JS files -->
	<script type="text/javascript" src="../assets/js/plugins/visualization/d3/d3.min.js"></script>
	<script type="text/javascript" src="../assets/js/plugins/visualization/d3/d3_tooltip.js"></script>
	<script type="text/javascript" src="../assets/js/plugins/forms/styling/switchery.min.js"></script>
	<!-- <script type="text/javascript" src="../assets/js/plugins/forms/styling/uniform.min.js"></script> -->
	<script type="text/javascript" src="../assets/js/plugins/forms/selects/bootstrap_multiselect.js"></script>
	<script type="text/javascript" src="../assets/js/plugins/ui/moment/moment.min.js"></script>
	<script type="text/javascript" src="../assets/js/plugins/pickers/daterangepicker.js"></script>

	<script type="text/javascript" src="../assets/js/core/app.js"></script>

	<script src="../code/highcharts.js"></script>
	<script src="../code/modules/exporting.js"></script>
	<script src="../code/modules/export-data.js"></script>
	
	
</head>
<body>
	<!-- Main navbar -->
	<div class="navbar navbar-default header-highlight">
		<div class="navbar-header">
			<a class="navbar-brand" href="index.php"></a>
			<p class="navbar-text text-white" ><span class=""><b>HALAM DOSEN</b></span></p>
			<ul class="nav navbar-nav visible-xs-block">
				<li><a data-toggle="collapse" data-target="#navbar-mobile"><i class="icon-tree5"></i></a></li>
				<li><a class="sidebar-mobile-main-toggle"><i class="icon-paragraph-justify3"></i></a></li>
			</ul>
		</div>
		<div class="navbar-collapse collapse" id="navbar-mobile">
			<ul class="nav navbar-nav">
				<li><a class="sidebar-control sidebar-main-toggle hidden-xs"><i class="icon-paragraph-justify3"></i></a></li>
			</ul>
			<p class="navbar-text"><span class=""><b>Aplikasi MANAJEMEN Tugas Skripsi</b></span></p>

			
		</div>
	</div>


	<div class="page-container">

		<!-- Page content -->
		<div class="page-content">

			<!-- Main sidebar -->
			<div class="sidebar sidebar-main bg-info">
				<div class="sidebar-content">
					<!-- User menu -->
					<div class="sidebar-user">
						<div class="category-content">
							<div class="media">	
								<div class="row">
									
								</div>			
							</div>
						</div>
					</div>
					<!-- /user menu -->

					<div class="sidebar-category sidebar-category-visible">
						<div class="category-content no-padding">
							<ul class="navigation navigation-main navigation-accordion">
							<li ><a href="index.php">Dosen Admin</span>								
								<li ><a href="index.php"><span></span>						
							</a></li>
								
								
								<li>
									<a href="data_pengajuan_judul.php"><i class="icon-stack3"></i> <span>Judul</span></a>
									
		
								</li>
								<li>
									<a href="data_proposal.php"><i class="icon-stack3"></i> <span>Kelola Proposal</span></a>
									
								</li>
								<li>
									<a href="data_skripsi.php"><i class="icon-stack3"></i> <span>Kelola Skripsi</span></a>
									
								</li>
								<li>
									<a a href="jadwal.php"><i class="icon-stack3"></i> <span>Jadwal</span></a>
									
								</li>

								<li><a href="logout.php"><i class="icon-switch"></i> <span>Logout</span></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>


