<?php

spl_autoload_register(function($class_name){
    include $class_name . '.php';
});

$answer2 = $_POST['data'];

class Answer2 extends Dbh {
    
    public function checkAnswer($answer2){
        $sql = "SELECT answer FROM test2 WHERE answer = '".$answer2."'";
        $result = $this->connect()->query($sql);

        //checks if user picked an answer
        if (strlen($answer2) == 0 || empty($answer2)){
            echo "pick atleast one answer";
            include('index3.php');
        //if answer is picked and answer is correct
        } else if (($result->num_rows) > 0){
            $sql = "UPDATE draugiem SET correct = correct + 1 WHERE id = (SELECT * FROM (SELECT MAX(id) from draugiem) as t)";
            $result = $this->connect()->query($sql);
            header('Location: index4.php');
        //if answer is picked but answer is wrong
        }  else {
            header('Location: index4.php');
        }
    }
}
$answ2 = new Answer2;
$answ2->checkAnswer($answer2);
