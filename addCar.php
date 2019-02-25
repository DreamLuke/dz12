<?
$id = $_GET['id'] ?? '';

$carData = ['id'=> '', 'name' => '', 'manufacture_year'=>'', 'city_id'=>''];

/*if(!empty($id))
{*/
    include_once $_SERVER['DOCUMENT_ROOT'].'/models/cars.php';

    $carsClass = new Cars();
    $cars = $carsClass->get_all();

    $result = $carsClass->get_one(['id' => $id]);
    if($result){
        $carsClass = $result;
    }
/*}*/

?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Добавление машины</title>
</head>
<body>

<h1>Добавить автомобиль</h1>
<form action="/controllers/save.php?operator=addcar" method="post">
    <!-- <p>
        <label for="id">id</label>
        <input type="number" name="id" id="id" value="<?php echo $carData['id']?>">
    </p> -->
    <p>
        <label for="">Название машины</label>
        <input type="text" name="name" value="<?php echo $carData['name']?>">
    </p>
    <p>
        <label for="">Год выпуска</label>
        <input type="number" name="manufacture_year" value="<?php echo $carData['manufacture_year']?>">
    </p>
    <p>
        <label for="">id города</label>
        <input type="number" name="city_id" value="<?php echo $carData['city_id']?>">
    </p>
    <p>
        <input type="hidden" name="id" value="<?php echo $carData['id']?>">
        <button>Сохранить</button>
    </p>
</form>

<h1>Список автомобилей</h1>
<?php foreach ($cars as $car):?>
<p><?php echo 'id = ' . $car['id'] . '; '?><?php echo 'name = ' . $car['name'] . '; '?> <?php echo 'год выпуска = ' . $car['manufacture_year']?>
    <a href="/edit.php?id=<?php echo $car['id']; ?>">Редакитровать </a>
</p>
<?php endforeach;?>

</body>
</html>