<?php
     class Conectar{
          private $HOST       = "localhost:82";
          private $USUARIO    = "root";
          private $PASSWORD   = "admin";
          private $TABLE      = "guateshop";

          public static function conexion(){
               $conexion = new mysqli("localhost", "root", "admin", "guateshop");
               $conexion->query("SET NAMES 'utf8'");
               return $conexion;
          }
     }

?>