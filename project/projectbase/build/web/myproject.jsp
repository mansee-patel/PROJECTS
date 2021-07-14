<%-- 
    Document   : myproject
    Created on : 9 Oct, 2020, 9:33:59 PM
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
        <link rel="stylesheet" type="text/css" href="css/style2.css">
       <link rel="stylesheet" href="style2.css" type="text/css"/>
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
	String query = ("select * from project, (select * from student where rollno ='"+r+"') as t1 where project.ProjectID=t1.ProjectID");
	ResultSet rs = stmt.executeQuery(query);
           
            %>
            
       
            <table id="customers" style = "margin-top: 50px; margin-left: 200px;margin-bottom: 40px ">
              
  <tr>
    <th>Project Name</th>
    <th>Project field</th>
    <th>Duration</th>
    <th>Eligibility</th>
  
  </tr>
  <%
      while(rs.next())
      {
      %>
  <tr>
    <td><%=rs.getString(2)%></td>
    <td><%=rs.getString(3)%></td>
    <td><%=rs.getString(4)%></td>
    <td><%=rs.getString(5)%></td>
  
  </tr>
  <%
     }
      %>
</table>
    </body>
</html>
