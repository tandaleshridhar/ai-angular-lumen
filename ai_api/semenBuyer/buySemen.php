<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

if($_POST){
  require '../config/database.php';

  try {
    $query = "INSERT INTO semen_buyer (semen_id, balance, price_per_item, total_amount, total_quantity, other_expenses) VALUES(:semen_id, :balance, :price_per_item, :total_amount, :total_quantity, :other_expenses)";
    $stmt = $con->prepare($query);

    $semenId = $_POST['id'];
    $balance = $_POST['balance'];
    $pricePerItem = $_POST['initialPrice'];
    $totalAmount = $_POST['totalCost'];
    $totalQuantity = $_POST['totalQuantity'];
    $otherExpenses = $_POST['otherExpenses'];

    $stmt->bindParam(':semen_id',$semenId);
    $stmt->bindParam(':balance',$balance);
    $stmt->bindParam(':price_per_item',$pricePerItem);
    $stmt->bindParam(':total_amount',$totalAmount);
    $stmt->bindParam(':total_quantity',$totalQuantity);
    $stmt->bindParam(':other_expenses',$otherExpenses);

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