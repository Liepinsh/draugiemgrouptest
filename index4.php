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
    <title>Draugiem4</title>
    <link rel="stylesheet" type="text/css" media="screen" href="main.css"/>

</head>
<body>
    
    <?php 
        $products = new TestView3();
        $products->showQuestion();
    ?>

    <div>
    <!-- need file and post -->
        <form action="answer3.php" method="post">
            <input type="hidden" id="data" name="data" value="">
            <input type="submit" value="Nākamais">
        </form>
    </div>

<script type="text/javascript" src="main.js"></script>

</body>
</html>
