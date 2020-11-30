<%-- 
    Document   : eventbook1
    Created on : Nov 28, 2020, 10:17:47 AM
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
    <script type="text/javascript">
        
        </script>
        <title>WELCOME TO SRI LANKA</title>
    </head>
    <body>
        <style>
            
             
             
          body{
       background-image: url("e15.jpg");
      background-size: cover;
      background-repeat: no-repeat;
      
     
      }
     
     .title8{

	width: 70%;
	height: 30px;
	background-color: white;
  border: 1px solid black;
  opacity: 0.7;
  filter: alpha(opacity=60); 

}


.form-group1{

	 padding-left: 350px;
 padding-top: 0px;
 font-weight: bold;
 color: White;
 font-size: 14px;

 }
 h1{
     
     color:#204d74; 
 }
   .btnfoc6{
    
    color: white;
	
       font-weight: bold ;
       margin-left: 445px;
}

.btnfoc7{
    color: white;
	padding-bottom: 70px;
       font-weight: bold ;
    
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
          <li class="active"><a href="#">Reservation Request Form</a></li>
          
         </ul>
           <button type="submit" class="btn btn-warning btnfoc6 "><a href="index.jsp" class="btnfoc7">Log Out</a> </button>
           <button type="submit" class="btn btn-warning "><a href="poupselect.jsp" class="btnfoc3">Post Update</a> </button>
             </div>
     </div>
     </div>
     <br>
        
        
    <center><h1><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;...PARTICIPATION FORM...</b></h1></center><br>
        
        <div class="container" id="imag">
            <form name="hform" action="eventdata1" method="get" autocomplete="off">
            
             <%
            
                        Connection con;
                        PreparedStatement pst;
                        ResultSet rs;
                        
                       Class.forName("com.mysql.jdbc.Driver");
                       con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","");
                       
                       String id = request.getParameter("id");
                       pst = con.prepareStatement("select * from uplod where id = ? ");
                       pst.setString(1, id);
                       rs = pst.executeQuery();
                       
                      while(rs.next())
                      {
            
            %>
            
            <div class="form-group  form-group1 " >
                Post ID:<input type="text" name="n0" class="form-control title8" value="<%= rs.getString("id")%>" placeholder="ID Number">
            </div>
            <div class="form-group  form-group1 " >
                Enter Name:<input type="text" name="n1" class="form-control title8" value="" placeholder="Full Name">
            </div>
            <div class="form-group  form-group1 " >
                Enter Email:<input type="text" name="n2"  class="form-control title8" value="" placeholder="Email">
              </div>
            <div class="form-group  form-group1 " >
                Enter Phone Number:<input type="text" name="n3"  class="form-control title8" value="" placeholder="Phone Number">
              </div>
            <div class="form-group  form-group1 " >
            Date Of Birth<input type="date" name="n4"  class="form-control title8" value="" placeholder="Date Of Birth">
              </div>
            <div class="form-group  form-group1 " >
               Number Of Participants:<input type="text" name="n5"  class="form-control title8" value="" placeholder="Number Of Participants">
              </div>
            <div class="form-group  form-group1 " >
              National ID Number:<input type="text" name="n6"  class="form-control title8" value="" placeholder="National ID Number">
              </div>
            <div class="form-group  form-group1 " >
                Enter Passport Number:<input type="text" name="n7"  class="form-control title8" value="" placeholder="Passport Number">
              </div>
            <div class="form-group  form-group1 " >
            Add Message Any Other Request:<input type="text" name="n8"  class="form-control title8" value="" placeholder="More details about your inquary">
              </div>
             <% } %>
              <div class="form-group  form-group1 " >
 <button type="submit" value="Submit" class="btn btn-success">Submit</button>
  <button type="reset" value="Cancel" class="btn btn-warning">Cancel</button>
  </div>
           
          
         </form>
        </div>
    </body>
</html>

