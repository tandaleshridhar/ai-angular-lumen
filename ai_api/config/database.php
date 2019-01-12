<?php

   $host = "localhost";
   $db_name = "ai-php";
   $username = "root";
   $password = "asdf1234";
   
   try {
      $con = new PDO("mysql:host={$host};dbname={$db_name}", $username, $password);   
    } catch (PDOException $e) {
      echo "Connection Error: ".$e->getMessage();
    }

    