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
}else if ( ! empty( $_POST )) {
    if ( isset( $_POST['user_id'] ) && isset( $_POST['user_pass'] ) ) {
        // Getting submitted user data from database
        $stmt->bind_param('s', $_POST['user_id']);
        $stmt->execute();
        $result = $stmt->get_result();
    	$user = $result->fetch_object();  	
		// need to use hash
		$user_pass=$_POST['user_pass'];
		$user_pass=md5(md5("kjdfn".$user_pass."lkmgf"));	
    	//if ( password_verify( $_POST['user_pass'], $user->upassword ) ) {
		if ( $user_pass == $user->upassword ) {
    		$_SESSION['user_id'] = $user->uname;
			$_SESSION['uid'] = $user->uid;
    	}else{
			printf("Login failed. <a href='./login.php'> Click here</a> to go to the login page. %s\n", mysqli_connect_error());
			exit();
		}
    }
}

?>
<!DOCTYPE html>
<html>
<head>
<title>Welcome to Oingo</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body id="body_bg">

<div align="center">
<?php
	echo "Welcome, you have been logged in as <b>$user->uname</b>. ";
	echo "<a href='./map.php'>Map</a> / ";
	echo "<a href='./logout.php'>Logout</a><br>";
	$sql="SELECT * FROM user NATURAL JOIN filter NATURAL JOIN tag WHERE uname = '$user->uname'";
	$stmt = $select_db->prepare($sql);
	$stmt->execute();
	$result = $stmt->get_result();
	if ($result->num_rows > 0) {
			echo "<table><tr><th>fid</th><th>tagname</th><th>time</th><th>state</th></tr>";
			// output data of each row
			while($row = $result->fetch_assoc()) {
				echo 	"<tr>	
							<td>".$row["fid"]."</td>
							<td>".$row["tname"]."</td>
							<td>".$row["ftime"]."</td>
							<td>".$row["fcurrentstate"]."</td>
						</tr>";
			}
			echo "</table>";
	}else{
		echo "0 results found in filter.<br>";
	}
?>
</div>

<div align="center">
<h3>View Note</h3>
<form id="view_note_form" action = "view_note.php" method="POST">
<td><label for="longitude">longitude</label></td>
<td><input type="text" name="longitude" id="longitude"></td>
<td><label for="latitude">latitude</label></td>
<td><input type="text" name="latitude" id="latitude"></td>
<td><label for="filter">filter</label></td>
<?php
	$attributeName = 'fid';
	$pulldownName = 'filter';
	// Start the select widget
    print "\n<select name=\"{$pulldownName}\">";
	//print "\n\t<option value=\"null\">null</option>";
	$stmt = $select_db->prepare($sql);
	$stmt->execute();
	$result->free();
	$result = $stmt->get_result();
    while ($row = $result->fetch_assoc())
    {
       // Get the value for the attribute to be displayed
       $result_option = $row[$attributeName];
	   print "\n\t<option value=\"{$result_option}\">{$result_option}";
       print "</option>";
     }
     print "\n</select>";	
?><input type = "submit" value = "view note">
</form>
</div>

<div align="center">
<h3>Create Tag</h3>
<form id="create_tag_form" method="post" action="create_tag.php" >
        <table border="0.5" >
            <tr>
                <td><label for="tag">tag</label></td>
                <td><input type="text" name="tag" id="tag"></td>
            </tr>
			<tr>			
                <td><input type="submit" value="create tag" /></td>
			</tr>
        </table>
</form>
</div>

<div align="center">
<h3>Create Note</h3>
<form id="create_note_form" method="post" action="create_note.php" >
        <table border="0.5" >
            <tr>
                <td><label for="location">location</label></td>
                <td><input type="text" name="location" id="location"></td>
            </tr>
			<tr>
                <td><label for="radius">radius</label></td>
                <td><input type="text" name="radius" id="radius"></td>
            </tr>
			<tr>
                <td><label for="currentstate">state</label></td>
                <td><input type="text" name="currentstate" id="currentstate"></input></td>
            </tr>
			<tr>
                <td><label for="starttime">starttime</label></td>
                <td><input type="text" name="starttime" id="starttime"></input></td>
            </tr>
			<tr>
                <td><label for="endtime">endtime</label></td>
                <td><input type="text" name="endtime" id="endtime"></input></td>
            </tr>
			<tr>
                <td><label for="privacy">privacy</label></td>
                <td>
				<select name="privacy">
				<option value="me">me</option>
				<option value="friend">friend</option>
				<option value="everyone">everyone</option>
				</select>
				</td>
            </tr>
			<tr>
                <td><label for="description">description</label></td>
                <td><input type="text" name="description" id="description"></input></td>
            </tr>
            
			<?php
				$sql="SELECT * FROM tag";
				$stmt = $select_db->prepare($sql);
				$stmt->execute();
				$result = $stmt->get_result();
				if ($result->num_rows > 0) {
						echo "<td><select name=tag_list[] multiple=multiple id=tag_list[]>";
						while($row = $result->fetch_assoc()) {
							echo 	"<option value=".$row["tid"].">".$row["tname"]."</option>";
						}
						echo "</select></td>";
				}else{
					echo "0 tags";
				}
			?>
			<tr>			
                <td><input type="submit" value="create note" /></td>
			</tr>
        </table>
</form>
</div>

<div align="center">
<h3>Create Filter</h3>
<form id="create_filter_form" method="post" action="create_filter.php" >
        <table border="0.5" >
            <td><label for="tag">tag</label></td>
			<?php
				$sql="SELECT * FROM tag";
				$stmt = $select_db->prepare($sql);
				$stmt->execute();
				$result = $stmt->get_result();
				if ($result->num_rows > 0) {
						echo "<td><select name =tag>";
						while($row = $result->fetch_assoc()) {
							echo 	"<option value=".$row["tid"].">".$row["tname"]."</option>";
						}
						echo "</select></td>";
				}else{
					echo "0 tags";
				}
			?>
			<tr>
			<tr>
                <td><label for="time">time</label></td>
                <td><input type="text" name="time" id="time"></input></td>
            </tr>	
			<tr>
                <td><label for="state">state</label></td>
                <td><input type="text" name="state" id="state"></input></td>
            </tr>		
                <td><input type="submit" value="create filter" /></td>
			</tr>
        </table>
</form>
</div>

<div align="center">
<h3>Friendship</h3>
<form id="friendship_form" >
	<table border="0.5" >
		<?php
			$sql="Select uid, uname FROM user Where uid in (
					Select uid2
					From friendship
					Where uid1 = ?
					UNION
					Select uid1
					From friendship
					Where uid2 = ?
				 )";
			$stmt = $select_db->prepare($sql);
			$stmt->bind_param('ii', $user->uid, $user->uid);
			$stmt->execute();
			$result = $stmt->get_result();
			echo "<table><tr><th>name</th></tr>";
			while ($row = $result->fetch_assoc())
			{
			   print "\n\t<tr><td>{$row['uname']}";
			   print "</td></tr>";
			}
		?>
	</table>
</form>

<form id="add_friend_form" method="post" action="add_friend.php" >
	<table border="0.5" >
			<tr>
                <td><label>add new friend</label></td>
                <td><input type="text" name="add_friend_name" id="add_friend_name"></input></td>
            </tr>
			<tr>			
                <td><input type="submit" value="add friend" /></td>
			</tr>
	</table>
</form>
</div>

</body>
</html>