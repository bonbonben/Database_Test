<?php
session_start();
$select_db = new mysqli('localhost', 'root', '', 'dbproj1');
if ( isset( $_SESSION['user_id'] ) ) {
} else {
    header("login.php");
}
?>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"> 
<title>Map</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body id="body_bg">

<div align="center">
<h3>Search location</h3>
<form id="search_form" action = "map.php" method="POST">
<table border="0.5" >
	<tr>
		<td><label for="location">location</label></td>
		<td><input type="text" name="location" id="location"></td>
		<td><input type="submit" value="Locate" /></td>
	</tr>
</table>
</form>

<table id="view_location_form" >
	<tr>
		<th>location</th><th>longitude</th><th>latitude</th>
	</tr>

	<?php
		$sql="SELECT distinct(aname), alongitude, alatitude FROM area a
				where a.aname=?
				";
		$stmt = $select_db->prepare($sql);
		$stmt->bind_param('s', $_POST['location']);
		
		$stmt->execute();
		$result = $stmt->get_result();
		if ($result->num_rows > 0) {
			while ($row = $result->fetch_assoc())
			{
				echo 	"<tr>	
							<td>".$row["aname"]."</td>
							<td>".$row["alongitude"]."</td>
							<td>".$row["alatitude"]."</td>
						</tr>";
			}
		}else{
		}
	?>	
</table>

<iframe 
	width="600" 
	height="450" 
	frameborder="0" 
	style="border:0" 
	src="https://www.google.com/maps/embed/v1/place?key=AIzaSyBkychBgY-7yIpb7Ukt_dpStmKO7G9F6xI&q=NYU tandon school of engineering&language=en"
	async defer
	allowfullscreen>
</iframe>

<?php
	echo "<br>";
	echo "<a href='./main.php'>Return</a>";
?>

</div>
</body>
</html>