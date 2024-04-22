<?php
session_start();
if (!isset($_SESSION["user"])) {
   header("Location: login.php");
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Ticket History - Railway Management System</title>
   <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
	<link rel="stylesheet" href="assets/css/owl.theme.default.css">
	<link rel="stylesheet" href="assets/css/meanmenu.min.css">
	<link rel="stylesheet" href="assets/css/aos.css">
	<link rel="stylesheet" href="assets/css/styles.css">
   <link rel="stylesheet" href="assets/css/header.css">
   
</head>
<body>
   <?php include 'header.php'; ?>
</body>
</html>