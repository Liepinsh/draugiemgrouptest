<?php 

spl_autoload_register(function($class_name){
    include($class_name . '.php');
});

$test = $_GET['test'];

class Test extends Dbh {
    
    public function getQuestion() {
        $sql = "SELECT * FROM " . $_GET['test'];
        $results = $this->connect()->query($sql);
        $numRows = $results->num_rows;

        if ($numRows > 0) {
            while ($row = $results->fetch_assoc()) {
                $data[] = $row;
            }
            return $data;
        }
    }
}

// $sql = "SELECT test FROM draugiem WHERE test = (SELECT * FROM (SELECT MAX(test) from draugiem) as t)";
// $sql = "SELECT Country FROM Customers WHERE CustomerID = (SELECT * FROM (SELECT MAX(CustomerID) from Customers) as t)";
//         $result = $this->connect()->query($sql);
