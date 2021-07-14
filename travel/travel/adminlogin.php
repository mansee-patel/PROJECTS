<?php
    if ($_SERVER["REQUEST_METHOD"] == "POST"){
		       if ($_POST['id']=="admin" && $_POST['pass']=="admin") {
		       	 echo "<script>alert('Login successfull!!'); window.location.href='admin.php'</script>";
		       }
		       else
		       {
		       		 echo "<script>alert('Please enter correct user id and password!!');window.location.href='adminlogin.php'</script>";
		       }
    }
?>

<html>
<head>
	<title>user</title>
	<link rel="stylesheet" href="css.css">
    
</head>
<body>
         	
<div class="container">
	<div class="form">
		<div class="button">
			<div id="btn"></div>
				<button type="button" class="butn" onclick="login()">Log In</button>
				
		</div>
	
	 <form id="login" class="input-btn" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
		<input type="text" class="input-field" name="id" id="userid" placeholder="User Id">
		<span id="user"></span><br>
		<input type="password" class="input-field" name="pass" id="password" placeholder="Enter Password">
		<span id="passw"></span><br>
		<input type="submit" class="submit-btn" name="submit" value="Log In">
	</form>
</div>
</div>
</body>
</html>