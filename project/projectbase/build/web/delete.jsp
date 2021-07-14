<%-- 
    Document   : delete
    Created on : 18 Oct, 2020, 7:56:56 PM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3308/projectbase","root","");
          
    
            
	Statement stmt = con.createStatement();
        String r=request.getParameter("Rollno");
        int id = Integer.parseInt(request.getParameter("projectid"));
        
        String query="delete from student where rollno='"+r+"' and ProjectID='"+id+"'";
        stmt.executeUpdate(query);
         RequestDispatcher rd=request.getRequestDispatcher("professor_project.jsp");
      
            rd.forward(request,response); 
          %>
    </body>
</html>
