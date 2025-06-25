<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup</title>
    <script src="../assets/js/validation.js" defer></script>

    <!-- Add Font Awesome CDN for eye icon -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>

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
        padding-top: 20px;
        padding-left: 40px;
        padding-right: 40px;
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
</style>

<body>

    <div class="container">
        <h1>Signup</h1>

        <form action="../actions/signup-process.php" method="post" id="signup" novalidate>
            <div>
                <label for="name">Name</label>
                <input type="text" id="name" name="name" required />
            </div>

            <div>
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required />
            </div>

            <div>
                <label for="password">Password</label>
                <div class="password-container">
                    <input type="password" id="password" name="password" required />
                    <i class="fa fa-eye-slash" id="togglePassword" style="cursor: pointer;"></i>
                </div>
            </div>

            <div>
                <label for="password_confirmation">Repeat Password</label>
                <div class="password-container">
                    <input type="password" id="password_confirmation" name="password_confirmation" required />
                    <i class="fa fa-eye-slash" id="togglePasswordConfirm" style="cursor: pointer;"></i>
                </div>
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