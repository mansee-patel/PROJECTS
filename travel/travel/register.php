  <?php
  			if ($_SERVER["REQUEST_METHOD"] == "POST"){
       		 $conn = mysqli_connect("localhost","root","","travel");
        	if ($conn) {

            $insert = "INSERT INTO user(user_id,email,password) VALUES('".$_POST['id1']."', '".$_POST['email1']."', '".$_POST['p1']."')";

            if(mysqli_query($conn, $insert)){
                echo "<script>alert('Registration successfull!!');
                window.location.href='tour guide.php'</script>";
            }
            else{
            	echo "<script>alert('Registration error!!');
            	window.location.href='tourguide.php'</script>";
            }
        }
        else
        {
        	echo "<script>alert('DB Connection Error');</script>";
        }
    }
?>