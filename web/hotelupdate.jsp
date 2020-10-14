<%-- 
    Document   : hotelupdate
    Created on : Oct 12, 2020, 9:52:16 AM
    Author     : Isuru Mendis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import=" java.sql.*"%>
<%@page import="java.io.*" %>
<%@page language="java" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/rating.css">
     <link href="css/bootstrap.min.css" rel="stylesheet">
     <link rel="stylesheet" type="text/css" href="css/style.css">
      <link rel="stylesheet" type="text/css" href="css/admincss.css">
        <title>Sri lanka</title>
    </head>
    <body>
        <div class="col-sm-8">
            <div class="panel-body">
                <table id="tbl-hotel" class="table table-responsive table-bordered" cellpadding ="0" width="100%" >
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Hotel Name</th>
                            <th>Description</th>
                            <th>Contact No</th>
                            <th>E-mail</th>
                            <th>Name</th>
                            <th>Links</th>
                            <th>Edit</th>
                            <th>Delete</th>
                            
                        </tr>
                        
                        <%
                        Connection con;
                        PreparedStatement pst;
                        ResultSet rs;
                        
                       Class.forName("com.mysql.jdbc.Driver");
                       con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","");
                       String qry = "select * from booking";
                       Statement st = con.createStatement();
                       rs = st.executeQuery(qry);
                       
                       while(rs.next())
                       {
                          String id = rs.getString("id");
                        
                          
                       
                        %>
                        
                        <tr>
                            <td><%=rs.getString("id")%></td>
                            <td><%=rs.getString("hotelname")%></td>
                            <td><%=rs.getString("description")%></td>
                            <td><%=rs.getString("contactno")%></td>
                            <td><%=rs.getString("email")%></td>
                            <td><%=rs.getString("name")%></td>
                            <td><%=rs.getString("links")%></td>
                            <td><a href="update.jsp?id=<%=id%>">Edit</a></td>
                            <td><a href="delete.jsp?id=<%=id%>">Delete</a></td>
                            
                        </tr>
                        
                        <%
                        
                        }
                        %>
                  
                </table>
                
            </div>
            
        </div>
        
    </body>
</html>
