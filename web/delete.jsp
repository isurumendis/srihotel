<%-- 
    Document   : delete
    Created on : Oct 12, 2020, 2:50:43 PM
    Author     : Isuru Mendis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import=" java.sql.*"%>
<%@page import=" java.sql.Statement"%>
<%@page import=" java.sql.DriverManager"%>
<%@page import=" java.sql.Connection"%>
<%@page import="java.io.*" %>
<%@page language="java" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
               String id = request.getParameter("id");
               int no = Integer.parseInt(id);
                        
                       Class.forName("com.mysql.jdbc.Driver").newInstance();
                       Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","");
                       Statement stat = conn.createStatement();
                       stat.executeUpdate("delete from booking where id='"+no+"'");
                       response.sendRedirect("hotelupdate.jsp");
                        %>
                        
                        
    </body>
</html>
