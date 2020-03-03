<?php 
    require_once('conn/connect.php');
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

        <div class="center" id="logo">
            
            <img src="img/logo.png" width="400" alt="buscador" title="daniel"/>
            
        </div>

        <div class="form center">
            <form action="" method="POST" name="search-form" id="search_form">
            <input type="text" name="search" id="search">
            </form>
        </div>

        <div id="resultados"></div>

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