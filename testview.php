<?php 

spl_autoload_register(function($class_name){
    include($class_name . '.php');
});

class TestView extends Test {

    public function showQuestion() {
        $datas = $this->getQuestion();
        foreach ($datas as $data) {
            echo "<h1>" . $data['jautajums'] . "</h1>
            <div id='ck-button'>
                <label>
                    <input class='item-checkbox' type='checkbox' id='atbilde-1' name='".$data['atbilde1']."' value='" . $data['atbilde1'] . "'><span>".$data['atbilde1']."</span>
                </label>
            </div>
            <div id='ck-button'>
                <label>
                    <input class='item-checkbox' type='checkbox' id='atbilde-2' name='".$data['atbilde2']."' value='" . $data['atbilde2'] . "'><span>".$data['atbilde2']."</span>
                </label>
            </div>
            <div id='ck-button'>
                <label>
                    <input class='item-checkbox' type='checkbox' id='atbilde-3' name='".$data['atbilde3']."' value='" . $data['atbilde3'] . "'><span>".$data['atbilde3']."</span>
                </label>
            </div>
            <div id='ck-button'>
                <label>
                    <input class='item-checkbox' type='checkbox' id='atbilde-4' name='".$data['atbilde4']."' value='" . $data['atbilde4'] . "'><span>".$data['atbilde4']."</span>
                </label>
            </div>";
        }
    }
}
