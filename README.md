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
