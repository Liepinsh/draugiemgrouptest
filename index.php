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
    <title>Draugiem</title>
</head>
<body>
    <h1>Testa uzdevums</h1>
    <form method="post" action="comparison.php">
        <input type="text" name="username" placeholder="Ievadi savu vārdu">
        <select id="test-dropdown" name="test">
            <option selected disabled hidden>Izvēlies testu</option>
            <option value="test1">Test1</option>
            <option value="test2">Test2</option>
            <option value="test3">Test3</option>
        </select>
        <input type="submit" name="submit" value="sākt">
    </form>
</body>
</html>
