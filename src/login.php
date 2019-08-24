<!DOCTYPE html >
<html>
<head>
	<title>User Login</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body id="body_bg">
<div align="center">

<h3>User Login</h3>
    <form id="login-form" method="post" action="main.php" >
        <table border="0.5" >
            <tr>
                <td><label for="user_id">Username</label></td>
                <td><input type="text" name="user_id" id="user_id"></td>
            </tr>
            <tr>
                <td><label for="user_pass">Password</label></td>
                <td><input type="password" name="user_pass" id="user_pass"></input></td>
            </tr>
            <tr>			
                <td><input type="submit" value="Login" /></td>
			</tr>		
        </table>
    </form>
</div>

<div align="center">
<h3>Register account</h3>	
	<form id="register-form" method="post" action="login.php" >
        <table border="0.5" >
            <tr>
                <td><label for="user_id">Username</label></td>
                <td><input type="text" name="user_id" id="user_id"></td>
            </tr>
            <tr>
                <td><label for="user_pass">Password</label></td>
                <td><input type="password" name="user_pass" id="user_pass"></input></td>
            </tr>
			<tr>
                <td><label for="user_email">Email</label></td>
                <td><input type="text" name="user_email" id="user_email"></input></td>
            </tr>
            <tr>
                <td><input type="submit" value="Register" /></td>
            </tr>
       </table>
    </form>

</div>
</body>
</html>
<?php
// Always start this first
if ( ! empty( $_POST ) ) {
    $select_db = new mysqli('localhost', 'root', '', 'dbproj1');
	if (mysqli_connect_errno()) {
		printf("Connect failed: %s\n", mysqli_connect_error());
		exit();
	}
		
	if($_POST['user_id']){
		if($_POST['user_pass']){
			// need to use hash
			$user_pass=$_POST['user_pass'];
			$user_pass=md5(md5("kjdfn".$user_pass."lkmgf"));

			$stmt = $select_db->prepare("INSERT INTO user (uname, uemail, upassword) VALUES (?,?,?)");
			$stmt->bind_param('sss', $_POST['user_id'],$_POST['user_email'],$user_pass);		
			$stmt->execute();
			$result = $stmt->get_result();
		}
		else
			printf("Please enter your password");	
	}
	else
		printf("Please enter your username");
}
?>