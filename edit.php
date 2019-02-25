<form action="/controllers/save.php?operator=addcar&id=<?php echo $_GET['id']; ?>" method="post">
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