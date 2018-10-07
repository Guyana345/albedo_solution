<?php
    class Product{

        //database connection and table name
        private $conn;
        private $table_name = "product_record";

        // object properties


        //cosntructor with $db as databse connection
        public function __construct($db){
            $this->conn = $db;
        }

        // read products
        function read(){
            // select all query
            $query = "
            SELECT Product_Record_ID, RepairDetail, dateRecievedFromCust AS Date_In, Department_name, Fname AS Customer_Name, RepairStatus 
            FROM". $this->table_name ."
            RIGHT JOIN Customer ON C_ID= Customer_ID
            RIGHT JOIN department_store ON D_ID = Department_ID
            WHERE Status=\"Incomplete\""; 
 
            // prepare query statement
            $stmt = $this->conn->prepare($query);
        
            // execute query
            $stmt->execute();
        
            return $stmt;
        }
?>