<%-- 
    Document   : adminp
    Created on : Aug 19, 2020, 10:44:44 AM
    Author     : Isuru Mendis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
       background-image: url("img2.jpg");
       height:780px;
      width: 100%;
      background-size:cover; 
     }
     
  .btnsi{
    
    width: 250px;
    height: 50px;
     filter: alpha(opacity=60); 
   font-size: 20px;
   font-weight: bold;
    
}
       </style>
       
       <style>
     <%@ include file="css/style.css"%>
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
          <li class="active"><a href="adminp.jsp">Add Post</a></li>
          
          
         </ul>
           <button type="submit" class="btn btn-warning btnfoc12"><a href="admin.jsp" class="btnfoc3">Log Out</a> </button>
           <button type="submit" class="btn btn-warning "><a href="poupselect.jsp" class="btnfoc3">Post Update</a> </button>
             </div>
     </div>
     </div>
       <br><br><br><br><br><br><br><br>
    <center>
        <button type="submit" class="btn btn-info btnsi "><a href="SLheritage.jsp" class="btnfocl btnsi">Sri Lankan Historical</a> </button><br><br>
       <button type="submit" class="btn btn-primary btnsi"><a href="eventC.jsp" class="btnfocl btnsi">Events Organize</a> </button><br><br>
       <button type="submit" class="btn btn-danger btnsi"><a href="booking.jsp" class="btnfocl btnsi">Hotels Booking</a> </button><br><br>
       <button type="submit" class="btn btn-warning btnsi"><a href="" class="btnfocl btnsi">Sri Lankan Beaches</a> </button><br><br>
       <button type="submit" class="btn btn-success btnsi"><a href="" class="btnfocl btnsi">Wild Life & Nature</a> </button><br><br>
    </center>
       
    </body>
</html>

