<?php
   session_start();
   $_SESSION['fname']='';
   $_SESSION['user_id']='';
    if ($_SERVER["REQUEST_METHOD"] == "POST"){
        $conn = mysqli_connect("localhost","root","","travel");
        if ($conn) {
            $sel = "SELECT password FROM user WHERE user_id='".$_POST['id']."'";

            $sel1 = "SELECT name FROM user WHERE user_id='".$_POST['id']."'";
            $result1 = mysqli_query($conn,$sel1);
            $row1 = mysqli_fetch_assoc($result1);
            $_SESSION['fname'] = $row1['name'];
           	$_SESSION['user_id']=$_POST['id'];
            $result = mysqli_query($conn,$sel);
            if (mysqli_num_rows($result) > 0) {
                $row = mysqli_fetch_assoc($result);
                if($_POST['pass']==$row['password']){
                    echo "<script>alert('Login successfull!!'); window.location.href='index.php'</script>";
                }else{
                    echo "<script>alert('Password is incorrect!!');</script>";
                }
            }else{
                echo "<script>alert('User not found!!');</script>";
            }

          

        }else{
            echo "<script>alert('DB Connection Error');</script>";
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
				<button type="button" class="butn" onclick="register()">Register</button>
		</div>
	
	 <form id="login" class="input-btn" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
		<input type="text" class="input-field" name="id" id="userid" placeholder="User Id">
		<span id="user"></span><br>
		<input type="password" class="input-field" name="pass" id="password" placeholder="Enter Password">
		<span id="passw"></span><br>
		<input type="submit" class="submit-btn" name="submit" value="Log In">

	</form>
	
	<form id="register" class="input-btn" action="register.php" method="post">
		<input type="text" class="input-field" id="us" name="id1" placeholder="Enter User Id"><br>
		<span id="userid1"></span><br>
		<input type="text" class="input-field" id="name" name="name1" placeholder="Enter Name"><br>
		<span id="user name"></span><br>
		<input type="text" class="input-field" id="email" name="email1" placeholder="Enter Email">
		<span id="email2"></span><br><br>
		<input type="password" class="input-field" id="passwo" name="p1" placeholder="Enter Password">
		<span id="Password2"></span><br>
		<input type="submit" class="submit-btn" name="submit" value="Register">	
	</form>
	
</div>
</div>
	<script type="text/javascript">
		var x = document.getElementById("login");
		var y = document.getElementById("register");
		var z = document.getElementById("btn");

		function register(){
		x.style.left="-400px";
		y.style.left="50px";
		z.style.left="110px";
	}
	function login()
	{
		x.style.left="50px";
		y.style.left="450px";
		z.style.left="0px";
	}
	</script>

</body>
</html>