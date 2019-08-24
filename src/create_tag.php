<?php
	// Always start this first
	session_start();
	$select_db = new mysqli('localhost', 'root', '', 'dbproj1');
	if (mysqli_connect_errno()) {
		printf("Connect failed: %s\n", mysqli_connect_error());
		exit();
	}
		
	$stmt = $select_db->prepare("
		INSERT INTO tag (`tname`) 
		VALUES (?)
		");
	$stmt->bind_param('s', $_POST['tag']);		
	$stmt->execute();
	$result = $stmt->get_result();
	
	header("Location: main.php");
?>