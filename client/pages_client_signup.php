<?php
session_start();
include('conf/config.php');
if (isset($_POST['create_account'])) {
  // Validate phone number
  $phone = $_POST['phone'];
  if (strlen($phone) != 10 || !is_numeric($phone)) {
      $err = "Phone number must be 10 digits numeric.";
  } else {
      // Validate password
      $password = $_POST['password'];
      if (strlen($password) > 6) {
          $err = "Password must not exceed 6 characters.";
      } else {
          // Register Client
          $name = $_POST['name'];
          $national_id = $_POST['national_id'];
          $client_number = $_POST['client_number'];
          $email = $_POST['email'];
          $password = sha1(md5($password)); // Update password encryption

          // Insert Captured information to a database table
          $query = "INSERT INTO ib_client (name, national_id, client_number, phone, email, password) VALUES (?, ?, ?, ?, ?, ?)";
          $stmt = $mysqli->prepare($query);
          // Bind parameters
          $stmt->bind_param('ssssss', $name, $national_id, $client_number, $phone, $email, $password);
          $stmt->execute();

          // Declare a variable which will be passed to alert function
          if ($stmt) {
              $success = "Account Created";
          } else {
              $err = "Please Try Again Or Try Later";
          }
      }
  }
}


/* Persisit System Settings On Brand */
$ret = "SELECT * FROM `ib_systemsettings` ";
$stmt = $mysqli->prepare($ret);
$stmt->execute(); //ok
$res = $stmt->get_result();
while ($auth = $res->fetch_object()) {
?>
  <!DOCTYPE html>
  <html><!-- Log on to codeastro.com for more projects! -->
  <meta http-equiv="content-type" content="text/html;charset=utf-8" />
  <?php include("dist/_partials/head.php"); ?>

  <body class="hold-transition login-page">
    <div class="login-box">
      <div class="login-logo">
        <p><?php echo $auth->sys_name; ?> - Sign Up</p>
      </div>
      <!-- /.login-logo -->
      <div class="card">
        <div class="card-body login-card-body">
          <p class="login-box-msg">Sign Up To Use Our IBanking System</p>

          <form method="post">
            <div class="input-group mb-3">
              <input type="text" name="name" required class="form-control" placeholder="Client Full Name">
              <div class="input-group-append">
                <div class="input-group-text">
                  <span class="fas fa-user"></span>
                </div>
              </div>
            </div>
            <div class="input-group mb-3">
              <input type="text" required name="national_id" class="form-control" placeholder="National ID Number">
              <div class="input-group-append">
                <div class="input-group-text">
                  <span class="fas fa-tag"></span>
                </div>
              </div>
            </div>
            <div class="input-group mb-3" style="display:none;">
              <?php
              //PHP function to generate random
              $length = 4;
              $_Number =  substr(str_shuffle('0123456789'), 1, $length); ?>
              <input type="text" name="client_number" value="iBank-CLIENT-<?php echo $_Number; ?>" class="form-control" placeholder="Client Number">
              <div class="input-group-append">
                <div class="input-group-text">
                  <span class="fas fa-envelope"></span>
                </div>
              </div>
            </div>
            <div class="input-group mb-3">
              <input type="text" name="phone" required class="form-control" placeholder="Client Phone Number">
              <div class="input-group-append">
                <div class="input-group-text">
                  <span class="fas fa-phone"></span>
                </div>
              </div>
            </div>
            <div class="input-group mb-3">
              <input type="text" name="address" required class="form-control" placeholder="Client Address">
              <div class="input-group-append">
                <div class="input-group-text">
                  <span class="fas fa-map-marker"></span>
                </div>
              </div>
            </div>
            <div class="input-group mb-3">
              <input type="email" name="email" required class="form-control" placeholder="Client Email Address">
              <div class="input-group-append">
                <div class="input-group-text">
                  <span class="fas fa-envelope"></span>
                </div>
              </div>
            </div><!-- Log on to codeastro.com for more projects! -->
            <div class="input-group mb-3">
              <input type="password" name="password" required class="form-control" placeholder="Password">
              <div class="input-group-append">
                <div class="input-group-text">
                  <span class="fas fa-lock"></span>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-8">
              </div>
              <!-- /.col -->
              <div class="col-4">
                <button type="submit" name="create_account" class="btn btn-success btn-block">Sign Up</button>
              </div>
              <!-- /.col -->
            </div>
          </form>

          <p class="mb-0">
            <a href="../index.php" class="text-center">Home</a>
          </p>

        </div>
        <!-- /.login-card-body -->
      </div>
    </div>
    <!-- /.login-box -->

    <!-- jQuery -->
    <script src="plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/adminlte.min.js"></script>

  </body>

  </html>
<?php
} ?>