<?php
require_once 'models/cliente.php';
class clienteController{

     public function index(){
          echo "controllador cliente, accion index";
     }

     public function registro(){
          require_once 'views/cliente/registro.php';
     }

     public function save(){
          if(isset($_POST)){
               $cliente = new Cliente();
               $cliente->setnombres($_POST['names']);
               $cliente->setApellidos($_POST['lastnames']);
               $cliente->setEmail($_POST['email']);
               $cliente->setBirthday($_POST['birthday']);
               $cliente->setPassword($_POST['password']);
               // $cliente->setPassword($_POST['password']);
               $cliente->setTelefono($_POST['tel']);
               $cliente->setTelefonoAlterno($_POST['tel2']);
               // print_r($cliente);

               var_dump($cliente->save());
               
               
               
          }

     }

   
     
}
