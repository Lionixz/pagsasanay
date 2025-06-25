<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup Successful</title>
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
            text-align: center;
        }

        .container {
            background-color: white;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        h1 {
            color: #4caf50;
            font-size: 32px;
            margin-bottom: 20px;
        }

        p {
            font-size: 16px;
            color: #5f6368;
            margin-bottom: 30px;
        }

        .btn {
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

        .btn:hover {
            background-color: #357ae8;
        }
    </style>
</head>

<body>

    <div class="container">
        <h1>Signup Successful</h1>
        <p>Signup successful. Please check your email to activate your account.</p>
        <a href="login.php">
            <button class="btn">Go to Login</button>
        </a>
    </div>

</body>

</html>