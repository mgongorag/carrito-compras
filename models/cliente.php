<?php
class Cliente{
     private   $id_cliente,
               $nombres,
               $apellidos,
               $fecha_nacimiento,
               $email,
               $password,
               $ultima_sesion,
               $telefono,
               $telefono_alterno;

     public function getId_cliente(){
          return $this->id_cliente;
     }

     public function setId_cliente($id_cliente){
          $this->id_cliente = $id_cliente;
     }

     public function getnombres(){
          return $this->nombres;
     }

     public function setnombres($nombres){
          $this->nombres = $nombres;
     }

     public function getApellidos(){
          return $this->apellidos;
     }

     public function setApellidos($apellidos){
          $this->apellidos = $apellidos;
     }

     public function getFechaNacimiento(){
          return $this->fecha_nacimiento;
     }

     public function setFechaNacimiento($fecha_nacimiento){
          $this->$fecha_nacimiento;
     }
     
     public function getPassword(){
          return $this->password;
     }

     public function setPassword($password){
          $this->password = $password;
     }

     public function getEmail(){
          return $this->email;
     }

     public function setEmail($email){
          $this->email = $email;
     }

     public function getUltimaSession(){
          return $this->ultima_sesion;
     }
     public function setUltimaSession($ultima_sesion){
          $this->ultima_sesion = $ultima_sesion;
     }
     public function getTelefono(){
          return $this->telefono;
     }
     public function setTelefono($tel){
          $this->telefono = $tel;
     }
     public function getTelefonoAlterno(){    
          return $this->telefono_alterno;
     }
     public function setTelefonoAlterno($tel){
          $this->telefono_alterno = $tel;
     }

}