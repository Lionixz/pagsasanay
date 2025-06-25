<?php

if (!isset($_GET["email"])) {
    http_response_code(400);
    echo json_encode(["error" => "Email parameter missing"]);
    exit;
}

$mysqli = require __DIR__ . "/../config/database.php";

$email = $mysqli->real_escape_string($_GET["email"]);

$sql = "SELECT * FROM user WHERE email = '$email'";
$result = $mysqli->query($sql);

$is_available = $result->num_rows === 0;

header("Content-Type: application/json");
echo json_encode(["available" => $is_available]);
