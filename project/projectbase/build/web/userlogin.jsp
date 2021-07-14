<%-- 
    Document   : userlogin
    Created on : 10 Oct, 2020, 10:53:50 PM
    Author     : DELL
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
            String name=request.getParameter("un");  
            String pw=request.getParameter("pw");  
          
            Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3308/projectbase","root","");
          
    
            
	Statement stmt = con.createStatement();
	String query = ("select * from user where rollno='"+name+"' or empno='"+name+"' and password='"+pw+"'");
	ResultSet rs = stmt.executeQuery(query);
        
        if(rs.next())
        {
            
           
            
            String designation=rs.getString(18);
            session.setAttribute("rollno", rs.getString(3));
            session.setAttribute("name",rs.getString(1));
            session.setAttribute("stream",rs.getString(5));
            session.setAttribute("empno",rs.getString(15));
           if(designation.equals("student"))
            {
            RequestDispatcher rd=request.getRequestDispatcher("student.html");  
            rd.forward(request,response); 
            }
            else if(designation.equals("professor"))
            { 
            RequestDispatcher rd=request.getRequestDispatcher("professor.html");  
            rd.forward(request,response);  
            }
            else
            {
             RequestDispatcher rd=request.getRequestDispatcher("index.html");  
            rd.include(request,response); 
        }
        }
            }
        catch(Exception e)
                {
                    out.println(e);
                }
            %>
    </body>
</html>
