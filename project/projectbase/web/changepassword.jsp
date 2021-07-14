<%-- 
    Document   : changepassword
    Created on : 9 Oct, 2020, 9:59:05 PM
    Author     : Banner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <link rel="stylesheet" type="text/css" href="css/style1.css">
       <link rel="stylesheet" href="style1.css" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="css/style3.css">
       <link rel="stylesheet" href="style3.css" type="text/css"/>
     
        <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
    </head>
    <body>
      <div class="menu-bar">
            <h1 style="color: white;text-align: center">STUDENT LOGIN</h1>
            <div><img src="log.png" style="margin-top: 15px;margin: 0px;padding: 0px;margin-top: 10px;height: 100px;width: 100px">
              
            </div>
        <ul>
            <li  class="active"><a href="student.html">Home</a></li>
            <li><a href="#">projects</a>
                <div class="sub-menu-1">
                    <ul>
                        <li><a href="myproject.jsp">My Projects</a></li>
                        <li><a href="project.jsp">Browse Projects</a></li>
                    </ul>
                    
                </div>
            
            
            </li>
            <li><a href="#">advanced</a>
             <div class="sub-menu-1">
                    <ul>
                        <li><a href="#">tutorials</a></li>
                        <li><a href="#">quizzes</a></li>
                        <li><a href="#">challenges</a></li>
                    </ul>
                    
                </div>
            
            </li>
             <li><a href="#">about us</a></li>
            <li><a href="contact">contact us</a></li>
             <li><a href="#">student info</a>
             <div class="sub-menu-1">
                    <ul>
                     
                        <li><a href="profile.jsp">profile</a></li>
                        <li><a href="changepassword.jsp">change password</a></li>
                        <li><a href="sinfo.jsp">change student information</a></li>
                        <li><a href="logoutservlet">logout</a></li>
                        
                    </ul>
                    
                </div>
             
             </li>
        </ul>
             
            </div>

        <div class="abc">
         
            <form  action = "password1.jsp" method="post" style="margin-top: 50px;margin-left: 100px">
            <input type="password" name="pwd" placeholder="Enter Password" required="required" style="margin-left: 400px;color: black" /><br>
            <input type="password" name="pwrd" placeholder="Re Enter Password" required="required" style ="margin-left: 400px;color: black"/><br>
        <input type="submit" value="UPDATE" style="margin-left: 550px;background: #df3232;width: 100px"> 
        </form>
        </div>
       
    </body>
</html>
