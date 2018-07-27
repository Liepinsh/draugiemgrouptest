<?php

spl_autoload_register(function($class_name){
    include($class_name . '.php');
});

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Draugiem3</title>
    <link rel="stylesheet" type="text/css" media="screen" href="main.css"/>

</head>
<body>

<div class="container">

    <!-- including username and correct answers by initiating correctview.php file -->
    <?php
        $correcto = new CorrectView();
        $correcto->showCorrect();
    ?>
    
</div>

</body>
</html>
