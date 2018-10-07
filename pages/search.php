<?php
    include './includes/index_head.php';
    include './includes/header.php';

?>


        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Product Search</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->

                <div>
                <table  width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                    <thead>
                        <tr>
                            <th>Product Code</th>
                            <th>Repair Detail</th>
                            <th>Repair Status</th>
                            <th>Start Date</th>
                            <th>Department Store</th>
                        </tr>
                    </thead>
                    <tbody>

                        <?php
                            $connection = mysqli_connect("localhost","tmakuyana","Guyana345@","masterrepair") or die("Error in Connection");
                            $strSearch=$_POST['txtSearch'];
                            $queryString="SELECT PR.P_code as \"Product Code\", P.Product_Detail AS \"Product Detail\", 
                                repairStatus as \"Repair Status\", PR.dateRecievedFromCust as \"Start Date\", DS.Department_name AS \"Department Store\" 
                            FROM product_record AS PR 
                            RIGHT JOIN Department_store AS DS ON PR.D_ID = DS.Department_ID
                            RIGHT JOIN Product as P ON PR.P_Code=P.Product_code
                            WHERE product_record_id LIKE '%".$strSearch."%'";

                            $query = mysqli_query($connection, $queryString);

                            while($result = mysqli_fetch_array($query)) {
                                echo "<tr class='odd gradeX'>
                                        <td>".$result['Product Code']."</td>
                                        <td>".$result['Product Detail']."</td>
                                        <td>".$result['Repair Status']."</td>
                                        <td>".$result['Start Date']."</td>
                                        <td>".$result['Department Store']."</td>
                                    </tr>";
                                
                                
                            }
                        ?>
                    </tbody>
                </table>
                    

                </div>

            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

<?php
    include './includes/footer.php';
?>
