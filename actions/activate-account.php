<?php
if (!isset($_GET["token"])) {
    die("Invalid request: token missing.");
}

$token = $_GET["token"];
$token_hash = hash("sha256", $token);

// Include the database configuration
$mysqli = require __DIR__ . "/../config/database.php";

// Prepare and execute the query to check the token in the database
$sql = "SELECT * FROM user WHERE account_activation_hash = ?";
$stmt = $mysqli->prepare($sql);

if (!$stmt) {
    die("Database query preparation failed: " . $mysqli->error);
}

$stmt->bind_param("s", $token_hash);
$stmt->execute();
$result = $stmt->get_result();
$user = $result->fetch_assoc();

// If the user is not found, display an error
if (!$user) {
    die("Invalid or expired token.");
}

// Update the user to remove the account activation hash, marking the account as activated
$sql = "UPDATE user SET account_activation_hash = NULL WHERE id = ?";
$stmt = $mysqli->prepare($sql);

if (!$stmt) {
    die("Database query preparation failed: " . $mysqli->error);
}

$stmt->bind_param("i", $user["id"]);
$stmt->execute();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Activated</title>
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f1f3f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
        }

        .container {
            background-color: white;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        h1 {
            color: #4caf50;
            font-size: 32px;
            margin-bottom: 20px;
        }

        p {
            font-size: 16px;
            color: #5f6368;
            margin-bottom: 30px;
        }

        .btn {
            background-color: #4285f4;
            color: white;
            padding: 12px;
            width: 100%;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #357ae8;
        }
    </style>
</head>

<body>

    <div class="container">
        <h1>Account Activated</h1>
        <p>Your account has been successfully activated. You can now </p>
        <a href="../auth/login.php" class="btn">Go to Login</a>
    </div>


</body>

</html>