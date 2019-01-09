<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

if($_POST)
{
  require '../config/database.php';

  try {
    $query = "UPDATE semen SET semen_name=:semen_name,initial_price=:initial_price WHERE id=:id";
    $stmt = $con->prepare($query);
    $id=$_POST['id'];
    $semen_name=$_POST['semen_name'];
    $initial_price=$_POST['initial_price'];

    $stmt->bindParam(':semen_name',$semen_name);
    $stmt->bindParam(':initial_price',$initial_price);
    $stmt->bindParam(':id',$id);

    if($stmt->execute()){
      echo json_encode(array('result'=>'success'));
    }else{
      echo json_encode(array('result'=>'fail'));
    }
  } catch (PDOException $e) {
    die('Error:-'.$e->getMessage());
  }
}