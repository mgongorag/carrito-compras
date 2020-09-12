<?php

class Database{

     public static function connect(){
          $db = new mysqli('localhost', 'root', 'admin', 'guateshop');
          $db->query("SET NAMES 'utf8'");
          return $db;
     }
}

     $db = Database::connect();
     
     $stm = "SELECT * FROM DEPARTAMENTOS";
     $result = mysqli_query($db, $stm);
     $array = array();
     if(mysqli_num_rows($result) != 0){
          while($row = mysqli_fetch_assoc($result)){
               $array[] = $row;
          }
     }
     echo $json_info = json_encode($array);