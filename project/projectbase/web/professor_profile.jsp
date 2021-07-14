<%-- 
    Document   : professor_profile
    Created on : 13 Oct, 2020, 2:54:52 PM
    Author     : DELL
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <link rel="stylesheet" type="text/css" href="css/style1.css">
       <link rel="stylesheet" href="style1.css" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="css/style2.css">
       <link rel="stylesheet" href="style2.css" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
    </head>
    <body style="background: #D7DCD5;">
        <div class="menu-bar">
            <h1 style="color: white;text-align: center">PROFESSOR LOGIN</h1>
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
                String r=(String)session.getAttribute("empno");
                String query=("select * from user where empno='"+r+"'");
                ResultSet rs=stmt.executeQuery(query);
                while(rs.next())
                {
            %>
            <form action="" method="post">
                <div style="margin-top:50px; ">
            
                 <h3 style="display: inline;margin-left:210px;color: #df3232;position: absolute;margin-top: 34px">Name    :</h3><h3 style="width: 200px;display: inline;margin-left:370px;margin-top: 32px;color: black;position: absolute "><%=rs.getString(1)%></h3>
                 <h3 style="display: inline;margin-left:900px;margin-top:34px;color: #df3232;position: absolute">Stream :</h3><h3 style="width: 200px;display: inline;margin-left:1100px;color: black;position: absolute;margin-top: 34px  "><%=rs.getString(5)%></h3><br>
                 <h3 style="display: inline;margin-left:210px;margin-top:50px;color: #df3232;position: absolute">gender    :</h3><h3 style="width: 200px;display: inline;margin-left:370px;color: black;position: absolute;margin-top: 50px "><%=rs.getString(8)%></h3>
                 <h3 style="display: inline;margin-left:900px;margin-top:50px;color: #df3232;position: absolute">cast  :</h3><h3  style="width: 200px;display: inline;margin-left:1100px;color: black ;position: absolute;margin-top: 50px "><%=rs.getString(9)%></h3><br>
                 <h3 style="display: inline;margin-left:210px;margin-top:65px;color: #df3232;position: absolute">Birth date    :</h3><h3 style="width: 200px;display: inline;margin-left:370px;color: black;position: absolute;margin-top: 65px "><%=rs.getString(11)%></h3>
                 <h3 style="display: inline;margin-left:900px;margin-top:65px;color: #df3232;position: absolute">Blood group  :</h3><h3  style="width: 200px;display: inline;margin-left:1100px;color: black;position: absolute;margin-top: 65px  "><%=rs.getString(12)%></h3><br>
                 <h3 style="display: inline;margin-left:210px;margin-top:80px;color: #df3232;position: absolute">Address    :</h3><h3 style="width: 200px;display: inline;margin-left:370px;color: black;position: absolute;margin-top: 80px "><%=rs.getString(13)%></h3>
                 <h3 style="display: inline;margin-left:900px;margin-top:80px;color: #df3232;position: absolute">Phone number  :</h3><h3  style="width: 200px;display: inline;margin-left:1100px;color: black;position: absolute;margin-top: 80px  "><%=rs.getString(14)%></h3><br>
                 <h3 style="display: inline;margin-left:210px;margin-top:100px;color: #df3232;position: absolute">Email address :</h3><h3 style="width: 200px;display: inline;margin-left:370px;color: black;position: absolute;margin-top: 100px "><%=rs.getString(17)%></h3>
                </div>
           
            </form>
            <%
            }
            %>
        
    </body>
</html>
