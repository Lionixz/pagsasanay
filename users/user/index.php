<!DOCTYPE html>
<html lang="en">

<?php
include('includes/head.php');

// Include database configuration
include("../../config/database.php"); // Adjust the path as needed

$currentPage = basename($_SERVER['PHP_SELF']);
?>

<body>
    <?php include('includes/sidebar.php'); ?> <!-- Include sidebar.php for the sidebar -->
    <main>
        <div class="container">
            <?php
            // Check if user is logged in
            if (isset($_SESSION['user_id'])) {
                $user_id = $_SESSION['user_id'];

                // Query to fetch user data
                $sql = "SELECT id, name, email, role FROM `user` WHERE id = ?";
                $stmt = $mysqli->prepare($sql); // Use $mysqli instead of $conn
                $stmt->bind_param("i", $user_id);
                $stmt->execute();
                $result = $stmt->get_result();

                if ($result->num_rows > 0) {
                    // Fetch and display user data
                    $user = $result->fetch_assoc();
                    echo '<p>User ID: ' . $user['id'] . '</p>';
                    echo '<p>Name: ' . $user['name'] . '</p>';
                    echo '<p>Email: ' . $user['email'] . '</p>';
                    echo '<p>Role: ' . $user['role'] . '</p>';
                } else {
                    echo 'User data not found.';
                }

                // Close the prepared statement
                $stmt->close();
            } else {
                echo 'User not logged in.';
            }
            ?>
        </div>
    </main>

    <?php include('includes/footer.php'); ?> <!-- Include footer.php for the footer -->
</body>

</html>