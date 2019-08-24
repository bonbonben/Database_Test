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
<link rel="stylesheet" type="text/css" href="style.css">
<title>Comment</title>
<style>
#comment_form
{
	font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;
	width:100%;
	border-collapse:collapse;
}
#comment_form td, #comment_form th 
{
	font-size:1em;
	border:1px solid #98bf21;
	padding:3px 7px 2px 7px;
}
#comment_form th 
{
	font-size:1.1em;
	text-align:left;
	padding-top:5px;
	padding-bottom:4px;
	background-color:#A7C942;
	color:#ffffff;
}
#comment_form tr.alt td 
{
	color:#000000;
	background-color:#EAF2D3;
}
</style>
</head>
<body id="body_bg">

<div align="center">
<?php	
	if($_POST['nid']){
		if($_POST['comment']){
			$stmt = $select_db->prepare("INSERT INTO comment (nid, uid, cdescription) VALUES (?,(select uid from user where uname = ?),?)");
			$stmt->bind_param('iss', $_POST['nid'], $_SESSION['user_id'],$_POST['comment']);		
			$stmt->execute();
		}
	}
	
	echo "<a href='./main.php'>Return</a>";
	
	
?>
</div>

<div align="center">
<table id="comment_form" >
	<tr>
		<th>nid</th><th>ndescription</th><th>uid</th><th>cdescription</th>
	</tr>

	<?php
		//change row color
		$classname = 'alt';
		$count = "0";
		
		$sql="SELECT * FROM note n join comment c
				where n.nid=c.nid
				and n.uid in (select uid from user where uname = ?)
				";
		$stmt1 = $select_db->prepare($sql);
		$stmt1->bind_param('s', $_SESSION['user_id']);
		$stmt1->execute();
		$result = $stmt1->get_result();
		if ($result->num_rows > 0) {
			while ($row = $result->fetch_assoc())
			{
				if(($count%2) == 0){
				echo 	"<tr>
							<td>".$row["nid"]."</td>
							<td>".$row["ndescription"]."</td>
							<td>".$row["uid"]."</td>
							<td>".$row["cdescription"]."</td>
						</tr>";
					$count=$count + 1;	
				}
				else{
				echo 	"<tr class=".$classname.">	
							<td>".$row["nid"]."</td>
							<td>".$row["ndescription"]."</td>
							<td>".$row["uid"]."</td>
							<td>".$row["cdescription"]."</td>
						</tr>";
					$count=$count + 1;
				}
			}
		}else{
		}
	?>
</table>
</div>

</body>
</html>