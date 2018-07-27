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
    <title>Draugiem2</title>
    <link rel="stylesheet" type="text/css" media="screen" href="main.css"/>

</head>
<body>

<div class="container">
    
    <!-- including questions by initiating testview.php file -->
    <?php 
        $products = new TestView();
        $products->showQuestion();
    ?>

    <!-- post form which submits checked answers -->
    <div id="next-btn">
        <form action="answer.php?testa=<?php echo $_GET['test']; ?>" method="post">
            <input type="hidden" id="data" name="data" value="">
            <input type="submit" value="Nākamais">
        </form>
    </div>
</div>

<script type="text/javascript" src="main.js"></script>

</body>
</html>
