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
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js" integrity="sha512-XtmMtDEcNz2j7ekrtHvOVR4iwwaD6o/FUJe6+Zq+HgcCsk3kj4uSQQR8weQ2QVj1o0Pk6PwYLohm206ZzNfubg==" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script type="text/javascript">
        
        </script>
        <title>WELCOME TO SRI LANKA</title>
    </head>
    <body>
        
      <style>    
            <%@ include file="css/style.css"%>
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
          
          <li ><a href="adminhome.jsp">Home</a></li>
       
          <li ><a href="eventA.jsp">Events</a></li>
          <li ><a href="ReservationA.jsp">Hotels Booking</a></li>
          <li ><a href="adminp.jsp">Add Post</a></li>
          <li class="active"><a href="eventC.jsp">SL Events</a></li>
          
         </ul>
           <button type="submit" class="btn btn-warning btnfoc13"><a href="index.jsp" class="btnfoc3">Log Out</a> </button>
           <button type="submit" class="btn btn-warning "><a href="poupselect.jsp" class="btnfoc3">Post Update</a> </button>
             </div>
     </div>
     </div>
        
    <div class="container" id="imag">
  <form name="form3" action="image " method ="POST" autocomplete="off">
      
      
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
   <textarea type="text" name="e4"  class="form-control title2 checkLimit" value="" placeholder="Description"  maxlength="200"></textarea>
   <span id="count">200</span> Remaining Character
   </div>

 

   <div class="form-group  form-group1 form1" >
   <lable for="reporter">Reporter:</lable>
   <input type="text" name="e5" class="form-control title4" placeholder="Enter Name">
   </div>
      
       <div class="form-group  form-group1 form1" >
   <lable for="phone number">Phone Number:</lable>
   <input type="text" name="e6" class="form-control title4" placeholder="Enter Phone Number">
   </div>
   
  <div class="form-group  form-group1 form1" >
   <lable for="phone number">Website URL:</lable>
   <input type="text" name="e7" class="form-control title4" value="https://">
   </div>    
      
  <div class="form-group  form-group1 " >
  <button type="submit" value="Submit" class="btn btn-success">Submit</button>
  <button type="reset" value="Cancel" class="btn btn-warning">Cancel</button>
  </div>
 

</form>
</div>
      <script language="javascript" type="text/javascript">
    var maxLength = 200;
    $('.checkLimit').keyup(function() {
      var textlen = maxLength - $(this).val().length;
      $('#count').text(textlen);
    });
</script>
      
      
    </body>
</html>
