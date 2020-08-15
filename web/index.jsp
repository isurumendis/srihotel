<%-- 
    Document   : index
    Created on : Aug 5, 2020, 10:43:09 AM
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
     <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
     
      <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript"></script>
        
        <title>WELCOME TO SRI LANKA</title>
    </head>
    <body>
     <div class="navbar navbar-default">
    <div class="container-fluid">
      


      <div class="navbar-header">
         <button class="navbar-toggle" data-toggle="collapse" data-target="#coll">
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         </button>
         <a class="navbar-brand "><img src="logo.png" class="logo"></a>
         </div>
       
       
        <div class="collapse navbar-collapse" id="coll" >
         <ul class="nav navbar-nav">
          <li class="active"><a href="index.jsp">Home</a></li>
          <li ><a href="Local.php">About Us</a></li>
          <li ><a href="admin.jsp">Admin Account</a></li>
          
          
         </ul>
         
           <form name="form1"    onclick="validate()" class="navbar-form navbar-right" action="loginu" method="POST">
           <div class="form-group">
            <input type="text" placeholder="Username" name= "fname" class="form-control">
          </div>

          <div class="form-group">
            <input type="password" placeholder="Password" name = "password" class="form-control">
          </div>
               
                   <input type="submit" value="Log In" class="btn btn-primary">
               
         
         
          <button type="submit" class="btn btn-warning"><a href="Registerpage.jsp" class="btnfocl">Register</a> </button>
          
</form>


       </div>
     </div>
    </div>

   
    <video autoplay muted loop id="myVideo" width="100%" height="0%">

      <source src="Cc3MZFCxQGo.mp4" type="video/mp4" >
      </video>
     
<div class="container" id="topcontainer">
       <div class="row">
          <div class="col-md-6 col-md-offset-3" id="toprow">
            <h1>WELCOME TO MOTHER <br>SRI LANKA</h1>
            <p class="lead">You can get many information about Sri Lanka visiting our tourist website.</p>
            <p>If you want, you can follow our steps on FACEBOOK.</p>
             <button type="submit" class="btn btn-primary"><a href="https://www.facebook.com/News-With-Us-2238262113058548/?modal=admin_todo_tour" class="btnfocl">Facebook</a> </button>
             <h5>Please Before Using This Site Click And</h5>
             <div>
             <button type="submit" class="btn btn-warning"><a href="Registerpage.jsp" class="btnfocl">Register In Here</a> </button>
             </div>
             <h6><img src="cop.jpg" width="15px" height="15px">      All rights reserved</h6>
          </div>
        </div>
      </div>
            
             <div class="popup">
                  <div class="popup-content">
                      
                      <img src="close.png" alt="Close" class="close" >
                      <img src="icon.png" alt="user">
                      <form name="pcform" action="pchange" method="get" >
           
                          <input class="hel" type="text" name="f1" placeholder="User Name">
                          <input class="hel" type="password" name="f2" placeholder="New Password">
                 <input type="submit" value="Log In" class="btn btn-primary">
              
                      </form>
                 </div> 
          </div> 
         <script type="text/javascript">
            document.getElementById("fpword").addEventListener('click',
            function(){
            document.querySelector('.popup').style.display = 'flex';
            });
            
            document.querySelector(".close").addEventListener("click",
            function(){
                document.querySelector(".popup").style.display = "none";
            });
        </script>
        
    
    </body>
</html>

