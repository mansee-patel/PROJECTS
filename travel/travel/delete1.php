<?php
	session_start();
    $conn = mysqli_connect("localhost","root","","travel");	
    $del = "DELETE FROM user WHERE user_id = '".$_GET['rn']."'";
    if (mysqli_query($conn, $del)) {
	  echo  "<script>alert('Canceled successfully!!');window.location.href='viewuser.php'</script>";
	} else {
	  echo "<script>alert('Error!!');</script>";
	}
?>