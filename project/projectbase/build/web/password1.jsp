<%-- 
    Document   : password1
    Created on : 13 Oct, 2020, 3:08:49 PM
    Author     : DELL
--%>

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
        try
            {
            String n=request.getParameter("pwd");
            String p=request.getParameter("pwrd");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3308/projectbase","root","");  
            Statement stmt = con.createStatement();
        
                String r=(String)session.getAttribute("empno");
            
            stmt.executeUpdate("UPDATE user SET password = '"+n+"' WHERE empno = '"+r+"'");
            RequestDispatcher rd=request.getRequestDispatcher("professor.html");  
            rd.forward(request,response); 
            }
            catch(Exception e)
            {
                out.println(e);
            }%>
    </body>
</html>
