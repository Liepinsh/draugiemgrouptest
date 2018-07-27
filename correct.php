<?php 

spl_autoload_register(function($class_name){
    include($class_name . '.php');
});

class Correct extends Dbh {
    
    public function correct() {
        //query to get the username and the correct answers from the last id in draugiem table
        $sql = "SELECT username, correct FROM draugiem WHERE id = (SELECT * FROM (SELECT MAX(id) from draugiem) as t)";
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
