<%-- 
    Document   : studentdetail
    Created on : 18 Oct, 2020, 7:29:53 PM
    Author     : DELL
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
           <h1 style="color: white;text-align: center">PROFESSOR LOGIN</h1>
            <div><img src="log.png" style="margin-top: 15px;margin: 0px;padding: 0px; margin-top: 10px;height: 100px; width: 100px"></div>
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
        
        <%
             
            Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3308/projectbase","root","");
          
    
         
	Statement stmt = con.createStatement();
        int id= Integer.parseInt(request.getParameter("projectid"));
	String query = ("select * from student where ProjectID='"+id+"'");
	ResultSet rs = stmt.executeQuery(query);
        
        %>
       
            <table id="customers" style = "margin-top: 50px; margin-left: 200px; ">
              
  <tr>
    <th>Student Name</th>
    <th>Roll No </th>
    <th> Delete </th>
  </tr>
  <%
      
      while(rs.next())
      {
        
      %>
  <tr>
    <td><%= rs.getString(2)%></td>
    <td><%= rs.getString(3)%></td>
   
    <td><a href="delete.jsp?Rollno=<%= rs.getString(3)%>&projectid=<%=rs.getString(1)%>"/>Delete</td>
  </tr>
  <%}%>
</table>
    </body>
</html>
