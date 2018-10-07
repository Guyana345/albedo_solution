<?php
    include './includes/index_head.php';
    include './includes/header.php';
    include './config/database.php';
?>



        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Dashboard</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">

                                <div class="col-xs-3">
                                    <i class="fa fa-comments fa-5x"></i>
                                </div>
                                
                                <?php
                                    $queryString="SELECT 
                                    COUNT(RepairStatus) AS \"RepairStatus\"
                                    FROM product_record
                                    WHERE RepairStatus ='Completed'";

                                    $query = mysqli_query($conn, $queryString);
                                    $values = mysqli_fetch_assoc($query);
                                    $num_rows= $values['RepairStatus'];
                                    

                                    echo "<div class=\"col-xs-9 text-right\">";
                                    echo "<div class=\"huge\">".$num_rows."</div>";
                                    echo "<div>Complete!</div>";
                                    echo "</div>";

                                ?>
 
                                
                            </div>
                        </div>
                        <a href="complete.php">
                            <div class="panel-footer">
                                <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-tasks fa-5x"></i>
                                </div>

                                <?php
                                    $queryString="SELECT 
                                    COUNT(RepairStatus) AS \"RepairStatus\"
                                    FROM product_record
                                    WHERE RepairStatus ='Repair in Procecss'";

                                    $query = mysqli_query($conn, $queryString);
                                    $values = mysqli_fetch_assoc($query);
                                    $num_rows= $values['RepairStatus'];
                                    

                                    echo "<div class=\"col-xs-9 text-right\">";
                                    echo "<div class=\"huge\">".$num_rows."</div>";
                                    echo "<div>repair In Process!</div>";
                                    echo "</div>";

                                ?>
                            </div>
                        </div>
                        <a href="incomplete.php">
                            <div class="panel-footer">
                                <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-shopping-cart fa-5x"></i>
                                </div>
                                <?php
                                    $queryString="SELECT 
                                    COUNT(RepairStatus) AS \"RepairStatus\"
                                    FROM product_record
                                    WHERE RepairStatus ='Waiting for repair'";

                                    $query = mysqli_query($conn, $queryString);
                                    $values = mysqli_fetch_assoc($query);
                                    $num_rows= $values['RepairStatus'];
                                    

                                    echo "<div class=\"col-xs-9 text-right\">";
                                    echo "<div class=\"huge\">".$num_rows."</div>";
                                    echo "<div>Waiting For Repair!</div>";
                                    echo "</div>";

                                ?>
                            </div>
                        </div>
                        <a href="incomplete.php">
                            <div class="panel-footer">
                                <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-red">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-support fa-5x"></i>
                                </div>
                                <?php
                                    $queryString="SELECT count(*) as \"REDFLAG\" 
                                    FROM Product_record 
                                    WHERE datediff(moneyRecieved_date,dateRecievedFromCust)>30";

                                    $query = mysqli_query($conn, $queryString);
                                    $values = mysqli_fetch_assoc($query);
                                    $num_rows= $values['REDFLAG'];
                                    

                                    echo "<div class=\"col-xs-9 text-right\">";
                                    echo "<div class=\"huge\">".$num_rows."</div>";
                                    echo "<div>Waiting For Repair!</div>";
                                    echo "</div>";

                                ?>
                            </div>
                        </div>
                        <a href="incomplete.php">
                            <div class="panel-footer">
                                <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

<?php
    include './includes/footer.php';
?>
