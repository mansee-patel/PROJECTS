<%-- 
    Document   : add_project
    Created on : 14 Oct, 2020, 11:35:43 AM
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
            try
            {
            String a=request.getParameter("a");
            String b=request.getParameter("b");
            int c= Integer.parseInt(request.getParameter("c")) ;
            float d=Float.parseFloat(request.getParameter("d")) ;
            String e=request.getParameter("e");
            String f=request.getParameter("f");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3308/projectbase","root","");  
            Statement stmt = con.createStatement();
        
                String r=(String)session.getAttribute("empno");
                String query="select * from user where empno='"+r+"'";
        ResultSet rs1=stmt.executeQuery(query);
       String s1="";
        while(rs1.next())
        {
        s1=rs1.getString(1);
        }
            String Q = "SELECT (MAX(ProjectID)+1) FROM project";
            ResultSet rs_id = stmt.executeQuery(Q);
            rs_id.next();
            int id = Integer.parseInt(rs_id.getString(1));
        
            String queryy="insert into project values('" +id + "','"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+s1+"','"+f+"')";
            stmt.executeUpdate(queryy);
            RequestDispatcher rd=request.getRequestDispatcher("professor.html");  
            rd.forward(request,response); 
            }
            catch(Exception e)
            {
                out.println(e);
            }
           
        %>
    </body>
</html>
