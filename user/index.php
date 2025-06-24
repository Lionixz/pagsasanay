<?php
session_start();

if (!isset($_SESSION["user_id"])) {
    die("Access denied. Please log in.");
}

$userId = $_SESSION["user_id"];
?>

<!DOCTYPE html>
<html>

<head>
    <title>User Dashboard</title>
    <meta charset="UTF-8">
</head>

<body>

    <p>Your user ID is: <strong><?= htmlspecialchars($userId) ?></strong></p>

</body>

</html>