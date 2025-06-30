<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../images/fav.png" type="image/png">
    <title>Forgot Password</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../assets/css/forgot_password.css">
</head>

<body>

    <div class="container">
        <h1>Forgot Password</h1>

        <form method="post" action="../actions/send-password-reset.php">
            <label for="email">Email</label>
            <input type="email" name="email" id="email" required>

            <button type="submit">Send Reset Link</button>
        </form>

        <p class="links">
            <a href="login.php">Log in</a> |
            <a href="signup.php">Sign up</a>
        </p>
    </div>

</body>

</html>