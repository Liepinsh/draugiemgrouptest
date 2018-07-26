<?php 

spl_autoload_register(function($class_name){
    include $class_name . '.php';
});

class CorrectView extends Correct {

    public function showCorrect() {
        $datas = $this->correct();
        foreach ($datas as $data) {
            echo "<h1>Paldies, " .$data['username']. "</h1>
                <h2>Tu atbildēji pareizi uz " .$data['correct']. " no 3 jautājumiem";
        }
    }
}
