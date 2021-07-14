<?php
	session_start();    

?>
<!DOCTYPE html>
<html>
<head>
	<title>User Page</title>
	<style type="text/css">
		body
		{
			background-image: url('https://img.wallpapersafari.com/desktop/1920/1080/8/93/ypj2WC.png');
		}
	</style>
	
<body>

	<div style="background-color: black;height: 100px;width: 100%;position: fixed"><p style="margin-top: 35px;font-size: 20px;font-weight: bolder;padding-left: 20px;color: white">Welcome to the Admin Portal!!</p> <p style="margin-left: 1320px;font-weight: bolder;color: white">Welcome, Admin</p>
		<img style="width: 50px;height: 50px;margin-top: -95px;margin-left:1350px;position: absolute;" src="https://www.kindpng.com/picc/m/247-2472348_admin-user-shape-hd-png-download.png"></div><br>
		<br><br>
	
<div>
	<div style="background-color: #393e3f;width: 300px;height: 90px;margin-left: 400px;margin-top: 100px;border-radius: 20px;color: white">
		<button style="margin-left: 75px;margin-top: 27px;height: 40px;width: 150px;border-radius: 10px;background-color: white;color: black" onclick="window.location.href='viewuser.php'"><b>View User details</b></button>

	</div>

	<div style="background-color: #393e3f;width: 300px;height: 90px;margin-left: 800px;margin-top: -90px;border-radius: 20px;color: white">
		<button style="box-shadow: white;margin-left: 85px;margin-top: 25px;height: 40px;width: 150px;border-radius: 10px;background-color: white;color: black"  onclick="window.location.href='deletebooking.php'"><b>Delete Booking details</b></button>
		
	</div>
</div>
	
<div style="margin-top: -30px">
	<div style="background-color: #393e3f;width: 300px;height: 90px;margin-left: 400px;margin-top: 100px;border-radius: 20px;color: white">
		<button style="box-shadow: white;margin-left: 75px;margin-top: 27px;height: 40px;width: 150px;border-radius: 10px;background-color: white;color: black" onclick="window.location.href='viewbooking.php'"><b>View Booking details</b></button>

	</div>

	<div style="background-color: #393e3f;width: 300px;height: 90px;margin-left: 800px;margin-top: -90px;border-radius: 20px;color: white">
		<button style="box-shadow: white;margin-left: 85px;margin-top: 25px;height: 40px;width: 150px;border-radius: 10px;background-color: white;color: black" onclick="window.location.href='deleteuser.php'"><b>Delete User details</b></button>
		
	</div>
</div>

</html>