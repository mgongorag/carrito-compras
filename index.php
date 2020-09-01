<?php
require_once 'autoload.php';
require_once 'views/layout/header.php';
// require_once 'views/layout/section.php';

if(isset($_GET['controller'])){
     $nombre_controllador = $_GET['controller'].'Controller';
}else{
     echo("La pagina no existe");
     exit();
}

if(class_exists($nombre_controllador)){
     $controllador = new $nombre_controllador;

     if(isset($_GET['action']) && method_exists($controllador, $_GET['action'])){
          $action = $_GET['action'];
          $controllador->$action();
     }else{
          echo "La pagina que buscas no existe";
     }
}else{
     echo "La pagina que buscas no existe";
}

require_once 'views/layout/newsletter.php';
require_once 'views/layout/footer.php';

