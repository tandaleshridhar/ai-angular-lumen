<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

if($_POST){
  require '../config/database.php';

  try {
    $first_name = $_POST['firstName'];
    $last_name = $_POST['lastName'];
    $mobile = $_POST['mobile'];
    $address = $_POST['address'];
    $village = $_POST['village'];    
    $taluka = $_POST['taluka'];    

    $query = "INSERT INTO customers(first_name,last_name,mobile,address,village,taluka) VALUES(:first_name,:last_name,:mobile,:address,:village,:taluka)";

    $stmt = $con->prepare($query);
    //$stmt = $con->exec($query);
   
    /*    
    $email = $_POST['email'];    
    $district = $_POST['district'];
    */
    $stmt->bindParam(':first_name',$first_name);
    $stmt->bindParam(':last_name',$last_name);
    $stmt->bindParam(':mobile',$mobile);
    $stmt->bindParam(':address',$address);
    $stmt->bindParam(':village',$village);
    $stmt->bindParam(':taluka',$taluka);   
    
    /*
    $stmt->bindParam(':email',$email);    
    $stmt->bindParam(':district',$district);
    */

    if($stmt->execute()){
       echo json_encode(array('result'=>'success'));       
    }else{
      //echo json_encode(array('result'=>'fail'));
      echo json_encode($stmt->errorInfo());
    }
  } catch (PDOException $e) {
    die('Error:-'.$e->getMessage());
  }
}