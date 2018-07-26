<?php

spl_autoload_register(function($class_name){
    include $class_name . '.php';
});

$answer3 = $_POST['data'];

class Answer3 extends Dbh {
    
    public function checkAnswer($answer3){
        $sql = "SELECT answer FROM test3 WHERE answer = '".$answer3."'";
        $result = $this->connect()->query($sql);

        //checks if user picked an answer
        if (strlen($answer3) == 0 || empty($answer3)){
            echo "pick atleast one answer";
            include('index4.php');
        //if answer is picked and answer is correct
        } else if (($result->num_rows) > 0){
            $sql = "UPDATE draugiem SET correct = correct + 1 WHERE id = (SELECT * FROM (SELECT MAX(id) from draugiem) as t)";
            $result = $this->connect()->query($sql);
            header('Location: index5.php');
        //if answer is picked but answer is wrong
        }  else {
            header('Location: index5.php');
        }
    }
}
$answ3 = new Answer3;
$answ3->checkAnswer($answer3);
