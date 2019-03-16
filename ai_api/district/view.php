<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

require '../config/database.php';

$query = "SELECT id,semen_name,unit,initial_price FROM semen ORDER BY id DESC";
$stmt = $con->prepare($query);
$stmt->execute();
$results = $stmt->fetchAll(PDO::FETCH_ASSOC);
$json = json_encode($results);
echo $json;