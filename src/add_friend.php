<?php
// Always start this first
session_start();
if(! isset($_SESSION['user_id'])){
	header("login.php");
}
$select_db = new mysqli('localhost', 'root', '', 'dbproj1');
if (mysqli_connect_errno()) {
	printf("Connect failed: %s\n", mysqli_connect_error());
	exit();
}
$stmt = $select_db->prepare("SELECT * FROM user WHERE uname = ?");
$stmt->bind_param('s', $_SESSION['user_id']);
$stmt->execute();
$result = $stmt->get_result();
$user = $result->fetch_object();

// add friend check
if ( ! empty( $_POST ) && isset($_POST['add_friend_name'])) {
        $stmt = $select_db->prepare("
		INSERT INTO friendship (uid1, uid2)
		SELECT u1.uid, u2.uid FROM user as u1 CROSS JOIN user as u2
		Where u1.uname = ? AND u2.uname = ?
		");
        $stmt->bind_param('ss', $user->uname, $_POST['add_friend_name']);
        $stmt->execute();
		header("Location: main.php");
		exit();
}else{
	echo "add friend failed";
}
?>