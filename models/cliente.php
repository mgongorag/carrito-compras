<?php
class Cliente
{
     private   $id_cliente,
          $nombres,
          $apellidos,
          $birthday,
          $email,
          $password,
          $ultima_sesion,
          $telefono,
          $telefono_alterno,
          $db;

     public function __construct()
     {
          $this->db = Database::connect();
     }

     public function getId_cliente()
     {
          return $this->id_cliente;
     }

     public function setId_cliente($id_cliente)
     {
          $this->id_cliente = $this->db->real_escape_string($id_cliente);
     }

     public function getnombres()
     {
          return $this->nombres;
     }

     public function setnombres($nombres)
     {
          $this->nombres = $this->db->real_escape_string($nombres);
     }

     public function getApellidos()
     {
          return $this->apellidos;
     }

     public function setApellidos($apellidos)
     {
          $this->apellidos = $this->db->real_escape_string($apellidos);
     }

     public function getFechaNacimiento()
     {
          return $this->fecha_nacimiento;
     }

     public function setBirthday($birthday)
     {
          $this->birthday = $birthday;
     }

     public function getPassword()
     {
          return $this->password;
     }

     public function setPassword($password)
     {
          $this->password = password_hash($this->db->real_escape_string($password), PASSWORD_BCRYPT, ['cost' => 4]);
     }

     public function getEmail()
     {
          return $this->email;
     }

     public function setEmail($email)
     {
          $this->email = $this->db->real_escape_string($email);
     }

     public function getUltimaSession()
     {
          return $this->ultima_sesion;
     }

     public function setUltimaSession($ultima_sesion)
     {
          $this->ultima_sesion = $ultima_sesion;
     }

     public function getTelefono()
     {
          return $this->telefono;
     }

     public function setTelefono($tel)
     {
          $this->telefono = $this->db->real_escape_string($tel);
     }

     public function getTelefonoAlterno()
     {
          return $this->telefono_alterno;
     }
     public function setTelefonoAlterno($tel)
     {
          $this->telefono_alterno = $this->db->real_escape_string($tel);
     }

     public function save()
     {
          $stm = $this->db->prepare('call agregarCliente (?, ?, ?, ?, ?, ?, ?)');

          $stm->bind_param("sssssss", $this->nombres, $this->apellidos, $this->birthday, $this->email, $this->password, $this->telefono, $this->telefono_alterno);
          $array = array();
          if($stm->execute()){
               $result = $stm->get_result();
               if($stm->num_rows() > 0){
                    while($row = $result->fetch_object()){
                         $array[] = $row;
                    }
               }
          }
          return $array;
     }
}
