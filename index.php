<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Aplikasi Manajemen Tugas Skripsi. Login Mahasiswa</title>

  <!-- <link href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900" rel="stylesheet" type="text/css"> -->
  <link href="assets/css/icons/icomoon/styles.css" rel="stylesheet" type="text/css">
  <link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css">
  <link href="assets/css/core.css" rel="stylesheet" type="text/css">
  <link href="assets/css/components.css" rel="stylesheet" type="text/css">
  <link href="assets/css/colors.css" rel="stylesheet" type="text/css">

  <script type="text/javascript" src="assets/js/plugins/loaders/pace.min.js"></script>
  <script type="text/javascript" src="assets/js/core/libraries/jquery.min.js"></script>
  <script type="text/javascript" src="assets/js/core/libraries/bootstrap.min.js"></script>
  <script type="text/javascript" src="assets/js/plugins/loaders/blockui.min.js"></script>

  <script type="text/javascript" src="assets/js/plugins/forms/validation/validate.min.js"></script>
  <script type="text/javascript" src="assets/js/plugins/forms/styling/uniform.min.js"></script> 

  <script type="text/javascript" src="assets/js/core/app.js"></script>
  <script type="text/javascript" src="assets/js/pages/login.js"></script>


</head>

<body class="login-container bg-slate-800">

  <!-- Page container -->
  <div class="page-container">

    <!-- Page content -->
    <div class="page-content">

      <!-- Main content -->
      <div class="content-wrapper">

        <!-- Content area -->
        <div class="content">



          <!-- Advanced login -->         
          <form action="login_act.php" method="post">
            <div class="panel panel-body login-form">
              <br/>
              <div class="text-center">
                <!-- <div class="icon-object border-warning-400 text-warning-400"><i class="icon-people"></i></div> -->
                <h5 class="content-group-lg">Login Form Mahasiswa<br/>Aplikasi Manajemen Tugas Skripsi<br/></h5>
              </div>
              

              <?php 

              if(isset($_GET['pesan'])){
                if($_GET['pesan'] == "gagal"){
                  echo "<div style='margin-bottom:-1px' class='alert alert-danger' role='alert'></span>  Login Gagal !! email dan Password Salah !!</div>";
                }elseif($_GET['pesan'] == "email"){
                  echo "<div style='margin-bottom:-1px' class='alert alert-danger' role='alert'></span>  Login Gagal !! email tidak boleh kosong !!</div>";
                }elseif($_GET['pesan'] == "password"){
                  echo "<div style='margin-bottom:-1px' class='alert alert-danger' role='alert'></span>  Login Gagal !! password tidak boleh kosong !!</div>";
                }elseif($_GET['pesan'] == "kosong"){
                  echo "<div style='margin-bottom:-1px' class='alert alert-danger' role='alert'></span>  Login Gagal !! email dan password tidak boleh kosong !!</div>";
                }
              }
               ?>
              <br/>
              <div class="form-group has-feedback has-feedback-left">
                <input type="text" class="form-control" placeholder="email" name="email" >
                <div class="form-control-feedback">
                  <i class="icon-user text-muted"></i>
                </div>
              </div>

              <div class="form-group has-feedback has-feedback-left">
                <input type="password" class="form-control" placeholder="Password" name="password">
                <div class="form-control-feedback">
                  <i class="icon-lock2 text-muted"></i>
                </div>
              </div>

              <div class="form-group">
                <button type="submit" class="btn bg-blue btn-block">Login <i class="icon-circle-right2 position-right"></i></button>
              </div>
              <br/>
              
            </div>
          </form>
          <!-- /advanced login -->

        </div>
        <!-- /content area -->

      </div>
      <!-- /main content -->

    </div>
    <!-- /page content -->

  </div>
  <!-- /page container -->

</body>
</html>
