<?php
// Always start this first
session_start();
if ( ! empty( $_POST ) ) {
    $select_db = new mysqli('localhost', 'root', '', 'dbproj1');
	if (mysqli_connect_errno()) {
		printf("Connect failed: %s\n", mysqli_connect_error());
		exit();
	}
	if(isset($_POST['location'])&&
	   isset($_POST['starttime'])&&isset($_POST['endtime'])&&isset($_POST['privacy'])&&isset($_POST['currentstate'])){
	    // find location aid
		$stmt = $select_db->prepare("
			Select aid From area Where aname = ?
			");
		$stmt->bind_param('s', $_POST['location']);		
		$stmt->execute();
		$result = $stmt->get_result();
		$result_aid = "";
		if ($result->num_rows > 0) {
			$row = $result->fetch_assoc();
			$result_aid=$row['aid'];
			echo $_SESSION['uid'];
			$stmt = $select_db->prepare("
			INSERT INTO note (`uid`,`aid`, `nradius`, `nstarttime`, `nendtime`, `privacy`, `ndescription`,`ncurrentstate`) 
			VALUES (?,?,?,?,?,?,?,?)
			");
			$stmt->bind_param('iiisssss', $_SESSION['uid'], $result_aid, $_POST['radius'],
										$_POST['starttime'], $_POST['endtime'],$_POST['privacy'],$_POST['description'],$_POST['currentstate']);		
			$stmt->execute();
			$result = $stmt->get_result();
			$last_nid = $select_db->insert_id;
			foreach ($_POST['tag_list'] as $selectedOption){
				$stmt = $select_db->prepare("
					INSERT INTO notetag (`nid`, `tid`)
					VALUES (?,?)
					");
				$stmt->bind_param('ii', $last_nid, $selectedOption);		
				$stmt->execute();
			}
			header("Location: main.php");
		}else{
			echo "<a href='./main.php'>location error return</a>";
		}
	}else{
		echo "<a href='./main.php'>empty field error return</a>";
	}
}
?>