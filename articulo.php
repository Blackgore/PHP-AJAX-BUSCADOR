<?php 
    require_once('conn/connect.php');
?>

<?php 

    $search = '';
    if (isset($_GET['search'])){
        $search = $_GET['search'];
    }

    $id = '';
    if (isset($_GET['id'])){
        $id = $_GET['id'];
    }

    $query = "SELECT * FROM articulos WHERE id = ".$id."";
    $resultado = $connect -> query($query);
    $fila = mysqli_fetch_assoc($resultado);
    $total = mysqli_num_rows($resultado);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buscador AJAX y Jquery</title>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed&display=swap" rel="stylesheet">
    
</head>
<body>

    <div class="container">

        <div class="center">
            
            <img src="img/logo.png" width="400" alt="buscador" title="daniel"/>
            
        </div>

        <div class="form center">
            <a href="javascript:history.back(1);">Volver Atras</a>
        </div>

        <div id="resultados">
            <h1><?php echo $fila['nombre'] ?></h1>
            <p> <?php echo str_replace($search, '<strong>'.$search.'</strong>', $fila['articulo']) ?></p>
        </div>

        <div class="footer center">
            Copyright 2020 Reservado todo los derechos <br>
            <a href="#">Daniel Perez</a>
        </div>
    </div>
    <!----------------------------- script -------------------------------->
    <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="js/ajax.js"></script>

</body>
</html>