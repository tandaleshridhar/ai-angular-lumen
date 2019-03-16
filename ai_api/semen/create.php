<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

if($_POST){
  require '../config/database.php';

  try {
    $query = "INSERT INTO semen (semen_name, initial_price) VALUES(:semen_name, :initial_price)";
    $stmt = $con->prepare($query);

    $semen_name = $_POST['semenName'];
    $initial_price = $_POST['initialPrice'];

    $stmt->bindParam(':semen_name',$semen_name);
    $stmt->bindParam(':initial_price',$initial_price);

    if($stmt->execute()){
      echo json_encode(array('result'=>'success'));
    }else{
      echo json_encode($stmt->errorInfo());
      //echo json_encode(array('result'=>'fail'));
    }
  } catch (PDOException $e) {
    die('Error:-'.$e->getMessage());
  }
}