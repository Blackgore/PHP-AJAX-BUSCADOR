<?php 
    require_once('../conn/connect.php');

    sleep(1);

    $search = '';
    if (isset($_POST['search'])){   //verificando si exite una variable en el input search 
        $search = $_POST['search']; // asignando una variable search
    }

    $query = "SELECT * FROM articulos WHERE articulo LIKE '%" .$search. "%' OR nombre LIKE '%" .$search. "%' ORDER BY visitas LIMIT 6 ";  // consulta mysql 
    $resultado = $connect -> query($query);                                                                                               // guardando los resultado en una variable 
    $fila = mysqli_fetch_assoc($resultado);
    $total = mysqli_num_rows($resultado);
    
?>

<?php if ($total > 0 && $search!='') { ?>
    <h2> Resultados de la búsqueda </h2>
    <?php do {?>
        <div class="articulo">
            <a href="articulo.php?id=<?php echo $fila['id']?>&search=<?php echo $search ?>">
                <span class="titulo"> <?php echo str_replace($search, '<strong>'.$search.'</strong>', $fila['nombre']) ?> </span> <br>
                <span class="contenido"> <?php echo str_replace($search, '<strong>'.$search.'</strong>', substr($fila['articulo'],0,150))?></span><br>
            </a>
        </div>
    <?php } while ($fila=mysqli_fetch_assoc($resultado)); ?>
<?php }
    elseif ($total > 0 && $search=='') {
        echo  '<h2>ingresa un parametro de busqueda</h2> <p>Ingresa palabras clave relacionadas con el tema de esta web</p>'; 
    }
    else{
        echo '<h2>No se han encontrado resultados</h2><p>Intenta realizar tu busqueda con palabras mas espesificas<p>';
    }
?>

