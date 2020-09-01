<?php

class Database{

     public static function connect(){
          $db = new mysqli('localhost:82', 'root', 'admin', 'guateshop');
          $db->query("SET NAMES 'utf8'");
          return $db;
     }
}