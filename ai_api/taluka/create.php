<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

if($_POST){
  require '../config/database.php';

  try {
    $query = "INSERT INTO taluka (district_id,name) VALUES(:district_id,:name)";
    $stmt = $con->prepare($query);

    $district_id = $_POST['district_id'];
    $name = $_POST['talukaName'];
    

    $stmt->bindParam(':name',$name);
    $stmt->bindParam(':district_id',$district_id);

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