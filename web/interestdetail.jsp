<%-- 
    Document   : interestdetail
    Created on : Oct 19, 2020, 3:45:46 PM
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
        
            <style>
     <%@ include file="css/tab4.css"%>

</style>
        
         <div class="navbar navbar-default">
    <div class="container-fluid">
     <div class="navbar-header">
         <button class="navbar-toggle" data toggle="collapse" data-target=".navbar-collapse">
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         </button>
         <a class="navbar-brand "><img src="logo.png" class="logo"></a>
         </div>
       
       
       <div class="collapse navbar-collapse">
         <ul class="nav navbar-nav">
          <li ><a href="newuserhome.jsp">Home</a></li>
          <li ><a href="">About Us</a></li>
          <li ><a href="">Historical</a></li>
          <li ><a href="eventRC.jsp">Events</a></li>
          
          <li ><a href="Reservation.jsp">Hotels Booking</a></li>
          <li ><a href="adminp.jsp">Add Post</a></li>
          <li class="active"><a href="bookdetail.jsp">Hotels Booking Details</a></li>
          
          </ul>
         <button type="submit" class="btn btn-warning btnfoc10"><a href="admin.jsp" class="btnfoc3">Log Out</a> </button>
            <button type="submit" class="btn btn-warning btnfoc10"><a href="poupselect.jsp" class="btnfoc3">Post Update</a> </button>
         </div>
     </div>
     </div>
        
        <div class="tabbody">
        <div class="col-sm-8">
            <div class="panel-body">
                <table id="tbl-hotel" class="table table-responsive table-bordered" cellpadding ="0" >
                    <thead>
                        <tr class="tabrow">
                            <th>ID</th>
                            <th>Post ID</th>
                            <th>Full name</th>
                            <th>E-mail</th>
                            <th>Contact No</th>
                            <th>Date Of Birth</th>
                            <th>Number Of Participate</th>
                            <th>National ID Number</th>
                            <th>PassPort Number</th>
                            <th>Message</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                        
                        <%
                        Connection con;
                        PreparedStatement pst;
                        ResultSet rs;
                        
                       Class.forName("com.mysql.jdbc.Driver");
                       con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","");
                       String qry = "select * from eventbookd";
                       Statement st = con.createStatement();
                       rs = st.executeQuery(qry);
                       
                       while(rs.next())
                       {
                          String id = rs.getString("id");
                        
                          
                       
                        %>
                        
                        <tr>
                            <td><%=rs.getString("id")%></td>
                            <td><%=rs.getString("postid")%></td>
                            <td><%=rs.getString("name")%></td>
                            <td><%=rs.getString("email")%></td>
                            <td><%=rs.getString("phonenumber")%></td>
                            <td><%=rs.getString("birth")%></td>
                            <td><%=rs.getString("participate")%></td>
                            <td><%=rs.getString("inumber")%></td>
                            <td><%=rs.getString("ppnumber")%></td>
                            <td><%=rs.getString("message")%></td>
                            <td><a href="eventbookup.jsp?id=<%=id%>">Edit</a></td>
                            <td><a href="delete.jsp?id=<%=id%>">Delete</a></td>
                            
                        </tr>
                        
                        <%
                        
                        }
                        %>
                  
                </table>
                
            </div>
            
        </div>
        </div>
        
    </body>
</html>

