<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

$id = isset($_GET['id']) ? $_GET['id'] : die('Error: Record id not found.');

require '../config/database.php';

try {
  $query = "SELECT id,semen_name,unit,initial_price FROM semen WHERE id = ? LIMIT 0,1";
  $stmt = $con->prepare($query);
  $stmt->bindParam(1,$id);
  $stmt->execute();
  $row = $stmt->fetch(PDO::FETCH_ASSOC);
  $json = json_encode($row);
  echo $json;
} catch (PDOException $e) {
  die('Error:-'.$e->getMessage());
}