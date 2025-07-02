<?php
// Initialize variables
$error_messages = [];
$success_message = "";

// Handle form submission
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $name = $_POST["name"] ?? '';
    $email = $_POST["email"] ?? '';
    $password = $_POST["password"] ?? '';
    $password_confirmation = $_POST["password_confirmation"] ?? '';

    // Validate Name
    if (empty($name)) {
        $error_messages[] = "Name is required";
    }

    // Validate Email
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $error_messages[] = "Valid email is required";
    }

    // Validate Password
    if (strlen($password) < 8) {
        $error_messages[] = "Password must be at least 8 characters";
    }

    if (!preg_match("/[a-z]/i", $password)) {
        $error_messages[] = "Password must contain at least one letter";
    }

    if (!preg_match("/[0-9]/", $password)) {
        $error_messages[] = "Password must contain at least one number";
    }

    // Validate Password Confirmation
    if ($password !== $password_confirmation) {
        $error_messages[] = "Passwords must match";
    }

    // If there are no errors, proceed to insert data into the database
    if (empty($error_messages)) {
        $password_hash = password_hash($password, PASSWORD_DEFAULT);
        $activation_token = bin2hex(random_bytes(16));
        $activation_token_hash = hash("sha256", $activation_token);

        // Connect to database
        $mysqli = require __DIR__ . "/../config/database.php";

        $sql = "INSERT INTO user (name, email, password_hash, account_activation_hash)
                VALUES (?, ?, ?, ?)";

        $stmt = $mysqli->stmt_init();

        if (!$stmt->prepare($sql)) {
            die("SQL error: " . $mysqli->error);
        }

        $stmt->bind_param(
            "ssss",
            $name,
            $email,
            $password_hash,
            $activation_token_hash
        );

        if ($stmt->execute()) {
            // Send activation email
            $mail = require __DIR__ . "/../config/mailer.php";

            $mail->setFrom("noreply@example.com");
            $mail->addAddress($email);
            $mail->Subject = "Activate Your Account";

            $mail->Body = <<<END
Click <a href="http://localhost/x/actions/activate-account.php?token=$activation_token">here</a> to activate your account.
END;

            try {
                $mail->send();
                $success_message = "Registration successful! Please check your email to activate your account.";
            } catch (Exception $e) {
                $error_messages[] = "Message could not be sent. Mailer error: {$mail->ErrorInfo}";
            }
        } else {
            if ($mysqli->errno === 1062) {
                $error_messages[] = "Email already taken";
            } else {
                $error_messages[] = "Error: " . $mysqli->error . " " . $mysqli->errno;
            }
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../images/fav.png" type="image/png">
    <title>Signup</title>
    <link rel="stylesheet" href="../assets/css/signup.css">
    <!-- Add Font Awesome CDN for eye icon -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

</head>

<body>

    <div class="container">

        <h1>Signup</h1>

        <?php if ($success_message): ?>
            <p class="success-message"><?= htmlspecialchars($success_message) ?></p>
        <?php endif; ?>

        <?php if (!empty($error_messages)): ?>
            <ul class="error-messages">
                <?php foreach ($error_messages as $message): ?>
                    <li><?= htmlspecialchars($message) ?></li>
                <?php endforeach; ?>
            </ul>
        <?php endif; ?>

        <form action="signup.php" method="post" id="signup" novalidate>
            <label for="name">Name</label>
            <input type="text" id="name" name="name" value="<?= htmlspecialchars($name ?? '') ?>" required />

            <label for="email">Email</label>
            <input type="email" id="email" name="email" value="<?= htmlspecialchars($email ?? '') ?>" required />

            <label for="password">Password</label>
            <div class="password-container">
                <input type="password" id="password" name="password" required />
                <i class="fa fa-eye-slash" id="togglePassword" style="cursor: pointer;"></i>
            </div>

            <label for="password_confirmation">Repeat Password</label>
            <div class="password-container">
                <input type="password" id="password_confirmation" name="password_confirmation" required />
                <i class="fa fa-eye-slash" id="togglePasswordConfirm" style="cursor: pointer;"></i>
            </div>

            <button type="submit">Sign up</button>
        </form>

        <p class="links">
            <a href="forgot_password.php">Forgot password?</a> |
            <a href="login.php">Log in</a>
        </p>
    </div>




    <script>
        const togglePassword = document.getElementById('togglePassword');
        const passwordField = document.getElementById('password');

        const togglePasswordConfirm = document.getElementById('togglePasswordConfirm');
        const passwordFieldConfirm = document.getElementById('password_confirmation');

        togglePassword.addEventListener('click', function () {
            const type = passwordField.type === 'password' ? 'text' : 'password';
            passwordField.type = type;
            this.classList.toggle('fa-eye-slash');
            this.classList.toggle('fa-eye');
        });

        togglePasswordConfirm.addEventListener('click', function () {
            const type = passwordFieldConfirm.type === 'password' ? 'text' : 'password';
            passwordFieldConfirm.type = type;
            this.classList.toggle('fa-eye-slash');
            this.classList.toggle('fa-eye');
        });
    </script>

</body>

</html>