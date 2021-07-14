<?php 	session_start();?>

<!DOCTYPE html>
<html>
<head>
<title></title>
<link rel="stylesheet" type="text/css" href="style.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">
	th, td {
		  padding: 8px;
		  text-align: center;
		  border-bottom: 1px solid #ddd;

		}

		tr:hover {background-color:#f5f5f5;}

		button:hover{
				background-color:lightblue;		
		}
</style>

</head>
<body>

<?php include('top.php'); ?>
<?php include('bottom.php'); ?>
<hr style="background-color: black;margin-top: 50px;width: 100%">
<div>
	<img src="http://wallpapers.net/web/wallpapers/spot-light-background-hd-wallpaper/thumbnail/lg.jpg" style="opacity: 0.3;margin-top: 10px;width: 1515px;height: 655px;margin-left: 13px">
	<h2 style="margin-left: 200px;margin-top: -600px;color: darkblue">Your Booking Details</h2>
	<

	<?php

        $conn = mysqli_connect("localhost","root","","travel");
        $sel = "SELECT * FROM booking where user_id='".$_SESSION['user_id']."'";
        $result = mysqli_query($conn,$sel);
       
?>
    <div style="position:absolute;width: 82%; left:13%; top:40%; border:0px solid black;">
    <table  style="border-collapse: collapse; width: 100%;">
    	<tr>
			        <th>Booking id</th>
			        <th>Package id</th>
			        <th>Package Name</th>
			        <th>No of passengers</th>
			        <th>Departure Date</th>
			        <th>Cost</th>
			        <th>Cancel Booking</th>
            	</tr>

<?php 
        	
           	while($row = mysqli_fetch_assoc($result)){
           		$_SESSION['bookingid']=$row['booking_id'];
  ?>              	
            	<tr>
			        <td><?php echo $row['booking_id']?></td>
			        <td><?php echo $row['package_id']?></td>
			        <td><?php echo $row['package_name']?></td>
			        <td><?php echo $row['passengers']?></td>
			        <td><?php echo $row['datee']?></td>
			        <td><?php echo $row['cost']?></td>
			        <td><button style=" width: 100px; border: 0px;" onclick="window.location.href='delete.php'">CANCEL</button></td>
            	</tr>
            	<?php          
            }
      
        

    
?>
		
		</table>
	</div>


</div>
</body>
</html>
