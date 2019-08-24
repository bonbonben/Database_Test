<?php
error_reporting (E_ALL ^ E_NOTICE);
session_start();
$user_id=$_SESSION['user_id'];
?>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Logout</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body id="body_bg">
<div align="center">
	<?php	
	if($user_id){
		session_destroy();
		echo "You have been logged out.<a href='./login.php'> Click here</a> to go to the login page.";
	}
	else
		echo "Please log in first";
	?>
</div>
</body>
</html>