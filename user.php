<?php 

spl_autoload_register(function($class_name){
    include($class_name . '.php');
});

class User extends Dbh {
    
    public function insert($username, $test){
        if(!strlen($username) == 0 && !empty($test)){
            $sql = "INSERT INTO draugiem SET username = '".$username."', test = '".$test."', testchange = '".$test."'";
            $result = $this->connect()->query($sql);
            echo "Inserted";
        } else {
            echo "ERROR: Please insert username and select a test.";
        }
    }
}
$insert = new User;
$insert->insert($username, $test);
