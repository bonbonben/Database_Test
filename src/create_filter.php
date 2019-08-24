<?php
	// Always start this first
	session_start();
	$select_db = new mysqli('localhost', 'root', '', 'dbproj1');
	if (mysqli_connect_errno()) {
		printf("Connect failed: %s\n", mysqli_connect_error());
		exit();
	}
	$stmt = $select_db->prepare("SELECT * FROM user WHERE uname = ?");
	if(isset($_SESSION['user_id'])){
		$stmt->bind_param('s', $_SESSION['user_id']);
		$stmt->execute();
		$result = $stmt->get_result();
		$user = $result->fetch_object();
	}
		
	$stmt = $select_db->prepare("
		INSERT INTO filter (`uid`,`tid`,`ftime`,`fcurrentstate`) 
		VALUES (?,?,?,?)
		");
	$stmt->bind_param('iiss', $_SESSION['uid'], $_POST['tag'], $_POST['time'],$_POST['state']);		
	$stmt->execute();
	$result = $stmt->get_result();
	
	header("Location: main.php");
?>