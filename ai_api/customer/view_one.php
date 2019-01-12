<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

$id = isset($_GET['id']) ? $_GET['id'] : die('Error: Record id not found.');

require '../config/database.php';

try {
  $query = "SELECT user_id,first_name,last_name,mobile,address FROM users WHERE user_id = ? LIMIT 0,1";
  $stmt = $con->prepare($query);
  $stmt->bindParam(1,$id);
  $stmt->execute();
  $row = $stmt->fetch(PDO::FETCH_ASSOC);
  $json = json_encode($row);
  echo $json;
} catch (PDOException $e) {
  die('Error:-'.$e->getMessage());
}