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
<title>Note</title>
<link rel="stylesheet" type="text/css" href="style.css">
<style>
#note_form
{
	font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;
	width:100%;
	border-collapse:collapse;
}
#note_form td, #note_form th 
{
	font-size:1em;
	border:1px solid #98bf21;
	padding:3px 7px 2px 7px;
}
#note_form th 
{
	font-size:1.1em;
	text-align:left;
	padding-top:5px;
	padding-bottom:4px;
	background-color:#A7C942;
	color:#ffffff;
}
#note_form tr.alt td 
{
	color:#000000;
	background-color:#EAF2D3;
}
</style>
</head>
<body id="body_bg">

<div align="center">
<table id="note_form" >
	<tr>
		<th>nid</th><th>aid</th><th>aname</th><th>nradius</th><th>nstarttime</th><th>nendtime</th><th>privacy</th><th>ndescription</th>
	</tr>

	<?php
		//change row color
		$classname = 'alt';
		$count = "0";
		
		//echo $_POST['filter'];
		$attributeName = 'nid';
		$sql="SELECT distinct * FROM note n join notetag nt join filter f join area a
				where n.nid=nt.nid
				and nt.tid=f.tid
				and f.tid=nt.tid
				and n.aid=a.aid
				and f.fid=?
				and n.privacy='everyone'
				and TIMEDIFF(f.ftime, n.nstarttime ) >= 0
				and TIMEDIFF(f.ftime, n.nendtime ) <= 0
				and 111111 * DEGREES(ACOS(LEAST(COS(RADIANS(a.alatitude))
					 * COS(RADIANS(?))
					 * COS(RADIANS(a.alongitude -1*(?)))
					 + SIN(RADIANS(a.alatitude))
					 * SIN(RADIANS(?)), 1.0))) < n.nradius
				and (f.fcurrentstate=\"\" OR f.fcurrentstate=n.ncurrentstate)
				";
		$stmt = $select_db->prepare($sql);
		$stmt->bind_param('isss', $_POST['filter'],
					$_POST['latitude'],$_POST['longitude'],$_POST['latitude']);
		
							
		$stmt->execute();
		$result = $stmt->get_result();
		if ($result->num_rows > 0) {
			while ($row = $result->fetch_assoc())
			{
				if(($count%2) == 0){
				echo 	"<tr>	
							<td>".$row["nid"]."</td>
							<td>".$row["aid"]."</td>
							<td>".$row["aname"]."</td>
							<td>".$row["nradius"]."</td>
							<td>".$row["nstarttime"]."</td>
							<td>".$row["nendtime"]."</td>
							<td>".$row["privacy"]."</td>
							<td>".$row["ndescription"]."</td>
						</tr>";
					$count=$count + 1;	
				}
				else{
				echo 	"<tr class=".$classname.">	
							<td>".$row["nid"]."</td>
							<td>".$row["aid"]."</td>
							<td>".$row["aname"]."</td>
							<td>".$row["nradius"]."</td>
							<td>".$row["nstarttime"]."</td>
							<td>".$row["nendtime"]."</td>
							<td>".$row["privacy"]."</td>
							<td>".$row["ndescription"]."</td>
						</tr>";
					$count=$count + 1;
				}
			}
		}else{
		}
		
		//echo $_SESSION['user_id'];
		$attributeName2 = 'nid';
		$sql2="SELECT distinct * FROM note n join notetag nt join filter f join area a
				where n.nid=nt.nid
				and nt.tid=f.tid
				and f.tid=nt.tid
				and n.aid=a.aid
				and f.fid=?
				and n.privacy='me'
				and n.uid in (select uid from user where uname=?)
				and TIMEDIFF(f.ftime, n.nstarttime ) >= 0
				and TIMEDIFF(f.ftime, n.nendtime ) <= 0
				and 111111 * DEGREES(ACOS(LEAST(COS(RADIANS(a.alatitude))
					 * COS(RADIANS(?))
					 * COS(RADIANS(a.alongitude -1*(?)))
					 + SIN(RADIANS(a.alatitude))
					 * SIN(RADIANS(?)), 1.0))) < n.nradius
				 and (f.fcurrentstate=\"\" OR f.fcurrentstate=n.ncurrentstate)
				";
		$stmt2 = $select_db->prepare($sql2);
		$stmt2->bind_param('iisss', $_POST['filter'], $_SESSION['user_id'],
							$_POST['latitude'],$_POST['longitude'],$_POST['latitude']);
		$stmt2->execute();
		$result2 = $stmt2->get_result();
		if ($result2->num_rows > 0) {
			while ($row2 = $result2->fetch_assoc())
			{
				if(($count%2) == 0){
				echo 	"<tr>	
							<td>".$row2["nid"]."</td>
							<td>".$row2["aid"]."</td>
							<td>".$row2["aname"]."</td>
							<td>".$row2["nradius"]."</td>
							<td>".$row2["nstarttime"]."</td>
							<td>".$row2["nendtime"]."</td>
							<td>".$row2["privacy"]."</td>
							<td>".$row2["ndescription"]."</td>
						</tr>";
					$count=$count + 1;	
				}
				else{
				echo 	"<tr class=".$classname.">	
							<td>".$row2["nid"]."</td>
							<td>".$row2["aid"]."</td>
							<td>".$row2["aname"]."</td>
							<td>".$row2["nradius"]."</td>
							<td>".$row2["nstarttime"]."</td>
							<td>".$row2["nendtime"]."</td>
							<td>".$row2["privacy"]."</td>
							<td>".$row2["ndescription"]."</td>
						</tr>";
					$count=$count + 1;
				}
			}
		}else{
		}
		
		$attributeName3 = 'nid';
		$sql3="SELECT distinct * FROM note n join notetag nt join filter f join area a
				where n.nid=nt.nid
				and nt.tid=f.tid
				and f.tid=nt.tid
				and n.aid=a.aid
				and f.fid=?
				and n.privacy='friend'
				and (n.uid in (	Select uid FROM user Where uid in (
								Select uid2
								From friendship
								Where uid1 in (select uid from user where uname=?)
								UNION
								Select uid1
								From friendship
								Where uid2 in (select uid from user where uname=?)))
					 OR n.uid = ?
					) 								
				and TIMEDIFF(f.ftime, n.nstarttime ) >= 0
				and TIMEDIFF(f.ftime, n.nendtime ) <= 0
				and 111111 * DEGREES(ACOS(LEAST(COS(RADIANS(a.alatitude))
					 * COS(RADIANS(?))
					 * COS(RADIANS(a.alongitude -1*(?)))
					 + SIN(RADIANS(a.alatitude))
					 * SIN(RADIANS(?)), 1.0))) < n.nradius
				 and (f.fcurrentstate=\"\" OR f.fcurrentstate=n.ncurrentstate)
				";
		$stmt3 = $select_db->prepare($sql3);
		$stmt3->bind_param('iiiisss', $_POST['filter'], $_SESSION['user_id'], $_SESSION['user_id'],$_SESSION['uid'],
				$_POST['latitude'],$_POST['longitude'],$_POST['latitude']);
		$stmt3->execute();
		$result3 = $stmt3->get_result();
		if ($result3->num_rows > 0) {
			while ($row3 = $result3->fetch_assoc())
			{
				if(($count%2) == 0){
				echo 	"<tr>	
							<td>".$row3["nid"]."</td>
							<td>".$row3["aid"]."</td>
							<td>".$row3["aname"]."</td>
							<td>".$row3["nradius"]."</td>
							<td>".$row3["nstarttime"]."</td>
							<td>".$row3["nendtime"]."</td>
							<td>".$row3["privacy"]."</td>
							<td>".$row3["ndescription"]."</td>
						</tr>";
					$count=$count + 1;	
				}
				else{
				echo 	"<tr class=".$classname.">	
							<td>".$row3["nid"]."</td>
							<td>".$row3["aid"]."</td>
							<td>".$row3["aname"]."</td>
							<td>".$row3["nradius"]."</td>
							<td>".$row3["nstarttime"]."</td>
							<td>".$row3["nendtime"]."</td>
							<td>".$row3["privacy"]."</td>
							<td>".$row3["ndescription"]."</td>
						</tr>";
					$count=$count + 1;
				}
			}
		}else{
		}

		echo "<a href='./main.php'>Return</a>";
	?>
	
</table>
</div>

<div align="center">
<h3>Comment</h3>
<form id="comment_form" action = "comment.php" method="POST">
<td><label for="nid">nid</label></td>
<td><input type="text" name="nid" id="nid"></td>
<td><label for="comment">comment</label></td>
<td><input type="text" name="comment" id="comment"></td>
<input type = "submit" value = "comment">
</form>
</div>

</body>
</html>