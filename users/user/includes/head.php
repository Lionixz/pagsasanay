<?php
require_once __DIR__ . '/auth.php';
$userId = $_SESSION['user_id'];
?>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../../images/fav.png" type="image/png">
    <title><?php echo isset($title) ? $title : "Default Title"; ?></title>
    <link rel="stylesheet" href="assets/css/index.css">
    <script src="assets/js/index.js" defer></script>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

</head>