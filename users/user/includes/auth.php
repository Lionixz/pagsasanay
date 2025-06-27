<?php
session_start();

if (!isset($_SESSION['user_id'])) {
    header("Location: ../../auth/login.php");
    exit;
}

$mysqli = require __DIR__ . "/../../../config/database.php";

$userId = $_SESSION['user_id'];
$currentSessionId = session_id();

// ✅ Use backticks or double-check field names
$sql = "SELECT session_token FROM user WHERE id = ?";
$stmt = $mysqli->prepare($sql);

if (!$stmt) {
    die("Prepare failed: " . $mysqli->error); // 🔍 Debug this line if needed
}

$stmt->bind_param("i", $userId);
$stmt->execute();
$result = $stmt->get_result();
$user = $result->fetch_assoc();

if (!$user || $user['session_token'] !== $currentSessionId) {
    session_unset();
    session_destroy();
    header("Location: ../../auth/login.php?forced_logout=1");
    exit;
}
