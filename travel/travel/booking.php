<?php  
			session_start();
			if ($_SERVER["REQUEST_METHOD"] == "POST"){	
        $conn = mysqli_connect("localhost","root","","travel");
        	if($conn){
        		$select="SELECT user_id from user WHERE name='".$_SESSION['fname']."'";
        		$result=mysqli_query($conn,$select);
        		
        	$insert = "INSERT INTO booking(user_id,package_id,package_name ,passengers, datee,cost) VALUES('".$_SESSION['user_id']."','".$_POST['pid']."', '".$_POST['cn']."', '".$_POST['ps']."', '".$_POST['date']."', '".$_POST['cost']."')";

        	if(mysqli_query($conn,$insert)){
        		echo "<script>alert('booking successful!!');window.location.href='category.php'</script>";	
        	}
        	else{
        		echo  "<script>alert('booking unsuccessful!!');window.location.href='booking.php'</script>";	
         	}
	}
         	else{
            echo "<script>alert('DB Connection Error');</script>";
        }
    
}
?>

<!DOCTYPE html>
<html>
<head>
<title></title>
<link rel="stylesheet" type="text/css" href="style.css">
<meta name="viewport" content="width=device-width, initial-scale=1">


</head>
<body>


<?php include('top.php'); ?>




<hr style="width: 100%;background-color: lightgray">
<br>
<br>
<br>
<div>
<h1 style="color: darkblue;margin-left: 200px;">Booking Details</h1>
<div class="block">
	<br>

	<div style="background-color: #F8F8F8;margin-left: ">
		<img style="width: 700px;height: 350px;" src="https://scoutmytrip.com/blog/wp-content/uploads/2020/02/friends-3542235_1280-1024x658.jpg">
		<div style="margin-left: 800px;margin-top: -350px">

		<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
			<br><br>
		<span style="font-size: 20px;color: #c80000;font-weight: bold">Enter your name : </span><input type="text" name="cn" style="color: lightgray;margin-left: 50px;border:0px;border-bottom: 2px solid #999;height: 30px" value="Enter Your Name"><br>
<br>
		<span  style="font-size: 20px;color: #c80000;font-weight: bold">Enter package id : </span><input style="color: lightgray;margin-left: 50px;border:0px;border-bottom: 2px solid #999;height: 30px" type="text" name="pid" value="Enter Package id"><br><br>

		<span  style="font-size: 20px;color: #c80000;font-weight: bold">Enter no of passengers : </span><input type="text" style="color: lightgray;margin-left:5px;border:0px;border-bottom: 2px solid #999;height: 30px" name="ps" value="Enter no of Passengers"><br><br>

		<span  style="font-size: 20px;color: #c80000;font-weight: bold">Enter departure date</span>
		<input type="date" style="color: lightgray;margin-left: 30px;width: 198px;border:0px;border-bottom: 2px solid #999;height: 30px" name="date"><br><br>
		<span  style="font-size: 20px;color: #c80000;font-weight: bold">Enter cost of package : </span><input type="text" name="cost" style="color: lightgray;margin-left: 15px;border:0px;border-bottom: 2px solid #999;height: 30px" value="Enter cost of package"><br><br><br>
		<input type="submit" style="color: white;background-color: #c80000;width: 100px;height: 35px;margin-left: 130px;border:0px;border-bottom: 2px solid #999;height: 30px"  name="submit" value="submit"> <br><br>	
		</form>
		 </div>
	</div>

</div>
<?php include('bottom.php'); ?>
</body>
</html>
