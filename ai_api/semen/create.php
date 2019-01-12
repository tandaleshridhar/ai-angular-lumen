<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

if($_POST){
  require '../config/database.php';

  try {
    $query = "INSERT INTO semen SET admin_id=:admin_id, semen_name = :semen_name, unit = :unit, initial_price = :initial_price";
    $stmt = $con->prepare($query);

    $admin_id=$_POST['admin_id'];
    $semen_name = $_POST['semen_name'];
    $unit = $_POST['unit'];
    $initial_price = $_POST['initial_price'];

    $stmt->bindParam(':admin_id',$admin_id);
    $stmt->bindParam(':semen_name',$semen_name);
    $stmt->bindParam(':unit',$unit);
    $stmt->bindParam(':initial_price',$initial_price);

    if($stmt->execute()){
      echo json_encode(array('result'=>'success'));
    }else{
      echo json_encode(array('result'=>'fail'));
    }
  } catch (PDOException $e) {
    die('Error:-'.$e->getMessage());
  }
}