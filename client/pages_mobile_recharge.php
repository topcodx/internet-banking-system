<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

session_start();
include('conf/config.php');
include('conf/checklogin.php');
check_login();
$client_id = $_SESSION['client_id'];

if (isset($_POST['pay_money'])) {
    
    $client_id = $_SESSION['client_id'];
    $_transcode = $_POST['transaction_code'];
    $type = $_POST['type'];
    $amount = $_POST['amount'];

    //Insert Captured information to a database table
    $query = "INSERT INTO `ib_recharges` (`client_id`, `transaction_code`, `type`, `amount`) VALUES ('$client_id', '$_transcode', '$type', '$amount')";

    $stmt = mysqli_query($mysqli, $query);

    if ($stmt) {
        $success = "Sent Successfully";
    } else {
        $err = "Please Try Again Or Try Later: " . mysqli_error($mysqli);
    }
}
?>
<!DOCTYPE html>
<html>
<!-- Log on to codeastro.com for more projects! -->
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<?php include("dist/_partials/head.php"); ?>

<body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed">
    <div class="wrapper">
        <!-- Navbar -->
        <?php include("dist/_partials/nav.php"); ?>
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        <?php include("dist/_partials/sidebar.php"); ?>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1>Recharge</h1>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="pages_dashboard.php">Dashboard</a></li>
                                <li class="breadcrumb-item"><a href="pages_add_staff.php">iBanking Staff</a></li>
                                <li class="breadcrumb-item active">Add</li>
                            </ol>
                        </div>
                    </div>
                </div><!-- /.container-fluid -->

            </section>
            <!-- Main content -->
            <!-- Main content -->

            <section class="content">
                <div class="container-fluid">
                    <div class="row">
                        <!-- left column -->
                        <div class="col-md-12">
                            <!-- general form elements -->
                            <div class="card card-purple">
                                <div class="card-header">
                                    <h3 class="card-title">Fill All Fields</h3>
                                </div>
                                <!-- form start -->
                                <form method="post" enctype="multipart/form-data" role="form">
                                    <div class="card-body">
                                        <!-- <div class="row">
                                            <div class=" col-md-6 form-group">
                                                <label for="exampleInputEmail1">Staff Name</label>
                                                <input type="text" name="name" required class="form-control" id="exampleInputEmail1">
                                            </div>
                                            <div class=" col-md-6 form-group">
                                                <label for="exampleInputPassword1">Staff Number</label>
                                                <?php
                                                //PHP function to generate random passenger number
                                                // $length = 4;
                                                // $_staffNumber =  substr(str_shuffle('0123456789'), 1, $length);
                                                ?>
										<input type="text" readonly name="staff_number"
											value="iBank-STAFF-<?php echo $_staffNumber; ?>" class="form-control"
											id="exampleInputPassword1">
							</div>
						</div> -->

                                        <div class="row">
                                            <div class=" col-md-6 form-group">
                                                <label for="exampleInputEmail1">Customer Id</label>
                                                <input type="text" name="id" readonly value="<?php echo $client_id ?>"
                                                    required class="form-control" id="exampleInputEmail1">
                                            </div>

                                            <div class=" col-md-6 form-group">
                                                <label for="exampleInputEmail1">Transaction Code</label>
                                                <?php
                                                    //PHP function to generate random account number
                                                    $length = 20;
                                                    $_transcode =  substr(str_shuffle('0123456789QWERgfdsazxcvbnTYUIOqwertyuioplkjhmPASDFGHJKLMNBVCXZ'), 1, $length);
                                                    ?>
                                                <input type="text" name="transaction_code" readonly
                                                    value="<?php echo $_transcode; ?>" required class="form-control"
                                                    id="transaction_code">
                                            </div>

                                            <div class="col-md-6 form-group">
                                                <label for="Recharge">Recharge On</label>
                                                <input type="text" class="form-control" name="type" id="type" value= "Mobile"
                                                    required>
                                            </div>

                                            <div class="col-md-6 form-group">
                                                <label for="Recharge">Amount</label>
                                                <input type="text" class="form-control" name="amount" id="amount"
                                                    required>
                                                <!-- Display an error message if the selection is not valid -->
                                                <div class="invalid-feedback">
                                                    invalid payment
                                                </div>
                                            </div>

                                        </div>

                                        <!-- <div class="row">
                                            <div class=" col-md-6 form-group">
                                                <label for="exampleInputEmail1">Staff Email</label>
                                                <input type="email" name="email" required class="form-control" id="exampleInputEmail1">
                                            </div>
                                            <div class=" col-md-6 form-group">
                                                <label for="exampleInputPassword1">Staff Password</label>
                                                <input type="password" name="password" required class="form-control" id="exampleInputEmail1">
                                            </div>
                                        </div> -->

                                        <!-- <div class="form-group">
                                            <label for="exampleInputFile">Staff Profile Picture</label>
                                            <div class="input-group">
                                                <div class="custom-file">
                                                    <input type="file" name="profile_pic" class="custom-file-input" id="exampleInputFile">
                                                    <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                                                </div>
                                                <div class="input-group-append">
                                                    <span class="input-group-text" id="">Upload</span>
                                                </div>
                                            </div>
                                        </div> -->
                                    </div>
                                    <!-- /.card-body -->
                                    <div class="card-footer">
                                        <button type="submit" name="pay_money" class="btn btn-success">Pay</button>
                                    </div>
                                </form>
                            </div>
                            <!-- /.card -->
                        </div><!-- /.container-fluid -->
            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->
        <?php include("dist/_partials/footer.php"); ?>

        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
        </aside>
        <!-- /.control-sidebar -->
    </div>
    <!-- ./wrapper -->

    <!-- jQuery -->
    <script src="plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- bs-custom-file-input -->
    <script src="plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
    <!-- Datatable -->
    <script src="plugins/datatables/jquery.dataTables.js"></script>
    <script src="plugins/datatables-bs4/js/dataTables.bootstrap4.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/adminlte.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js"></script>
    <script type="text/javascript">
    $(document).ready(function() {
        bsCustomFileInput.init();
    });
    </script>
    <!-- page script -->
    <script>
    $(function() {
        $("#example1").DataTable();
        $('#example2').DataTable({
            "paging": true,
            "lengthChange": false,
            "searching": false,
            "ordering": true,
            "info": true,
            "autoWidth": false,
        });
    });
    </script>
</body>

</html>