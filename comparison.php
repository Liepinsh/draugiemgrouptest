<?php

spl_autoload_register(function($class_name){
    include($class_name . '.php');
});

$username = !empty($_POST['username']) ? $_POST['username'] : '';
$test = !empty($_POST['test']) ? $_POST['test'] : '';

class Comparison extends Dbh {

    public function comp($username, $test){
        //query to check if the username and test already exist in the DB
        $sql = "SELECT username, test FROM draugiem WHERE username = '".$username."' AND test = '".$test."'";
        $result = $this->connect()->query($sql);

        //if username exists in DB and has already filled the test
        if (($result->num_rows) > 0){
            header( "refresh:5;url=index.php" ); 
            echo 'Username did this test already! You\'ll be redirected back in about 5 secs. If not, click <a href="index.php">here</a>.';

        //if username field and test is empty
        } else if(strlen($username) == 0 || empty($test)){
            header( "refresh:5;url=index.php" ); 
            echo 'Please enter Username and select a test! You\'ll be redirected back in about 5 secs. If not, click <a href="index.php">here</a>.';
            
        //if username is not in DB or he didnt fill selected test
        } else {
            include 'user.php';
            header('Location: index2.php?test=' . $test);
        }
    }
}
$compair = new Comparison;
$compair->comp($username, $test);
