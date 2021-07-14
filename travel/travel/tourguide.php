<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css.css">
</head>
<body>
	<?php
        $mobile_err= $pass_err = $mn_err = "" ;
        if($_SERVER["REQUEST_METHOD"]=="POST"){
            if(empty($_POST['id'])){
                $mobile_err ="User id cannot be null!!";
            }
          
            if(empty($_POST['pass'])){
                $pass_err ="Password cannot be null!!";
            }
            
            
        }
    ?>

<div class="container">
	<div class="form">
		<div class="button">
			<div id="btn"></div>
				<button type="button" class="butn" onclick="login()">Log In</button>
				<button type="button" class="butn" onclick="register()">Register</button>
		</div>
	
	 <form id="login" class="input-btn" action="homepage.html" method="post" onsubmit="return validate()">
		<input type="text" class="input-field" name="id" id="userid" placeholder="User Id">
		<span id="user"></span><br>
		<input type="text" class="input-field" name="pass" id="password" placeholder="Enter Password">
		<span id="passw"></span><br>
		
		<input type="submit" class="submit-btn" name="submit" value="Log In">
	</form>
	<script type="text/javascript">
		function validate()
		{
			var user_id=document.getElementById('userid').value;
			var email = document.getElementById('email').value;
			var password1 = document.getElementById('password').value;
			if(user_id=="")
			{
				document.getElementById("user").innerHTML="Please enter your user id";
				return false;
			}


			if(password1=="")
			{
				document.getElementById("passw").innerHTML="Please enter your password";
				return false;
			}
		}
		
	</script>
	<form id="register" class="input-btn" action="homepage.html" onsubmit="return validate1()">
		<input type="text" class="input-field" id="us" placeholder="User Id"><br>
		<span id="userid1"></span><br>
		<input type="text" class="input-field" id="email" placeholder="Enter Email">
		<span id="email2"></span><br>
		<input type="password" class="input-field" id="passwo" placeholder="Enter Password">
		<span id="Password2"></span><br>
		<input type="submit" class="submit-btn" name="submit" value="Register">	
	</form>
	<script type="text/javascript">
		function validate1()
		{
			var usid=document.getElementById('us').value;
			var email1=document.getElementById('email').value;
			var pa=document.getElementById('passwo').value;
			if(usid=="")
			{
				document.getElementById("userid1").innerHTML="Please enter your user id";
				return false;
			}


			if(email1=="")
			{
				document.getElementById("email2").innerHTML="Please enter your mail";
				return false;
			}
			var mailformat=/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
			if(mailformat.test(email1))
			{
				document.getElementById("email2").innerHTML="";
				
			}
			else
			{
				document.getElementById("email2").innerHTML="Please enter correct format of mail";
				return false;
			}
			if(pa=="")
			{
				document.getElementById("Password2").innerHTML="Please enter your password";
				return false;
			}
		}
	</script>
</div>
</div>
<script>
	var x = document.getElementById("login");
	var y = document.getElementById("register");
	var z = document.getElementById("btn");
	
	function register()
	{
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
