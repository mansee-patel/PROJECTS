<%-- 
    Document   : changeinfo
    Created on : 10 Oct, 2020, 11:39:23 PM
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
           String a=request.getParameter("a");
           String b=request.getParameter("b");
           String c=request.getParameter("c");
           String d=request.getParameter("d");
           String e=request.getParameter("e");
           String f=request.getParameter("f");
           String g=request.getParameter("g");
           String h=request.getParameter("h");
           String i=request.getParameter("i");
           String j=request.getParameter("j");
           String k=request.getParameter("k");
           String l=request.getParameter("l");
           String m=request.getParameter("m");
           String n=request.getParameter("n");
           Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3308/projectbase","root","");
            Statement stmt = con.createStatement();
            String r=(String)session.getAttribute("rollno");
            stmt.executeUpdate("UPDATE user SET Name = '"+a+"' WHERE rollno = '"+r+"'");
            stmt.executeUpdate("UPDATE user SET rollno = '"+b+"' WHERE rollno = '"+r+"'");
            stmt.executeUpdate("UPDATE user SET stream = '"+c+"' WHERE rollno = '"+r+"'");
            stmt.executeUpdate("UPDATE user SET student_id = '"+d+"' WHERE rollno = '"+r+"'");
            stmt.executeUpdate("UPDATE user SET Academicyear = '"+e+"' WHERE rollno = '"+r+"'");
            stmt.executeUpdate("UPDATE user SET admission_sem = '"+f+"' WHERE rollno = '"+r+"'");
            stmt.executeUpdate("UPDATE user SET father_name = '"+g+"' WHERE rollno = '"+r+"'");
            stmt.executeUpdate("UPDATE user SET gender = '"+h+"' WHERE rollno = '"+r+"'");
            stmt.executeUpdate("UPDATE user SET cast = '"+i+"' WHERE rollno = '"+r+"'");
            stmt.executeUpdate("UPDATE user SET bgroup = '"+j+"' WHERE rollno = '"+r+"'");
            stmt.executeUpdate("UPDATE user SET bdate = '"+k+"' WHERE rollno = '"+r+"'");
            stmt.executeUpdate("UPDATE user SET cast_category = '"+l+"' WHERE rollno = '"+r+"'");
            stmt.executeUpdate("UPDATE user SET address = '"+m+"' WHERE rollno = '"+r+"'");
            stmt.executeUpdate("UPDATE user SET Phone_number = '"+n+"' WHERE rollno = '"+r+"'");

            RequestDispatcher rd=request.getRequestDispatcher("student.html");  
            rd.forward(request,response); 
           
       %>
    </body>
</html>
