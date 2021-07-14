<?php
	session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<style type="text/css">
		.imgx{
				opacity:0.5;
				width: 100%;
				position: fixed;
				left: 0px;
				top: 0px;		
			}
	</style>
<title></title>
<link rel="stylesheet" type="text/css" href="style.css">
<meta name="viewport" content="width=device-width, initial-scale=1">


</head>
<body>

<?php include('function.php'); ?>

<?php include('top.php'); ?>

<hr style="width: 100%;background-color: lightgray">
<br>
<br>

<br><br><br>
<h1 style="color:#C80000;margin-left: 200px">Package list</h1>
<div class="block">
	<br>
	<div class="b1" style="height: 240px">
		<img src="https://www.hlimg.com/images/deals/360X230/deals_201807201532086728-0.jpg" style="height: 240px;width: 340px">
		<div style="margin-left: 360px;margin-top: -210px">
		<h2 style="color: #C80000;">Package Name : Manali Trip</h2>
		<h3 style="color: #C80000">Package Id : 1</h3>
		<h4 style="color: gray">Package location : Kullu,Manali,India</h4>
		<h4 style="color: gray">Features : Air conditioning,balcony,terrace,cable/satellite,tv</h4>
	</div>
		<p style="margin-top: 20px;margin-left: 950px;color: darkgray;font-size: 25px">20,000/-</p><br>
		<button style="background-color: #C80000;color: white;width: 130px;height: 40px;border: none;margin-left: 950px" onclick="window.location.href='booking.php'">BOOK NOW</button>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="b2" style="height: 240px">
		<img src="https://lh3.googleusercontent.com/KnwkukSVMds2oUDQODApraYx_SRHSVJaF9gY_UiW75MyuxGK10nikKVRHzyEtcoollV1QBPDa8IhHT6SyT1jhrAv38w=w800?s=300" style="height: 240px;width: 340px">
		<div style="margin-left: 360px;margin-top: -210px">
		<h2 style="color: #C80000;">Package Name : Goa Trip</h2>
		<h3 style="color: #C80000">Package Id : 2</h3>
		<h4 style="color: gray">Package location : Goa, India</h4>
		<h4 style="color: gray">Features : Air conditioning,balcony,terrace,cable/satellite,tv</h4>
	</div>
		<p style="margin-top: 20px;margin-left: 950px;color: darkgray;font-size: 25px">40,000/-</p><br>
		<button style="background-color: #C80000;color: white;width: 130px;height: 40px;border: none;margin-left: 950px" onclick="window.location.href='booking.php'">BOOK NOW</button>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="b2" style="height: 240px">
		<img src="https://cdn1.tripoto.com/media/filter/tst/img/2025553/Image/1614240749_1_1.jpg" style="height: 240px;width: 340px">
		<div style="margin-left: 360px;margin-top: -210px">
		<h2 style="color: #C80000;">Package Name : Rajasthan Trip</h2>
		<h3 style="color: #C80000">Package Id : 3</h3>
		<h4 style="color: gray">Package location : Rajasthan, India</h4>
		<h4 style="color: gray">Features : Air conditioning,balcony,terrace,cable/satellite,tv</h4>
	</div>
		<p style="margin-top: 20px;margin-left: 950px;color: darkgray;font-size: 25px">40,000/-</p><br>
		<button style="background-color: #C80000;color: white;width: 130px;height: 40px;border: none;margin-left: 950px" onclick="window.location.href='booking.php'">BOOK NOW</button>
	</div>
	</div>
</div>
</div>

<?php include('bottom.php'); ?>
</body>
</html>

