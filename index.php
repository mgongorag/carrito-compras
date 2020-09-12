<?php
require_once 'autoload.php';
require_once 'config/db.php';
require_once 'config/parameters.php';
require_once 'views/layout/header.php';

//conecction


if(isset($_GET['controller'])){
     $nombre_controllador = $_GET['controller'].'Controller';
}else{
     show_error();
     exit();
}

if(class_exists($nombre_controllador)){
     $controllador = new $nombre_controllador;

     if(isset($_GET['action']) && method_exists($controllador, $_GET['action'])){
          $action = $_GET['action'];
          $controllador->$action();
     }else{
          show_error();
          
     }
}else{
     show_error();

}

function show_error(){
     $error = new errorController();
     $error->index();
}
require_once 'views/layout/newsletter.php';
require_once 'views/layout/footer.php';

