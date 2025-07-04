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

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="icon" href="images/fav.png" type="image/png">
	<title>Document</title>
</head>

<style>
	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
	}

	body {
		display: flex;
		justify-content: center;
		align-items: center;
		height: 100vh;
		background: #607d8b;
	}

	.container {
		position: relative;
		display: flex;
		flex-direction: column;
		align-items: center;
		/* Centers the mug horizontally */
	}

	.cup {
		position: relative;
		width: 280px;
		height: 300px;
		background: linear-gradient(to right, #f9f9f9, #d9d9d9);
		border-bottom-left-radius: 45%;
		border-bottom-right-radius: 45%;
	}

	.top {
		position: absolute;
		top: -30px;
		left: 0;
		width: 100%;
		height: 60px;
		background: linear-gradient(to right, #f9f9f9, #d9d9d9);
		border-radius: 50%;
	}

	.circle {
		position: absolute;
		top: 5px;
		left: 10px;
		width: calc(100% - 20px);
		height: 50px;
		background: linear-gradient(to left, #f9f9f9, #d9d9d9);
		border-radius: 50%;
		box-sizing: border-box;
		overflow: hidden;
	}

	.tea {
		position: absolute;
		top: 20px;
		left: 0;
		width: 100%;
		height: 100%;
		background: linear-gradient(#c57e65, #e28462);
		border-radius: 50%;
	}

	.handle {
		position: absolute;
		top: 30px;
		right: -70px;
		width: 160px;
		height: 180px;
		border: 25px solid #dcdcdc;
		border-left: 25px solid transparent;
		border-bottom: 25px solid transparent;
		border-radius: 50%;
		transform: rotate(42deg);
	}

	.plate {
		position: absolute;
		bottom: -50px;
		left: 50%;
		transform: translateX(-50%);
		width: 500px;
		height: 200px;
		background: linear-gradient(to right, #f9f9f9, #e7e7e7);
		border-radius: 50%;
		box-shadow: 0 35px 35px rgba(0, 0, 0, 0.2);
	}

	.plate::before {
		content: '';
		position: absolute;
		top: 10px;
		left: 10px;
		right: 10px;
		bottom: 10px;
		border-radius: 50%;
		background: linear-gradient(to right, #f9f9f9, #e7e7e7);
	}

	.plate::after {
		content: '';
		position: absolute;
		top: 30px;
		left: 30px;
		right: 30px;
		bottom: 30px;
		background: radial-gradient(rgba(0, 0, 0, 0.2) 25%, transparent, transparent);
		border-radius: 50%;
	}

	.vapour {
		position: relative;
		display: flex;
		z-index: 1;
		padding: 0 20px;
	}

	.vapour span {
		position: relative;
		bottom: 50px;
		display: block;
		margin: 0 2px 50px;
		min-width: 8px;
		height: 120px;
		background: #fff;
		border-radius: 50%;
		animation: animate 5s linear infinite;
		opacity: 0;
		filter: blur(8px);
		animation-delay: calc(var(--i) * -0.5s);
	}

	@keyframes animate {
		0% {
			transform: translateY(0) scaleX(1);
			opacity: 0;
		}

		15% {
			opacity: 1;
		}

		50% {
			transform: translateY(-150px) scaleX(5);
		}

		95% {
			opacity: 0;
		}

		100% {
			transform: translateY(-300px) scaleX(10);
		}
	}

	.mug {
		position: absolute;
		top: 30px;
		/* Adjusted to center vertically inside the cup */
		text-align: center;
		color: #2a2d34;
	}

	.mug form {
		margin-top: 20px;
		display: flex;
		flex-direction: column;
		align-items: center;
	}

	.mug label {
		margin-bottom: 5px;
	}

	.mug input {
		padding: 10px;
		margin-bottom: 10px;
		width: 250px;
		border-radius: 5px;
		border: 1px solid #ccc;
	}

	.mug button {
		padding: 10px 20px;
		border: none;
		background: #5e63ff;
		color: #fff;
		cursor: pointer;
		border-radius: 5px;
	}

	.mug .links {
		margin-top: 15px;
	}

	.mug img {
		margin-left: 50px;
		width: 200px;
		/* Adjust the size as needed */
		height: auto;
	}
</style>

<body>

	<div class="container">
		<div class="plate"></div>
		<div class="cup">
			<div class="top">
				<div class="vapour">
					<span style="--i:1;"></span>
					<span style="--i:3;"></span>
					<span style="--i:16;"></span>
					<span style="--i:5;"></span>
					<span style="--i:13;"></span>
					<span style="--i:20;"></span>
					<span style="--i:6;"></span>
					<span style="--i:7;"></span>
					<span style="--i:10;"></span>
					<span style="--i:8;"></span>
					<span style="--i:17;"></span>
					<span style="--i:11;"></span>
					<span style="--i:12;"></span>
					<span style="--i:14;"></span>
					<span style="--i:2;"></span>
					<span style="--i:9;"></span>
					<span style="--i:15;"></span>
					<span style="--i:4;"></span>
					<span style="--i:19;"></span>
				</div>
				<div class="circle">
					<div class="tea"></div>
				</div>
			</div>

			<div class="mug">
				<img src="images/cleanLogo.png" alt="Logo">
			</div>
			<div class="handle"></div>
		</div>
	</div>

	<!-- Redirect after 5 seconds using JavaScript -->
	<script type="text/javascript">
		setTimeout(function () {
			window.location.href = 'auth/login.php';
		}, 5000); // 5000 milliseconds = 5 seconds
	</script>
</body>

</html>