<%-- 
    Document   : sinfo
    Created on : 9 Oct, 2020, 10:33:56 PM
    Author     : Banner
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
         <%
         Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3308/projectbase","root","");
	Statement stmt = con.createStatement();
        String r=(String)session.getAttribute("rollno");
	String query = ("select * from user where rollno='"+r+"'");
	ResultSet rs = stmt.executeQuery(query);
        while(rs.next())
        {
         %>
        <form action="changeinfo.jsp" method="post">
            <div>
             <div class="c" style="margin-left: 150px;margin-right: 20px;margin-top: 40px"> 
                <h3 style="display: inline;margin-left:50px;color: #df3232">Name    :</h3><input type="text" name="a" value="<%=rs.getString(1)%>" style="width: 200px;display: inline;margin-left:90px;color: black ">
                <h3 style="display: inline;margin-left:235px;margin-top:70px;color: #df3232">Roll No :</h3><input type="text" name="b" value="<%=rs.getString(3)%>" style="width: 200px;display: inline;margin-left:157px;color: black  "><br>
                <h3 style="display: inline;margin-left:50px;margin-top:40px;color: #df3232">Stream    :</h3><input type="text" name="c" value="<%=rs.getString(5)%>" style="width: 200px;display: inline;margin-left:80px;color: black ">
                <h3 style="display: inline;margin-left:235px;margin-top:70px;color: #df3232">Student id  :</h3><input type="text" name="d" value="<%=rs.getString(4)%>" style="width: 200px;display: inline;margin-left:135px;color: black  "><br>
                <h3 style="display: inline;margin-left:50px;margin-top:40px;color: #df3232">Academic year     :</h3><input type="text" name="e" value="<%=rs.getString(6)%>" style="width: 200px;display: inline;margin-left:20px;color: black ">
                <h3 style="display: inline;margin-left:235px;margin-top:70px;color: #df3232">Admission semester  :</h3><input type="text" name="f" value="<%=rs.getString(7)%>" style="width: 200px;display: inline;margin-left:60px;color: black  "><br>
                <h3 style="display: inline;margin-left:50px;margin-top:40px;color: #df3232">Father's name     :</h3><input type="text" name="g" value="<%=rs.getString(2)%>" style="width: 200px;display: inline;margin-left:20px;color: black ">
                <h3 style="display: inline;margin-left:237px;margin-top:70px;color: #df3232">Gender :</h3><input type="text" name="h" value="<%=rs.getString(8)%>" style="width: 200px;display: inline;margin-left:161px;color: black  "><br>
                <h3 style="display: inline;margin-left:50px;margin-top:40px;color: #df3232">Cast     :</h3><input type="text" name="i" value="<%=rs.getString(9)%>" style="width: 200px;display: inline;margin-left:100px;color: black ">
                <h3 style="display: inline;margin-left:237px;margin-top:70px;color: #df3232">Blood group :</h3><input type="text" name="j" value="<%=rs.getString(12)%>" style="width: 200px;display: inline;margin-left:121px;color: black  "><br>
                <h3 style="display: inline;margin-left:50px;margin-top:40px;color: #df3232">Birth date     :</h3><input type="text" name="k" value="<%=rs.getString(11)%>" style="width: 200px;display: inline;margin-left:54px;color: black ">
                <h3 style="display: inline;margin-left:237px;margin-top:70px;color: #df3232">Cast category :</h3><input type="text" name="l" value="<%=rs.getString(10)%>" style="width: 200px;display: inline;margin-left:113px;color: black  "><br>
                <h3 style="display: inline;margin-left:50px;margin-top:40px;color: #df3232">Address     :</h3><input type="text" name="m" value="<%=rs.getString(13)%>" style="width: 200px;display: inline;margin-left:70px;color: black ">
                <h3 style="display: inline;margin-left:237px;margin-top:70px;color: #df3232">Phone number :</h3><input type="text" name="n" value="<%=rs.getString(14)%>" style="width: 200px;display: inline;margin-left:105px;color: black  "><br>
                
                <input type="submit" value="SAVE CHANGES" style ="background: #df3232;width: 150px;margin-left: 460px;margin-top: 60px;margin-bottom: 70px"> 
              
             </div>
            </div>
      
        </form>
        <%}%>
    </body>
</html>
