<?php 

spl_autoload_register(function($class_name){
    include($class_name . '.php');
});

$test = $_GET['test'];

class Test extends Dbh {
    
    public function getQuestion() {
        //query to get information from specific test
        $sql = "SELECT * FROM " . $_GET['test'];
        $results = $this->connect()->query($sql);
        $numRows = $results->num_rows;

        //if information is in the DB, then inserts the information in a empty array
        if ($numRows > 0) {
            while ($row = $results->fetch_assoc()) {
                $data[] = $row;
            }
            return $data;
        }
    }
}
