<%-- 
    Document   : enrollstudent
    Created on : 11 Oct, 2020, 4:09:26 PM
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
          
             
            String n=(String)session.getAttribute("name");
            String st=(String)session.getAttribute("stream");
            String r=(String) session.getAttribute("rollno");
            int id= Integer.parseInt(request.getParameter("projectid"));
            String value = "(" + id + ",\""+n+ "\",\"" + r +"\")";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3308/projectbase","root","");
            Statement stmt = con.createStatement();
            String query=("INSERT into student(`ProjectID`,`Name`,`rollno`) Values " + value);
            stmt.executeUpdate(query);
            
    }
            catch(Exception e)
    {
        
}
%>

        <script type="text/javascript">
            var msg = "Successfully Enrolled!!";
            alert(msg);
        </script>
     <%  
         RequestDispatcher rd=request.getRequestDispatcher("myproject.jsp");  
            rd.forward(request,response); 
             
       %>
        
    </body>
</html>
