<?php include 'header.php'; ?>

<body>

	<div class="container">
		<h2 style="text-align: center;">Upload Proposal</h2>
		<form action="ajukan_proposal_act.php" method="post" enctype="multipart/form-data">
			<div class="form-group">

            <div class="form-group">
				<label>Nim :</label>
				<input type="number" class="form-control" placeholder="Masukkan Kontak" name="nim" required="required" value="<?php echo $_SESSION['nim']; ?>" >
			</div>

                <div class="form-group">
				<label> Nama :</label>
				<input type="text" class="form-control" placeholder="Masukkan Nama" name="nama" required="required" value="<?php echo $_SESSION['nama']; ?>">
			</div>
			
			
			</div>
			
			<div class="form-group">
				<label>Proposal :</label>
				<input type="file" name="proposal" required="required">
				<td><input type="hidden" class="form-control" id="revisi" value="Masih Dalam Proses" name="revisi" ></td>
				<p style="color: red">Ekstensi yang diperbolehkan .Word | .PDF </p>
			</div>			
			<input type="submit" name="upload" value="Simpan" class="btn btn-primary">
		</form>
	</div>

</body>

<?php include 'footer.php'; ?>

