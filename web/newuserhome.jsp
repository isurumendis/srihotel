<%-- 
    Document   : newuserhome
    Created on : Oct 14, 2020, 10:35:39 AM
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
     <link rel="stylesheet" type="text/css" href="css/newuser.css"/>
     
     <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

     <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
     
      <script src="js/bootstrap.min.js"></script>
    
        
        <title>WELCOME TO SRI LANKA</title>
        
            
    </head>
    <body>
         <style>
     <%@ include file="css/style.css"%>
</style>
        
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
          <li class="active"><a href="userhome.jsp">Home</a></li>
          <li ><a href="Local.php">About Us</a></li>
          <li ><a href="">Historical</a></li>
          <li ><a href="eventRC.jsp">Events</a></li>
          <li ><a href="Reservation.jsp">Hotels Booking</a></li>
          <li><a href="useraddpost.jsp">Add Post</a></li>
          
          
         </ul>
         
            <button type="submit" class="btn btn-warning btnfoc2"><a href="index.jsp" class="btnfoc3">Log Out</a> </button>
         <form name="form1"    onclick="validate()" class="navbar-form navbar-right">
         
</form>


       </div>
     </div>
    </div>

<div class="body1">
    
        <div class="slider">
            <div class="v1"></div>
            <div class="slides">
                
            
                <input type="radio" name="radio-btn" id="radio1">
                <input type="radio" name="radio-btn" id="radio2">
                <input type="radio" name="radio-btn" id="radio3">
                <input type="radio" name="radio-btn" id="radio4">
                  
                <div class="slide first">
                    <img src="slide1.jpg" alt="">
                    
                    
        <div class="hero container">
            <div>
                <h1>ආයුබෝවන් ශ්‍රී ලංකා.... <span></span></h1>
                <h2>Welcome To Sri Lanka....<span></span></h2>
               <h3>Best Idea To Visit Sri Lanka..!<span></span></h3>
               </div>
            </div>
                    <p>Im trying to get a header to fly in and after that when you hover it, it should shake (both with css3 animation). 
                        It flies in the way i want, also shakes, but after ive removed the mouse from the element it goes back to the 
                        original margin-right (it had before the flyin animation) even though ive set `-animation-fill-mode: forwards; 
                        When i look in chromedevtools the element never changes its margin-right (even though the animation works..).
                        Can i fix this?</p>        
           </div>
                
                <div class="slide">
                    <img src="slide2.jpg" alt="">
                    
                </div>
                <div class="slide">
                    <img src="slide3.jpg" alt="">
                </div>
                <div class="slide">
                    <img src="slide4.jpg" alt="">
                </div>
  
                <div class="navigation-auto">
                    <div class="auto-btn1"></div>
                    <div class="auto-btn2"></div>
                    <div class="auto-btn3"></div>
                    <div class="auto-btn4"></div>
                </div>
            </div>
            
            <div class="navigation-manual">
                <label for="radio1" class="manual-btn"></label>
                <label for="radio2" class="manual-btn"></label>
                <label for="radio3" class="manual-btn"></label>
                <label for="radio4" class="manual-btn"></label>
            </div>
        </div>
</div>
        <script type="text/javascript">
            var counter = 1;
            setInterval(function(){
                document.getElementById('radio' + counter).checked = true;
                counter++;
                if(counter > 4){
                    counter = 1;
                }
            },5000);
        </script>
    </body>
</html>
