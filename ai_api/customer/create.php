<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

if($_POST){
  require '../config/database.php';

  try {
    $query = "INSERT INTO customers SET first_name = :first_name, last_name = :last_name, mobile = :mobile, email = :email, address = :address, village = :village, taluka = :taluka, district = :district";

    $stmt = $con->prepare($query);

    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $mobile = $_POST['mobile'];
    $email = $_POST['email'];
    $address = $_POST['address'];
    $village = $_POST['village'];
    $taluka = $_POST['taluka'];
    $district = $_POST['district'];

    $stmt->bindParam(':first_name',$first_name);
    $stmt->bindParam(':last_name',$last_name);
    $stmt->bindParam(':mobile',$mobile);
    $stmt->bindParam(':email',$email);
    $stmt->bindParam(':address',$address);
    $stmt->bindParam(':village',$village);
    $stmt->bindParam(':taluka',$taluka);
    $stmt->bindParam(':district',$district);

    if($stmt->execute()){
      echo json_encode(array('result'=>'success'));
    }else{
      echo json_encode(array('result'=>'fail'));
    }
  } catch (PDOException $e) {
    die('Error:-'.$e->getMessage());
  }
}