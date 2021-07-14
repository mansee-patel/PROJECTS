<?php
	session_start();
    $conn = mysqli_connect("localhost","root","","travel");	
    $del = "DELETE FROM booking WHERE booking_id = '".$_SESSION['user_id']."'";
    if (mysqli_query($conn, $del)) {
	  echo  "<script>alert('Canceled successfully!!');window.location.href='viewuser.php'</script>";
	} else {
	  echo "<script>alert('Error!!');</script>";
	}
?>