<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

if($_POST){
  require '../config/database.php';

  try {
    $query = "INSERT INTO district (name) VALUES(:name)";
    $stmt = $con->prepare($query);

    $name = $_POST['districtName'];

    $stmt->bindParam(':name',$name);

    if($stmt->execute()){
      echo json_encode(array('result'=>'success'));
    }else{
      //echo json_encode($stmt->errorInfo());
      echo json_encode(array('result'=>'fail'));
    }
  } catch (PDOException $e) {
    die('Error:-'.$e->getMessage());
  }
}