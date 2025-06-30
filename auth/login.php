<?php
session_start();
session_regenerate_id();
$is_invalid = false;

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
        die("User not found");
    }

    if ($user["account_activation_hash"] !== null) {
        die("Account not activated. Check your email.");
    }

    if (!password_verify($password, $user["password_hash"])) {
        $is_invalid = true;
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
        exit;
    }


    $_SESSION["user_id"] = $user["id"];
    $currentSessionId = session_id();
    // Store the current session ID in the database
    $sql = "UPDATE user SET session_token = ? WHERE id = ?";
    $stmt = $mysqli->prepare($sql);
    $stmt->bind_param("si", $currentSessionId, $user["id"]);
    $stmt->execute();

    if ($user["role"] === "admin") {
        header("Location: ../admin/index.php");
    } elseif ($user["role"] === "user") {
        header("Location: ../users/user/index.php");
    } else {
        header("Location: ../index.php");
    }
    exit;
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
    <script type="text/javascript" src="assets/js/login.js" defer></script>
</head>



<body>

    <div class="container">
        <h1>Login</h1>

        <?php if ($is_invalid): ?>
            <p class="error-message">Invalid login credentials</p>
        <?php endif; ?>

        <form method="post">
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

    <script>
        const togglePassword = document.getElementById('togglePassword');
        const passwordField = document.getElementById('password');

        togglePassword.addEventListener('click', function (e) {
            const type = passwordField.type === 'password' ? 'text' : 'password';
            passwordField.type = type;
            this.classList.toggle('fa-eye-slash');
            this.classList.toggle('fa-eye');
        });
    </script>

</body>

</html>