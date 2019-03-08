<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

if($_POST)
{
  require '../config/database.php';

  try {
    $query = "UPDATE customers SET first_name=:first_name,last_name=:last_name,mobile=:mobile,address=:address WHERE customer_id=:id";
    $stmt = $con->prepare($query);
    $id=$_POST['id'];
    $first_name=$_POST['first_name'];
    $last_name=$_POST['last_name'];
    $mobile=$_POST['mobile'];
    $address=$_POST['address'];

    $stmt->bindParam(':first_name',$first_name);
    $stmt->bindParam(':last_name',$last_name);
    $stmt->bindParam(':mobile',$mobile);
    $stmt->bindParam(':address',$address);
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