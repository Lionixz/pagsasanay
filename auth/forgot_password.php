<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
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
    </style>
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