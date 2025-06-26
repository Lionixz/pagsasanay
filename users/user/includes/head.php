<?php
require_once __DIR__ . '/auth.php';  // Include your auth logic if necessary

$userId = $_SESSION['user_id'];  // Access the session variable
?>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo isset($title) ? $title : "Default Title"; ?></title>
    <link rel="stylesheet" href="/x/users/user/assets/css/index.css">
    <script type="text/javascript" src="/x/users/user/assets/js/index.js" defer></script>

</head>