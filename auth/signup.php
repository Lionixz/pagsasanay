<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup</title>

    <link rel="stylesheet" href="../assets/css/signup.css">


    <!-- Add Font Awesome CDN for eye icon -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <script src="../assets/js/validation.js" defer></script>
</head>

<style>

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