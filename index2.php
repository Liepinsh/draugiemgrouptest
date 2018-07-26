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
    
    <?php 
        $products = new TestView();
        $products->showQuestion();
    ?>

    <div id="next-btn">
    <!-- need file and post -->
        <form action="answer.php?testa=<?php echo $_GET['test']; ?>" method="post">
            <input type="hidden" id="data" name="data" value="">
            <input type="submit" value="Nākamais">
        </form>
    </div>


<!--
<br>
<br>
<br>
<br>


 <div class="container">
    <div class="question">
        <h1>Product List</h1>
    </div>
    <div class="answers">
        <div id='ck-button'>
            <label>
                <input class='item-checkbox' type='checkbox' id='atbilde-1' name='one' value='one'><span>one</span>
            </label>
        </div>
        <div id='ck-button'>
            <label>
                <input class='item-checkbox' type='checkbox' id='atbilde-1' name='one' value='one'><span>one</span>
            </label>
        </div>
        <div id='ck-button'>
            <label>
                <input class='item-checkbox' type='checkbox' id='atbilde-1' name='one' value='one'><span>one</span>
            </label>
        </div>
        <div id='ck-button'>
            <label>
                <input class='item-checkbox' type='checkbox' id='atbilde-1' name='one' value='one'><span>one</span>
            </label>
        </div>
    </div>
    <div class="next-btn">
        <input type="button" value="button">
    </div>
</div> -->


<script type="text/javascript" src="main.js"></script>

</body>
</html>
