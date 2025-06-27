<?php
session_start();
$user = null;

if (isset($_SESSION["user_id"])) {
    $mysqli = require __DIR__ . "/config/database.php";

    $sql = "SELECT * FROM user WHERE id = ?";
    $stmt = $mysqli->prepare($sql);
    $stmt->bind_param("i", $_SESSION["user_id"]);
    $stmt->execute();
    $result = $stmt->get_result();
    $user = $result->fetch_assoc();
}
?>

<?php
header("Location: auth/login.php");
exit;
?>