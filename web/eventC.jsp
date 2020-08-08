<%-- 
    Document   : eventC
    Created on : Aug 8, 2020, 12:26:48 PM
    Author     : Ravindu
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
       background-image: url("event.jpg");
       height:780px;
      width: 100%;
      background-size:cover; 
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
          
          <li ><a href="index.jsp">Home</a></li>
          <li ><a href="">About Us</a></li>
          <li ><a href="">Historical</a></li>
          <li ><a href="eventRC.jsp">Events</a></li>
          <li ><a href="">Hotels Booking</a></li>
         <li ><a href="">Sri Lankan Beaches</a></li>
         <li ><a href="">Wild Life & Nature</a></li>
          <li ><a href="adminC.jsp">Add Post</a></li>
          <li class="active"><a href="eventC.jsp">SL Events</a></li>
          <li ><a href="rateRRC.jsp">Ratings</a></li>
         </ul>
             </div>
     </div>
     </div>
        
    <div class="container" id="imag">
  <form name="form3" action="image " method ="POST">
      
      
  <div class="form-group  form-group1 " >
   <lable for="title">Title:</lable>
   <input type="text" name="e2" class="form-control title" placeholder="Enter Title">
   </div>

   <div class="form-group  form-group1 " >
   <lable for="subtitle">Subtitle:</lable>
   <input type="text" name="e3" class="form-control title1" placeholder="Enter Subtitle">
   </div>

   <div class="form-group  form-group1 " >
   <lable for="discription">Discription:</lable>
   <input type="text" name="e4" class="form-control title2" placeholder="Enter Discription">
   </div>

 

   <div class="form-group  form-group1 form1" >
   <lable for="reporter">Reporter:</lable>
   <input type="text" name="e5" class="form-control title4" placeholder="Enter Name">
   </div>
      
       <div class="form-group  form-group1 form1" >
   <lable for="phone number">Phone Number:</lable>
   <input type="text" name="e6" class="form-control title4" placeholder="Enter Phone Number">
   </div>
   
  <div class="form-group  form-group1 " >
  <button type="submit" value="Submit" class="btn btn-success">Submit</button>
  <button type="reset" value="Cancel" class="btn btn-warning">Cancel</button>
  </div>
 

</form>
</div>
    </body>
</html>
