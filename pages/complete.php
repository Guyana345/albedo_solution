<?php 
    include './includes/index_head.php';
?>

<!-- DataTables CSS -->
<link href="../vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

<!-- DataTables Responsive CSS -->
<link href="../vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

<?php 
    include './includes/header.php';
    include './config/database.php';
?>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Completed Repairs</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">

                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Product Record ID</th>
                                        <th>Repair Detail</th>
                                        <th>Date Received</th>
                                        <th>Customer</th>
                                        <th>Department</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                        $queryString = "
                                            SELECT Product_Record_ID, RepairDetail, dateRecievedFromCust AS Date_In, Department_name, 
                                            Fname AS Customer_Name, RepairStatus 
                                            FROM product_record
                                            RIGHT JOIN Customer ON C_ID= Customer_ID
                                            RIGHT JOIN department_store ON D_ID = Department_ID
                                            Where RepairStatus=\"Completed\"
                                            ";
                                        $query = mysqli_query($conn, $queryString);

                                        $count = 1;
                                        while($result = mysqli_fetch_array($query)) {
                                            echo "<tr class='odd gradeX'>
                                                    <td>$count</td>
                                                    <td>".$result['Product_Record_ID']."</td>
                                                    <td>".$result['RepairDetail']."</td>
                                                    <td>".$result['Date_In']."</td>
                                                    <td>".$result['Customer_Name']."</td>
                                                    <td>".$result['Department_name']."</td>
                                                </tr>";
                                            
                                                $count++;
                                        }


                                    ?>
                                    
                                    
                                </tbody>
                            </table>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="../vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../vendor/metisMenu/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="../vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="../vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="../vendor/datatables-responsive/dataTables.responsive.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
    </script>

</body>

</html>
