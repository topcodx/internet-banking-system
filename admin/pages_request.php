<?php

session_start();
include('conf/config.php');
include('conf/checklogin.php');
check_login();
$admin_id = $_SESSION['admin_id'];

if (isset($_POST['Approve'])) {
    $client_id = $_POST['client_id'];
    $request_type = $_POST['request_type'];

    // Update the ib_requests table
    $sql = "UPDATE `ib_requests` SET `status` = '1' WHERE `client_id` = '$client_id' AND `request_type` = '$request_type'";
    $result1 = mysqli_query($mysqli, $sql);

 if ($result1) {
        $info = "Request Approved";
        echo json_encode(array('status' => 1, 'message' => $info));
    } else {
        $err = "Failed to approve request";
        echo json_encode(array('status' => 0, 'message' => $err));
    }
} 
?>	

<!-- HTML -->
<!DOCTYPE html>
<html>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<?php include("dist/_partials/head.php"); ?>

<body class="hold-transition sidebar-mini">
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
                            <h1>Client Request</h1>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="pages_dashboard.php">Dashboard</a></li>
                                <li class="breadcrumb-item active">Manage Staffs</li>
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
                                <h3 class="card-title">Manage client request</h3>
                            </div>
                            <div class="card-body">
                                <table id="example1" class="table table-hover table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>Sno</th>
                                            <th>Name</th>
                                            <th>client ID</th>
                                            <th>Request type</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php

                                        // Query to select all clients

                                        $ret = "SELECT * FROM ib_clients";
                                        $result = mysqli_query($mysqli, $ret);

                                        if ($result) {
											$cnt = 1;

                                            while ($row = mysqli_fetch_assoc($result)) {
                                                $client_id = $row['client_id'];
                                                $client_name = $row['name'];

                                                $ret1 = "SELECT * FROM ib_requests WHERE client_id = ?";
                                                $stmt1 = $mysqli->prepare($ret1);

                                                if ($stmt1) {
                                                    $stmt1->bind_param("s", $client_id);
                                                    $stmt1->execute();
                                                    $res1 = $stmt1->get_result();

                                                    if ($res1->num_rows > 0) {
                                                        while ($row1 = $res1->fetch_object()) {
                                                            ?>
                                                            <tr>
                                                                <td><?php echo $cnt; ?></td>
                                                                <td><?php echo $client_name; ?></td>
                                                                <td><?php echo $client_id; ?> </td>
                                                                <?php
                                                                $request_type = property_exists($row1, 'request_type') ? htmlspecialchars($row1->request_type) : '';
                                                                ?>
                                                                <td><?php echo $request_type; ?></td>
																<td>
																<?php
																if ($row1->status == 1) {
																	// If status is 1, display "Approved"
																	echo '<a class="btn btn-success btn-sm" href="#">
																			<i class="fas fa-check-circle"></i>
																			Approved
																		</a>';
																} else {
																	// If status is not 1, display "Pending" with request_type and client_id
																	echo '<button class="btn btn-warning btn-sm approve-btn"
																					data-client-id="' . $client_id . '"
																					data-request-type="' . $row1->request_type . '"
																					name="Approve">
																					<i class="fas fa-info-circle"></i>
																					Pending
																				</button>';
																}
																?>
															</td>

                                                            </tr>
                                                            <?php
						         					  $cnt++;  
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        ?>
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
    <!-- DataTables -->
    <script src="plugins/datatables/jquery.dataTables.js"></script>
    <script src="plugins/datatables-bs4/js/dataTables.bootstrap4.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/adminlte.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js"></script>

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

           
		<script>
        $(document).ready(function() {
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
                        console.log("done");
						// alert(response);
						 
                    },
                    error: function(error) {
                        console.error('Error:', error);
                    }
                });
            });
        });

        $(document).ready(function){
            $()
        }
    </script>
</body>

</html>
