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
                    <h1 class="page-header">Insert New Repair</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">

                        <?php
                            if(isset($_POST['save'])) {
                                $Product_Record_ID = $_POST["Product_Record_ID"];
                                $P_Code = $_POST["P_Code"];
                                $C_ID = $_POST["C_ID"];
                                $D_ID = $_POST["D_ID"];
                                $Date_of_purchase = $_POST["Date_of_purchase"];
                                $dateRecievedFromCust = $_POST["dateRecievedFromCust"];
                                $warranty_ID = $_POST["warranty_ID"];
                                $repairSite_siteID = $_POST["repairSite_siteID"];
                                $RepairStatus = $_POST["RepairStatus"];
                                $RepairDetail = $_POST["RepairDetail"];


                                $sql = "INSERT INTO product_record(
                                    Product_Record_ID,P_Code,C_ID,D_ID,Date_of_purchase,
                                    dateRecievedFromCust,warranty_ID,
                                    repairSite_siteID,RepairStatus,RepairDetail)
                                    VALUES(
                                        '".$Product_Record_ID."','".$P_Code."','".$C_ID."',
                                        '".$D_ID."','".$Date_of_purchase."','".$dateRecievedFromCust."',
                                        '".$warranty_ID."','".$repairSite_siteID."','".$RepairStatus."','".$RepairDetail."'
                                        )";
                                $result = mysqli_query($conn, $sql);

                            }
                        ?>


                        <div class="container"  style=" margin-top: 70px;">
                            <form class="form-horizontal" action="insert.php" method="POST">
                                <div class="form-group">
                                    <label for="Product_Record_ID" class="col-sm-2 control-label">Receipt Number</label>
                                    <div class="col-sm-10">
                                    <input type="text" class="form-control" id="Product_Record_ID" placeholder="Receipt" name="Product_Record_ID" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="P_Code" class="col-sm-2 control-label">Product Code</label>
                                    <div class="col-sm-10">
                                    <input type="text" class="form-control" id="P_Code" placeholder="Product Code" name="P_Code" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="C_ID" class="col-sm-2 control-label">Customer Number</label>
                                    <div class="col-sm-10">
                                    <input type="text" class="form-control" id="C_ID" placeholder="Customer Number" name="C_ID" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="D_ID" class="col-sm-2 control-label">Department</label>
                                    <div class="col-sm-10">
                                    <input type="text" class="form-control" id="D_ID" placeholder="Department" name="D_ID" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="Date_of_purchase" class="col-sm-2 control-label">Date of Purchase</label>
                                    <div class="col-sm-10">
                                    <input type="date" class="form-control" id="Date_of_purchase" placeholder="Date of Purchase" name="Date_of_purchase" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="dateRecievedFromCust" class="col-sm-2 control-label">Date Recieved From Customer</label>
                                    <div class="col-sm-10">
                                    <input type="date" class="form-control" id="dateRecievedFromCust" placeholder="Date Received" name="dateRecievedFromCust" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="warranty_ID" class="col-sm-2 control-label">Warranty Number</label>
                                    <div class="col-sm-10">
                                    <input type="text" class="form-control" id="dateRecievedFromCust" placeholder="Warranty" name="warranty_ID" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="repairSite_siteID" class="col-sm-2 control-label">Repair Site</label>
                                    <div class="col-sm-10">
                                    <input type="text" class="form-control" id="dateRecievedFromCust" placeholder="Repair Site" name="repairSite_siteID" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="RepairStatus" class="col-sm-2 control-label">Repair Status</label>
                                    <div class="col-sm-10">
                                    <input type="text" class="form-control" id="dateRecievedFromCust" placeholder="Status" name="RepairStatus" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="RepairDetail" class="col-sm-2 control-label">Repair Details</label>
                                    <div class="col-sm-10">
                                    <input type="text" class="form-control" id="dateRecievedFromCust" placeholder="Repair Details" name="RepairDetail" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-default" name="save">Add</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>


            <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


<?php include './includes/footer.php'; ?>