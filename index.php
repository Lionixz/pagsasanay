<?php

session_start();

if (isset($_SESSION["user_id"])) {

    $mysqli = require __DIR__ . "/database.php";

    $sql = "SELECT * FROM user
            WHERE id = {$_SESSION["user_id"]}";

    $result = $mysqli->query($sql);

    $user = $result->fetch_assoc();
}

?>
<!DOCTYPE html>
<html>

<head>
    <title>Home</title>
    <meta charset="UTF-8">
</head>

<body>

    <h1>Landing</h1>

    <?php if (isset($user)): ?>

        <p>Hello <?= htmlspecialchars($user["name"]) ?></p>

        <p><a href="logout.php">Log out</a></p>

    <?php else: ?>

        <a href="forgot-password.php">Forgot password?</a><br>
        <a href="login.php">Log in</a><br>
        <a href="signup.php">Sign up</a>


    <?php endif; ?>

</body>

</html>