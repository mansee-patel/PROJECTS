<?php
	session_start();
    $conn = mysqli_connect("localhost","root","","travel");	
    $del = "DELETE FROM booking WHERE booking_id = '".$_SESSION['bookingid']."'";
    if (mysqli_query($conn, $del)) {
	  echo  "<script>alert('Canceled successfully!!');window.location.href='mybookings.php'</script>";
	} else {
	  echo "<script>alert('Error!!');</script>";
	}
?>