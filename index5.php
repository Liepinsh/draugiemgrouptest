<?php

spl_autoload_register(function($class_name){
        include $class_name . '.php';
});

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Draugiem5</title>
</head>
<body>
    <?php
        $correcto = new CorrectView();
        $correcto->showCorrect();
    ?>
    
</body>
</html>
