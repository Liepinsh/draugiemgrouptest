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
    <title>Draugiem</title>
    <link rel="stylesheet" type="text/css" media="screen" href="main.css"/>

</head>
<body>

<div class="container">
    <h1>Testa uzdevums</h1>

    <!-- post form with inputfield username and drop down menu for tests -->
    <form method="post" action="comparison.php">
        <div class="form">
            <input type="text" name="username" placeholder="Ievadi savu vārdu">
            <select id="test-dropdown" name="test">
                <option selected disabled hidden>Izvēlies testu</option>
                <option value="test1">Test1</option>
                <option value="test2">Test2</option>
                <option value="test3">Test3</option>
            </select>
            <input class="in-wi" type="submit" name="submit" value="Sākt">
        </div>
    </form>
</div>

</body>
</html>
