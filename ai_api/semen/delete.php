<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

require '../config/database.php';

try {
  $id = isset($_GET['id']) ? $_GET['id'] : die('Error:Record id not found');
  $query = "DELETE FROM semen where id = ?";
  $stmt = $con->prepare($query);
  $stmt->bindParam(1,$id);

  if($stmt->execute()){
    echo json_encode(array('result'=>'success'));
  }else{
    echo json_encode(array('result'=>'fail'));
  }
} catch (PDOException $e) {
  die('Error:-'.$e->getMessage());
}