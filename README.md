Google app password
qwih fzjq pqqi jtip

php mailer
$mail->Host = "smtp.gmail.com";
$mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
$mail->Port = 587;
$mail->Username = "rodeldeleon199718@gmail.com";
$mail->Password = "qwih fzjq pqqi jtip";

activation account
update this for the real link to be use
$mail->Body = <<<END
Click <a href="http://localhost/x/activate-account.php?token=$activation_token">here</a>
to activate your account.
END;




/mvc-project
│
├── app/                       # Application-specific logic
│   ├── controllers/           # Controllers (handle requests)
│   │   └── HomeController.php
│   ├── models/                # Models (database logic)
│   │   └── User.php
│   └── views/                 # Views (HTML templates)
│       └── home.php
│
├── core/                      # Core framework logic (Router, Controller, DB)
│   ├── Router.php
│   ├── Controller.php
│   └── Database.php
│
├── config/                    # Configuration (database, routes, etc.)
│   └── config.php
│
├── public/                    # Public-facing files (document root)
│   ├── index.php              # Entry point
│   └── .htaccess              # Apache rewrite rules
│
├── vendor/                    # Composer-managed dependencies (generated)
│
├── composer.json              # Composer config (autoloading, dependencies)
├── composer.lock              # Locked versions (generated)
└── README.md