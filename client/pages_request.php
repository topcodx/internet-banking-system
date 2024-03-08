<?php

session_start();
include('conf/config.php');
include('conf/checklogin.php');
check_login();
$client_id = $_SESSION['client_id'];
// check request_type  after insert
if (isset($_POST['submit_request'])) {

	$client_id = $_SESSION['client_id'];
	$request_type = $_POST['requestType'];

    $checkQuery = "SELECT * FROM `ib_requests` WHERE `client_id` = '$client_id' AND `request_type` = '$request_type'";
    $checkStmt = mysqli_query($mysqli, $checkQuery);

	if (mysqli_num_rows($checkStmt) > 0) {
		$err = "You have already made a request for this type.";
    } else {

    //Insert Captured information to a database table
    $query = "INSERT INTO `ib_requests` (`client_id`, `request_type`, `status`) VALUES ('$client_id', '$request_type', '0');";
	$stmt = mysqli_query($mysqli,$query);

    //declare a varible which will be passed to alert function
    if ($stmt) {
        $success = "Sent Successfully";

    } else {
        $err = "Please Try Again Or Try Later";
    }
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
							<h1>Request</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="pages_dashboard.php">Dashboard</a></li>
								<li class="breadcrumb-item active">Add request</li>
							</ol>
						</div>
					</div>
				</div><!-- /.container-fluid -->

			</section>
			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">Select on any action options to manage your staffs</h3>
							</div>
							<div class="card-body">
								<table id="example1" class="table table-hover table-bordered table-striped">
									<thead>
										<tr>
											<th>sr no</th>

											<th>Request type</th>
											<th>Status</th>
										</tr>
									</thead>
									<tbody>
										<?php
                    //fetch all iBank staffs
                    $ret = "SELECT * FROM  ib_requests Where client_id = '$client_id' ";
                    $stmt = $mysqli->prepare($ret);
                    $stmt->execute(); //ok
                    $res = $stmt->get_result();
                    $cnt = 1;
                    while ($row = $res->fetch_object()) {
                    ?>
										<tr>
											<td><?php echo $cnt; ?></td>
											<td><?php echo $row-> request_type; ?></td>
											<td>
												<?php
												if ($row->status == 1) {
													// If status is 1, display "Approved"
													echo '<a class="btn btn-success btn-sm" href="#">
															<i class="fas fa-check-circle"></i>
															Approved
														</a>';
												} else {
													// If status is not 1, display "Pending" with request_type and client_id
													echo '<a class="btn btn-warning btn-sm" href="#">
															<i class="fas fa-info-circle"></i>
															Pending 
														</a>';
												}
												?>
											</td>
										</tr>
										<?php $cnt = $cnt + 1;
                    } ?>
										</tfoot>
								</table>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</section>
			<!-- /.content -->

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


										<div class="row">
											<div class=" col-md-6 form-group">
												<label for="exampleInputEmail1">Customer Id</label>
												<input type="text" name="id" readonly value="<?php echo $client_id ?>"
													required class="form-control" id="exampleInputEmail1">
											</div>
											<div class="col-md-6 form-group">
												<label for="selectRequestType">Request Type</label>
												<select class="form-control" name="requestType" id="selectRequestType"
													required>
													<option value="" disabled selected>Select Type</option>
													<option value="Cheque Book">Cheque Book</option>
													<option value="ATM Card">ATM Card</option>
													<option value="Debit Card">Debit Card</option>
												</select>
												<!-- Display an error message if the selection is not valid -->
												<div class="invalid-feedback">
													Please select a valid request type.
												</div>
											</div>

										</div>

									</div>
									<!-- /.card-body -->
									<div class="card-footer">
										<button type="submit" name="submit_request" class="btn btn-success">Submit
											Request</button>
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

			$(".approve-btn").click(function() {
                var $row = $(this).closest('tr');
                var client_id = $(this).data('client-id');
                var request_type = $(this).data('request-type');

                $.ajax({
                    type: 'POST',
                    url: 'pages_request.php',
                    data: {
                        client_id: client_id,
                        request_type: request_type,
                        Approve: true
                    },
                    success: function(response) {
                        console.log(response);
                    },
                    error: function(error) {
                        console.error('Error:', error);
                    }
                });
            });
        });

       
    </script>

</body>

</html>
