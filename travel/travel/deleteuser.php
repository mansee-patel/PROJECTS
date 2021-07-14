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

		#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
  color: black;
}

#customers tr:nth-child(even){background-color: #lightblue;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: lightblue;
  color: black;
}
	</style>
	
<body>
<div style="background-color: black;height: 100px;width: 100%;position: fixed"><p style="margin-top: 35px;font-size: 20px;font-weight: bolder;padding-left: 20px;color: white">Admin Portal</p>
<p style="margin-top: 50px;font-size: 20px;font-weight: bolder;padding-left: 30px;color: white" onclick="window.location.href='admin.php'">Back to home page!!</p> 
		<img style="width: 50px;height: 50px;margin-top: -65px;margin-left:1350px;position: absolute;" src="https://www.kindpng.com/picc/m/247-2472348_admin-user-shape-hd-png-download.png"></div><br>
	<br><br>
	
<div>

	<div style="background-color: #393e3f;width: 300px;height: 90px;margin-left: 400px;margin-top: 100px;border-radius: 20px;color: white">
		<button style="margin-left: 75px;margin-top: 27px;height: 40px;width: 150px;border-radius: 10px;background-color: white;color: black" onclick="window.location.href='viewuser.php'"><b>View User details</b></button>

	</div>

	<div style="background-color: #393e3f;width: 300px;height: 90px;margin-left: 800px;margin-top: -90px;border-radius: 20px;color: white">
		<button style="box-shadow: white;margin-left: 65px;margin-top: 25px;height: 40px;width: 180px;border-radius: 10px;background-color: white;color: black"><b>Delete Booking details</b></button>
		
	</div>
</div>
	
<div style="margin-top: -30px">
	<div style="background-color: #393e3f;width: 300px;height: 90px;margin-left: 400px;margin-top: 100px;border-radius: 20px;color: white">
		<button style="box-shadow: white;margin-left: 75px;margin-top: 27px;height: 40px;width: 150px;border-radius: 10px;background-color: white;color: black"><b>View Booking details</b></button>

	</div>

	<div style="background-color: #393e3f;width: 300px;height: 90px;margin-left: 800px;margin-top: -90px;border-radius: 20px;color: white">
		<button style="box-shadow: white;margin-left: 85px;margin-top: 25px;height: 40px;width: 150px;border-radius: 10px;background-color: white;color: black"><b>Delete User details</b></button>		
	</div>
</div>
</body>
<br><br>




	<?php

        $conn = mysqli_connect("localhost","root","","travel");
        $sel = "SELECT * FROM user";
        $result = mysqli_query($conn,$sel);
        if (mysqli_num_rows($result) > 0) {
?>
    <div style="position:absolute;width: 82%; left:13%; top:30%; border:0px solid black;">
    <table id="customers" style="margin-top: 250px;margin-left: -30px;border-radius: 40px" bgcolor="lightgray">
    	<tr>
			        <th style="color: white;background-color: black">User Id</th>
			        <th style="color: white;background-color: black">Name </th>
			        <th style="color: white;background-color: black">Email Address</th>
			        <th style="color: white;background-color: black">Password</th>
			       	<th style="color: white;background-color: black">Delete User</th>
            	</tr>

<?php 
        	
           	while($row = mysqli_fetch_assoc($result)){
  ?>       
            	<tr style="text-align: center;">
			        <td><?php echo $row['user_id']?></td>
			        <td><?php echo $row['name']?></td>
			        <td><?php echo $row['email']?></td>
			        <td><?php echo $row['password']?></td>
			        <td><?php echo '<a style="color:black;text-decoration:none" href="delete1.php?rn='.$row['user_id'].'">' ?> Delete</td>
            	</tr>
            	<?php          
            }
        }else{
                echo "<script>alert('User not found!!');</script>";
            }
        

    
?>
		
		</table>
	</div>


</div>

</html>