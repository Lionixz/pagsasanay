<?php
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
        die("Incorrect password");
    }

    session_start();
    session_regenerate_id();
    $_SESSION["user_id"] = $user["id"];

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
    <title>Login</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../assets/css/login.css">
    <script type="text/javascript" src="assets/js/login.js" defer></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
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
        }

        .container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        h1 {
            text-align: center;
            font-size: 24px;
            margin-bottom: 20px;
            color: #202124;
        }

        label {
            display: block;
            font-size: 14px;
            margin-bottom: 8px;
            color: #5f6368;
        }

        input {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            border: 1px solid #dcdfe1;
            border-radius: 4px;
            margin-bottom: 16px;
            box-sizing: border-box;
            outline: none;
        }

        input:focus {
            border-color: #4285f4;
        }

        .password-container {
            position: relative;
            width: 100%;
        }

        .password-container i {
            position: absolute;
            right: 10px;
            top: 40%;
            transform: translateY(-50%);
            color: #4285f4;
            font-size: 18px;
        }

        button {
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

        button:hover {
            background-color: #357ae8;
        }

        .links {
            text-align: center;
            font-size: 14px;
        }

        .links a {
            color: #4285f4;
            text-decoration: none;
        }

        .links a:hover {
            text-decoration: underline;
        }

        .error-message {
            color: #d93025;
            font-size: 14px;
            margin-bottom: 16px;
            text-align: center;
        }
    </style>
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