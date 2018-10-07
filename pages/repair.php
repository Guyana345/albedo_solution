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
                    <h1 class="page-header">Repair</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                         <a href="insert.php"><button type="button" class="btn btn-success"><i class="fa fa-plus"></i> Add New Repair </button></a>
                         <!-- Large modal -->
                        </div>

                        <div class="modal fade bs-example-modal-lg container" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content container">
                                <form>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Email address</label>
                                        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Password</label>
                                        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputFile">File input</label>
                                        <input type="file" id="exampleInputFile">
                                        <p class="help-block">Example block-level help text here.</p>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                        <input type="checkbox"> Check me out
                                        </label>
                                    </div>
                                    <button type="submit" class="btn btn-default">Submit</button>
                                </form>
                                </div>
                            </div>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table  width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Product Record ID</th>
                                        <th>Repair Detail</th>
                                        <th>Date Received</th>
                                        <th>Customer</th>
                                        <th>Department</th>
                                        <th>Repair Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                        $queryString = "
                                            SELECT Product_Record_ID, RepairDetail, dateRecievedFromCust AS Date_In, Department_name, 
                                            Fname AS Customer_Name, RepairStatus 
                                            FROM product_record
                                            RIGHT JOIN Customer ON C_ID= Customer_ID
                                            RIGHT JOIN department_store ON D_ID = Department_ID";
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
                                                    <td>".$result['RepairStatus']."</td>
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

                            <!-- Modal -->
                            <div class="modal fade" id="DescModal" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">�</button>
                 <h3 class="modal-title">Job Requirements & Description</h3>
 
            </div>
            <div class="modal-body">
                 <h5 class="text-center">Hello. Below is the descripton and/or requirements for hiring consideration.</h5>
 
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default " data-dismiss="modal">Apply!</button>
                <button type="button" class="btn btn-primary">Close</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
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
    <script type="text/javascript">
    $(document).ready(function() {
        
        var table = $('#dataTables-example').DataTable({
            responsive: true,
            
        });
     
     $('#dataTables-example tbody').on('click', 'tr', function () {
        var name = $('td', this).eq(1).text();
        $('#DescModal').modal("show");
     } );
        
    });

    </script>

</body>

</html>
