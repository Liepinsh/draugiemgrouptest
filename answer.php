<?php

spl_autoload_register(function($class_name){
    include($class_name . '.php');
});

$answer = $_POST['data'];

class Answer extends Dbh {
    
    public function checkAnswer($answer){
        //query to check if the answer matches with the correct one
        $sql = "SELECT answer FROM ".$_GET['testa']." WHERE answer = '".$answer."'";
        $result = $this->connect()->query($sql);

        //query to get the testchange value from the last id in draugiem table
        $sql_2 = "SELECT testchange FROM draugiem WHERE id = (SELECT * FROM (SELECT MAX(id) from draugiem) as t)";
        $result_2 = $this->connect()->query($sql_2);
        $numRows2 = $result_2->num_rows;

        //compares if there was a testchange value in the DB
        if ($numRows2 > 0) {
            while ($row = $result_2->fetch_assoc()) {

                //if the string lenght value of the last testchange is bigger or equal than 7
                if (strlen($row['testchange']) >= 7){

                    //if user didnt picked an answer
                    if (strlen($answer) == 0 || empty($answer)){
                        header( "refresh:5;url=index2.php?test=" . $_GET['testa']); 
                        echo('Pick atleast one answer! You\'ll be redirected back in about 5 secs. If not, click <a href="index2.php?test=' . $_GET['testa'].'">here</a>.');
                    
                    //if the answer was correct
                    } else if (($result->num_rows) > 0){
                        $sql_3 = "UPDATE draugiem SET correct = correct +1 WHERE id = (SELECT * FROM (SELECT MAX(id) from draugiem) as t)";
                        $result_3 = $this->connect()->query($sql_3);
                        header('Location: index3.php');

                    //if answer was picked but answer was wrong
                    } else {
                        header('Location: index3.php');
                    }
                } else {

                    //if user didnt picked an answer
                    if (strlen($answer) == 0 || empty($answer)){
                        header( "refresh:5;url=index2.php?test=" . $_GET['testa']); 
                        echo('Pick atleast one answer! You\'ll be redirected back in about 5 secs. If not, click <a href="index2.php?test=' . $_GET['testa'].'">here</a>.');
                    
                    //if the answer was correct
                    } else if (($result->num_rows) > 0){
                        $sql = "UPDATE draugiem SET testchange = CONCAT(testchange, 'testchange'+1), correct = correct +1 WHERE id = (SELECT * FROM (SELECT MAX(id) from draugiem) as t)";
                        $result = $this->connect()->query($sql);

                        $sql_1 = "SELECT testchange FROM draugiem WHERE id = (SELECT * FROM (SELECT MAX(id) from draugiem) as t)";
                        $results_1 = $this->connect()->query($sql_1);
                        $numRows = $results_1->num_rows;

                        if ($numRows > 0) {
                            while ($row = $results_1->fetch_assoc()) {
                                header('Location: index2.php?test=' . $row['testchange']);
                            }
                        }
                        
                    ///if answer was picked but answer was wrong
                    }  else {
                        $sql = "UPDATE draugiem SET testchange = CONCAT(testchange, 'testchange'+1) WHERE id = (SELECT * FROM (SELECT MAX(id) from draugiem) as t)";
                        $result = $this->connect()->query($sql);

                        $sql_1 = "SELECT testchange FROM draugiem WHERE id = (SELECT * FROM (SELECT MAX(id) from draugiem) as t)";
                        $results_1 = $this->connect()->query($sql_1);
                        $numRows = $results_1->num_rows;

                        if ($numRows > 0) {
                            while ($row = $results_1->fetch_assoc()) {
                                header('Location: index2.php?test=' . $row['testchange']);
                            }
                        }
                    }
                }
            }
        }

        
    }
}
$answ = new Answer;
$answ->checkAnswer($answer);
