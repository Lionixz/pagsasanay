<?php

if ($_SERVER["REQUEST_METHOD"] !== "POST") {
    exit("Invalid request method");
}

$token = trim($_POST["token"] ?? '');
$password = trim($_POST["password"] ?? '');
$password_confirmation = trim($_POST["password_confirmation"] ?? '');

if (empty($token)) {
    exit("Token is missing");
}

if (strlen($password) < 8) {
    exit("Password must be at least 8 characters");
}

if ($password !== $password_confirmation) {
    exit("Passwords do not match");
}

if (!preg_match("/[a-z]/i", $password)) {
    exit("Password must contain at least one letter");
}

if (!preg_match("/[0-9]/", $password)) {
    exit("Password must contain at least one number");
}

$token_hash = hash("sha256", $token);

$mysqli = require __DIR__ . "/../config/database.php";

$stmt = $mysqli->prepare("SELECT * FROM user WHERE reset_token_hash = ?");
$stmt->bind_param("s", $token_hash);
$stmt->execute();
$user = $stmt->get_result()->fetch_assoc();

if (!$user) {
    exit("Token not found or invalid");
}

if (strtotime($user["reset_token_expires_at"]) <= time()) {
    exit("Token has expired");
}

// Hash the new password
$new_password_hash = password_hash($password, PASSWORD_DEFAULT);

// Update password and clear token
$stmt = $mysqli->prepare("UPDATE user SET password_hash = ?, reset_token_hash = NULL, reset_token_expires_at = NULL WHERE id = ?");
$stmt->bind_param("si", $new_password_hash, $user["id"]);
$stmt->execute();

echo "Password reset successfully!";
