<%-- 
    Document   : add
    Created on : 11 Oct, 2020, 1:07:26 AM
    Author     : DELL
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
           <h1 style="color: white;text-align: center">PROFESSOR LOGIN</h1>
            <div><img src="log.png" style="margin-top: 15px;margin: 0px;padding: 0px; margin-top: 10px; height: 100px; width: 100px"></div>
        <ul>
            <li  class="active"><a href="professor.html">Home</a></li>
            <li><a href="#">projects</a>
                <div class="sub-menu-1">
                    <ul>
                        <li><a href="professor_project.jsp">My Projects</a></li>
                        <li><a href="add.jsp">Add Projects</a></li>
                    </ul>
                    
                </div>
            
            
            </li>
            <li><a href="#">advanced</a>
             <div class="sub-menu-1">
                    <ul>
                        <li><a href="#">add tutorials</a></li>
                        <li><a href="#">add quizzes</a></li>
                        <li><a href="#">add challenges</a></li>
                    </ul>
                    
                </div>
            
            </li>
             <li><a href="#">about us</a></li>
            <li><a href="contact">contact us</a></li>
             <li><a href="#">my info</a>
             <div class="sub-menu-1">
                    <ul>
                        <li><a href="contact">important contacts</a></li>
                        <li><a href="professor_profile.jsp">profile</a></li>
                        <li><a href="professor_changepassword.jsp">change password</a></li>
                       
                        <li><a href="logoutservlet">logout</a></li>
                        
                    </ul>
                    
                </div>
             
             </li>
        </ul>
            </div>

        <div class="abc">
         
            <form  action = "add_project.jsp" method="post" style="margin-top: 50px;margin-left: 100px">
                 <div>
             <div class="c" style="margin-left: 150px;margin-right: 20px; margin-top: 20px"> 
                 <h3 style="display: inline;margin-left:237px;margin-top:70px;color: #df3232;margin-left: 200px">Enter Project name :</h3><input type="text" name="a" required="required" style="width: 200px;display: inline;margin-left:170px;color: black  "><br>
                 <h3 style="display: inline;margin-left:50px;margin-top:40px;color: #df3232;margin-left: 200px">Enter project field :</h3><input type="text" name="b"  required="required"   style="width: 200px;display: inline;margin-left:179px;color: black  "><br>
                 <h3 style="display: inline;margin-left:237px;margin-top:70px;color: #df3232;margin-left: 200px">Enter project durability :</h3><input type="text"  name = "c" required="required"  style="width: 200px;display: inline;margin-left:136px;color: black  "><br>
                 <h3 style="display: inline;margin-left:50px;margin-top:40px;color: #df3232;margin-left: 200px">Enter project eligibility :</h3><input type="text" name="d"  required="required"  style="width: 200px;display: inline;margin-left:142px;color: black  "><br>
                 <h3 style="display: inline;margin-left:237px;margin-top:70px;color: #df3232;margin-left: 200px">Enter discipline :</h3><input type="text" name="e"  required="required"  style="width: 200px;display: inline;margin-left:203px;color: black  "><br>
                 <h3 style="display: inline;margin-left:50px;margin-top:70px;color: #df3232;margin-left: 200px">Enter co_investigator :</h3><input type="text" name="f"  required="required"  style="width: 200px;display: inline;margin-left:157px;color: black  "><br>
                 
                 <input type="submit" value="ADD PROJECT" style="margin-left: 450px;background: #df3232;width: 130px;margin-top: 60px"> 
                

              
             </div>
            </div>
        </form>
        </div>
       
    </body>
</html>
