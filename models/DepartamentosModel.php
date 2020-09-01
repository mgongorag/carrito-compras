<?php
     class DepartamentosModel{
          private $db;
          private $departamentos;

          public function __construct(){
               
               $this->db=Conectar::conexion();
               $this->departamentos =array();
           }
       

          public function getDepartamentos(){
               $stm = "CALL spobtenerdepartamentos;";
               $rs = mysqli_query($this->db, $stm);

               while($row = mysqli_fetch_row($rs)){
                    $this->departamentos[]=$row;
                }
                return $this->departamentos;  
          }
     }
?>