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
    <script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
    <script id="MathJax-script" async src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>
</head>

<style>
    /* Modal Styling */
    .modal {
        display: none;
        /* Hidden by default */
        position: fixed;
        /* Stay in place */
        z-index: 1;
        /* Sit on top */
        left: 0;
        top: 0;
        width: 100%;
        /* Full width */
        height: 100%;
        /* Full height */
        background-color: rgba(0, 0, 0, 0.4);
        /* Black with opacity */
        overflow: auto;
    }

    /* Modal Content */
    .modal-content {
        background-color: #fefefe;
        margin: 5% auto;
        padding: 20px;
        border: 1px solid #888;
        width: 80%;
        max-width: 50%;
    }

    /* Close Button */
    .close-btn {
        color: #aaa;
        float: right;
        font-size: 28px;
        font-weight: bold;
    }

    .close-btn:hover,
    .close-btn:focus {
        color: black;
        text-decoration: none;
        cursor: pointer;
    }

    p {
        font-size: 16px;
        color: #333;
        margin-top: 10px;
    }

    /* Modal Image Container */
    .image-container {
        text-align: center;
        /* Centers the image horizontally */
        margin-top: 20px;
    }

    .image-container img {
        width: 100%;
        /* Make the image responsive */
        max-width: 400px;
        /* Set a maximum width */
        border-radius: 8px;
        /* Optional: Adds rounded corners */
    }

    /* Button Container */
    .button-container {
        text-align: center;
        /* Center the button horizontally */
        margin-top: 20px;
    }

    /* Download button styling */
    .download-btn {
        display: inline-block;
        padding: 10px 20px;
        background-color: #ff6f61;
        color: white;
        font-size: 16px;
        border: none;
        border-radius: 5px;
        text-decoration: none;
        /* Remove underline */
        cursor: pointer;
        transition: background-color 0.3s;
    }

    .download-btn:hover {
        background-color: #e64a38;
        /* Darker red when hovered */
    }

    /* Mobile Styles */
    @media (max-width: 768px) {

        /* Adjust modal content width */
        .modal-content {
            width: 90%;
            /* Use 90% of the screen width */
            max-width: 90%;
            /* Allow it to expand on smaller screens */
        }

        /* Adjust image max-width */
        .image-container img {
            max-width: 100%;
            /* Allow the image to take full width */
        }

        /* Adjust font size */
        p {
            font-size: 14px;
            /* Slightly smaller font for mobile */
        }

        .download-btn {
            font-size: 14px;
            /* Smaller button text */
            padding: 8px 16px;
            /* Adjust padding */
        }
    }

    @media (max-width: 480px) {

        /* Further adjustments for very small screens */
        .modal-content {
            /* width: 95%; */
            /* Use 95% of the screen width */
            max-width: 95%;
        }

        .download-btn {
            font-size: 14px;
            padding: 8px 15px;
            /* Smaller padding for compact screens */
        }
    }
</style>


<!-- Modal Structure -->
<div id="myModal" class="modal">
    <div class="modal-content">
        <span class="close-btn" id="closeModalBtn">&times;</span>
        <h2>PAGSASANAY.com</h2>
        <p>Your donation helps make the website more reliable and supports its continued growth. Consider donating to
            help us improve!</p>
        <!-- Local Image -->
        <div class="image-container">
            <img src="../../images/gcash.jpg" alt="Donation Image">
        </div>
        <!-- Download Link -->
        <div class="button-container">
            <a href="../../images/gcash.jpg" download="gcash-image.jpg" class="download-btn">Download Image</a>
        </div>
    </div>
</div>