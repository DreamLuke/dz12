<?
$id = $_GET['id'] ?? '';

$cityData = ['id'=> '', 'name' => '', 'post_index'=>''];

if(!empty($id))
{
    include_once $_SERVER['DOCUMENT_ROOT'].'/models/cities.php';

    $citiesClass = new Cities();
    $result = $citiesClass->get_one(['id' => $id]);
    if($result){
        $cityData = $result;
    }
}

?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Добавление города</title>
</head>
<body>

<form action="/controllers/save.php?operator=addcity" method="post">
    <p>
        <label for="">Название города</label>
        <input type="text" name="name" value="<?php echo $cityData['name']?>">
    </p>
    <p>
        <label for="">Индекс</label>
        <input type="number" name="post_index"  value="<?php echo $cityData['post_index']?>">
    </p>
    <p>
        <input type="hidden" name="id" value="<?php echo $cityData['id']?>">
        <button>Сохранить</button>
    </p>
</form>

</body>
</html>