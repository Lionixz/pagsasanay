<?php
session_start();
session_regenerate_id();
$error_message = ''; // Variable to hold error message
$success_message = ''; // Initialize success_message variable

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $mysqli = require __DIR__ . "/../config/database.php";
    $email = $_POST["email"] ?? '';
    $password = $_POST["password"] ?? '';

    $sql = "SELECT * FROM user WHERE email = ?";
    $stmt = $mysqli->prepare($sql);
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $result = $stmt->get_result();
    $user = $result->fetch_assoc();

    if (!$user) {
        $error_message = "User not found"; // User not found error
    } elseif ($user["account_activation_hash"] !== null) {
        $error_message = "Account not activated. Check your email."; // Account not activated
    } elseif (!password_verify($password, $user["password_hash"])) {
        $error_message = "Invalid password. Please try again."; // Incorrect password
    } else {
        $_SESSION["user_id"] = $user["id"];
        $currentSessionId = session_id();
        $update_sql = "UPDATE user SET session_token = ? WHERE id = ?";
        $update_stmt = $mysqli->prepare($update_sql);
        $update_stmt->bind_param("si", $currentSessionId, $user["id"]);
        $update_stmt->execute();

        if ($user["role"] === "admin") {
            header("Location: ../admin/index.php");
        } elseif ($user["role"] === "user") {
            header("Location: ../users/user/index.php");
        } else {
            header("Location: ../index.php");
        }
        exit; // Ensures no further code is executed
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../images/fav.png" type="image/png">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../assets/css/login.css">
    <script type="text/javascript" src="../assets/js/login.js" defer></script>
</head>

<body>
    <div class="container">
        <h1>Login</h1>

        <!-- Display error message if login fails -->
        <?php if ($error_message): ?>
            <p class="error-message"><?= htmlspecialchars($error_message) ?></p>
        <?php endif; ?>

        <form method="post" id="loginForm">
            <label for="email">Email</label>
            <input type="email" name="email" id="email" value="<?= htmlspecialchars($_POST["email"] ?? "") ?>" required>

            <label for="password">Password</label>
            <div class="password-container">
                <input type="password" name="password" id="password" required>
                <i class="fa fa-eye-slash" id="togglePassword" style="cursor: pointer;"></i>
            </div>

            <button type="submit">Log in</button>
        </form>

        <p class="links">
            <a href="forgot_password.php">Forgot password?</a> |
            <a href="signup.php">Sign up</a>
        </p>
    </div>
</body>

</html>