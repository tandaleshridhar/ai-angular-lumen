<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

require '../config/database.php';

$query = "SELECT * FROM users ORDER BY user_id ASC";
$stmt = $con->prepare($query);
$stmt->execute();
$results = $stmt->fetchAll(PDO::FETCH_ASSOC);
$json = json_encode($results);
echo $json;


