
<?php
session_start();
?>
<!DOCTYPE html>
<html>
<head>
<title></title>
<link rel="stylesheet" type="text/css" href="style.css">
<meta name="viewport" content="width=device-width, initial-scale=1">


</head>
<body>

<?php include('function.php'); ?>
<?php include('top.php'); ?>
	 <img src="http://3.bp.blogspot.com/-BI4lizsmGbc/UZRXob24aYI/AAAAAAAAyZM/GVVSOv0t810/s1600/Travel++HD+wallpapers+(13).jpg" style="width: 100%" alt="">

					 
     <br>
     <br><br>
     <center><p style="font-size: 40PX;margin-top: -500px;color: white;"><B>TRAVEL AROUND THE WORLD</B></p></center>
     <br><br><br><br><br><br><br><br><br><br>
     <div id="section-2">
	 <center> <h2 style="color: #c41e1e;margin-top: 400px">About Us</h2></center>
	 <br>
	  <br><br>
	   <div class="container">		  
		 <div style="margin-left: 350px;">
			 <h3 style="color: black">Our Vision</h3>
			 <br>
			 <p style="width: 300px;text-align: justify;color: gray">NLM travel seeks to enhance the corporate management tools to improve the service while reducing your travel costs. We manage almost every type of travel needs, from simplest to the complex, and create an unparalleled experience that our customers could rely on. We aim to maintain our vision of high class travel services at reasonable prices through consistent leadership, controlled growth and excellent commitment.</p>
		 </div>
		 <div style="margin-top: -223px;color: gray;margin-left: 900px;;width: 300px;text-align: justify;">
		 	<br>
			 <h3 style="color: black;margin-top: -20px">Our Mission</h3>
			 <br>
			 <p>NLM travel seeks to enhance the corporate management tools to improve the service while reducing your travel costs. We manage almost every type of travel needs, from simplest to the complex, and create an unparalleled experience that our customers could rely on. We aim to maintain our vision of high class travel services at reasonable prices through consistent leadership, controlled growth and excellent commitment.</p>
		 </div>
		 
	 </div>
</div>
<br>
<br>
<div id="section-3">
		 <center> <h2 style="color: #c41e1e;margin-top: 100px">Gallery</h2></center>
	 <br>		 
		  </div>
		  <div style="padding-left: 150px;border:0px;">
	          <img src="images/t1.jpg" class="img-responsive" alt=""/>	
						     <img src="images/t2.jpg" class="img-responsive" alt=""/>
						     <img src="images/t3.jpg" class="img-responsive" alt=""/>
						     <img src="images/t4.jpg" class="img-responsive" alt=""/>
						     <img src="images/t5.jpg" class="img-responsive" alt=""/>
						     <img src="images/t6.jpg" class="img-responsive" alt=""/>
							<img src="images/t7.jpg" class="img-responsive" alt=""/>
						     <img src="images/t8.jpg" class="img-responsive" alt=""/></a>
</div>
<br>
<br>
<br>
<div id="section-5">
	  <center> <h2 style="color: #c41e1e;margin-top: 100px">Contact Us</h2>
	  	<br>
	  	<h3>Plan Your Trip</h3>
	  </center>                  
<?php
if(isset($_POST["sbmt"]))
{
	$cn=makeconnection();
	$s="insert into contactus(Name,Phno,Email,Message) values('" . $_POST["t1"] ."','" . $_POST["t2"] ."','" . $_POST["t3"] ."','" . $_POST["t4"] ."')";
	mysqli_query($cn,$s);
	mysqli_close($cn);
	echo "<script>alert('Record Save');</script>";
}			
?>			
		
	<div class="contact" style="margin-left: 600px">
					  <form method="post">
                      <table border="0" width="700px" height="500px">
                      <tr><td align="left"> <input type="text" style="width: 300px;height: 40px" class="text" value=" Name"  name="t1" value="Your Name" required></td></tr>
                      <tr><td align="left"><input type="text" style="width: 300px;height: 40px" class="text" value=" Contact No" name="t2"  required></td></tr>
					 <tr><td align="left"> <input type="text" style="width: 300px;height: 40px" class="text" value="Email" name="t3"  required></td></tr>
					 <tr><td><textarea style="width: 300px;height: 90px" name="t4"  required/ >Message</textarea></td></tr>
					  <tr><td align="left"><input type="submit" style="width: 300px;height: 40px;border: 0px"value="Send message" name="sbmt"></td></tr></table>
					  
					   </form>
				   </div>
				



<?php include('bottom.php'); ?>
</body>
</html>

