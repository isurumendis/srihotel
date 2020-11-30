<%-- 
    Document   : update
    Created on : Oct 12, 2020, 2:50:28 PM
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
     <link href="css/bootstrap.min.css" rel="stylesheet">
     <link rel="stylesheet" type="text/css" href="css/style.css">
      <link rel="stylesheet" type="text/css" href="css/admincss.css">
       <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

     <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
     
      <script src="js/bootstrap.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        
         <style>
             
             <%@ include file="css/style1.css"%>
            
            body{
       background-image: url("ss.jpg");
       height:754.5px;
      width: 100%;
      background-size:cover; 
     }
            
            
            
             .title9{

	width: 60%;
	height: 50px;
	background-color: white;
  border: 1px solid black;
  opacity: 0.7;
  filter: alpha(opacity=60); 

}


.form-group10{

	 padding-left: 350px;
 padding-top: 2px;
 font-weight: bold;
 color: White;
 font-size: 16px;

 }
 
 .lable10{
       margin-left: 268px;
   }
          
            
            
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
          
          <li ><a href="adminhome.jsp">Home</a></li>
          
          <li ><a href="eventA.jsp">Events</a></li>
          <li ><a href="ReservationA.jsp">Hotels Booking</a></li>
          <li ><a href="adminp.jsp">Add Post</a></li>
          <li class="active"><a href="booking.jsp">Hotel Update</a></li>
         </ul>
           <button type="submit" class="btn btn-warning btnfoc15"><a href="admin.jsp" class="btnfoc3">Log Out</a> </button>
            <button type="submit" class="btn btn-warning "><a href="poupselect.jsp" class="btnfoc3">Post Update</a> </button>
             </div>
        
     </div>
     </div>
        
        <br>
        
        
        <div class="container" id="imag">
            
        <form name="bform" action="update" method="get">
            
            <%
            
                        Connection con;
                        PreparedStatement pst;
                        ResultSet rs;
                        
                       Class.forName("com.mysql.jdbc.Driver");
                       con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","");
                       
                       String id = request.getParameter("id");
                       pst = con.prepareStatement("select * from booking where id = ? ");
                       pst.setString(1, id);
                       rs = pst.executeQuery();
                       
                      while(rs.next())
                      {
            
            %>
            
            
            
            <div class="form-group  form-group10 " >
                ID:<input type="text" name="b0" class="form-control title9" value="<%= rs.getString("id")%>" placeholder="ID Number">
            </div>
            <div class="form-group  form-group10 " >
                Hotel Name:<input type="text" name="b1" class="form-control title9" value="<%= rs.getString("hotelname")%>" placeholder="Hotel Name">
            </div>
            <div class="form-group  form-group10 " >
                Description:<input type="text" name="b2"  class="form-control title9" value="<%= rs.getString("description")%>" placeholder="Description">
              </div>
            <div class="form-group  form-group10 " >
                Contact Number:<input type="text" name="b3"  class="form-control title9" value="<%= rs.getString("contactno")%>" placeholder="Contact Number">
              </div>
            
              <div class="form-group  form-group10 " >
            Email:<input type="text" name="b4"  class="form-control title9" value="<%= rs.getString("email")%>" placeholder="Email">
              </div>
            
            <div class="form-group  form-group10 " >
            Name:<input type="text" name="b5"  class="form-control title9" value="<%= rs.getString("name")%>" placeholder="Name">
              </div>
            
         <div class="form-group  form-group10 " >
            Website URL:<input type="text" name="b6"  class="form-control title9" value="<%= rs.getString("links")%>" placeholder="Website URL">
              </div>
            
            <% } %>
            
             <div class="form-group  form-group10 " >
             <button type="submit" value="Submit" class="btn btn-success">Submit</button>
             <button type="reset" value="Cancel" class="btn btn-warning">Cancel</button>
             <button value="Back" class="btn lable10"><a href="hotelupdate.jsp">Back</a></button>
             </div>
            
            
             
        </form>
            
        </div>
    </body>
</html>
