<?
include_once $_SERVER['DOCUMENT_ROOT'].'/models/cars.php';
$carsClass = new Cars();
$cars = $carsClass->get_all();
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<h1>Список машин</h1>

<?php foreach ($cars as $car):?>
<p><?php echo $car['name']?></p>
<?php endforeach;?>
</body>
</html>