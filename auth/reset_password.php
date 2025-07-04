<?php
if (!isset($_GET["token"])) {
    die("Token not provided");
}
$token = $_GET["token"];
$token_hash = hash("sha256", $token);
$mysqli = require __DIR__ . "/../config/database.php";
$sql = "SELECT * FROM user WHERE reset_token_hash = ?";
$stmt = $mysqli->prepare($sql);
$stmt->bind_param("s", $token_hash);
$stmt->execute();
$result = $stmt->get_result();
$user = $result->fetch_assoc();
if (!$user) {
    die("Token not found");
}

if (strtotime($user["reset_token_expires_at"]) <= time()) {
    die("Token has expired");
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link rel="icon" href="../images/fav.png" type="image/png">
    <link rel="stylesheet" href="../assets/css/reset_password.css">
    <title>Reset Password</title>
</head>

<body>

    <div class="container">
        <h1>Reset Password</h1>
        <form method="post" action="../actions/process-reset-password.php" id="reset-password" novalidate>
            <input type="hidden" name="token" value="<?= htmlspecialchars($token) ?>">
            <div>
                <label for="password">New Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div>
                <label for="password_confirmation">Repeat Password</label>
                <input type="password" id="password_confirmation" name="password_confirmation" required>
            </div>
            <button type="submit">Send</button>
        </form>
    </div>

</body>

</html>