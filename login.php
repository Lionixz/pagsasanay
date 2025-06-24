<?php


$is_invalid = false;

if ($_SERVER["REQUEST_METHOD"] === "POST") {

    $mysqli = require __DIR__ . "/Database.php";

    $sql = sprintf(
        "SELECT * FROM user WHERE email = '%s'",
        $mysqli->real_escape_string($_POST["email"])
    );

    $result = $mysqli->query($sql);
    $user = $result->fetch_assoc();

    if ($user && $user["account_activation_hash"] === null) {
        if (password_verify($_POST["password"], $user["password_hash"])) {
            session_start();
            session_regenerate_id();
            $_SESSION["user_id"] = $user["id"];

            // Role-based redirection
            if ($user["role"] === "admin") {
                header("Location: admin/index.php");
                exit;
            } elseif ($user["role"] === "user") {
                header("Location: user/index.php");
                exit;
            } else {
                header("Location: index.php"); // fallback
                exit;
            }
        }
    }

    $is_invalid = true;
}
?>

?>
<!DOCTYPE html>
<html>

<head>
    <title>Login</title>
    <meta charset="UTF-8">
</head>

<body>

    <h1>Login</h1>

    <?php if ($is_invalid): ?>
        <em>Invalid login</em>
    <?php endif; ?>

    <form method="post">
        <label for="email">email</label>
        <input type="email" name="email" id="email" value="<?= htmlspecialchars($_POST["email"] ?? "") ?>">

        <label for="password">Password</label>
        <input type="password" name="password" id="password">

        <button>Log in</button>
    </form>

    <a href="forgot-password.php">Forgot password?</a>
    <a href="login.php">Log in</a>
    <a href="signup.php">sign up</a>

</body>

</html>