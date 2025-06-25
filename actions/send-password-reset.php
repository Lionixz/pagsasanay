<?php

if ($_SERVER["REQUEST_METHOD"] !== "POST") {
    die("Invalid request method");
}

$email = $_POST["email"] ?? '';

$token = bin2hex(random_bytes(16));
$token_hash = hash("sha256", $token);
$expiry = date("Y-m-d H:i:s", time() + 60 * 30); // 30 minutes from now

$mysqli = require __DIR__ . "/../config/database.php";

$sql = "UPDATE user SET reset_token_hash = ?, reset_token_expires_at = ? WHERE email = ?";
$stmt = $mysqli->prepare($sql);
$stmt->bind_param("sss", $token_hash, $expiry, $email);
$stmt->execute();

if ($mysqli->affected_rows) {
    $mail = require __DIR__ . "/../config/mailer.php";

    $mail->setFrom("noreply@example.com");
    $mail->addAddress($email);
    $mail->Subject = "Password Reset";

    $mail->Body = <<<END
Click <a href="http://localhost/x/auth/reset_password.php?token=$token">here</a> to reset your password.
END;

    try {
        $mail->send();
    } catch (Exception $e) {
        echo "Message could not be sent. Mailer error: {$mail->ErrorInfo}";
        exit;
    }
}

echo "If the email exists in our system, a reset link has been sent.";
