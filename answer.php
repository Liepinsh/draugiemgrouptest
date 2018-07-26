<?php

spl_autoload_register(function($class_name){
    include($class_name . '.php');
});

$answer = $_POST['data'];

class Answer extends Dbh {
    
    public function checkAnswer($answer){
        $sql = "SELECT answer FROM ".$_GET['testa']." WHERE answer = '".$answer."'";
        $result = $this->connect()->query($sql);

        //checks if user picked an answer
        if (strlen($answer) == 0 || empty($answer)){
            header( "refresh:5;url=index2.php?test=" . $_GET['testa']); 
            echo 'Pick atleast one answer! You\'ll be redirected back in about 5 secs. If not, click <a href="index.php">here</a>.';
        //if answer is picked and answer is correct
        } else if (($result->num_rows) > 0){
            $sql = "UPDATE draugiem SET correct = correct + 1 WHERE id = (SELECT * FROM (SELECT MAX(id) from draugiem) as t)";
            $result = $this->connect()->query($sql);
            header('Location: index3.php');
        //if answer is picked but answer is wrong
        }  else {
            header('Location: index3.php');
        }
    }
}
$answ = new Answer;
$answ->checkAnswer($answer);
