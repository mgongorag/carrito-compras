<?php
class clienteController{

     public function index(){
          echo "controllador cliente, accion index";
     }

     public function registro(){
          require_once 'views/cliente/registro.php';
     }

     public function save(){
          if(isset($_POST)){
               var_dump($_POST);
          }
     }
     
}
