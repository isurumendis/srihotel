<%-- 
    Document   : poupselect
    Created on : Oct 19, 2020, 10:56:41 AM
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
     <%@ include file="css/newuser1.css"%>
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
          <li ><a href="">About Us</a></li>
          <li ><a href="">Historical</a></li>
          <li ><a href="eventA.jsp">Events</a></li>
          <li ><a href="ReservationA.jsp">Hotels Booking</a></li>
          <li ><a href="adminp.jsp">Add Post</a></li>
          <li class="active"><a href="poupselect.jsp">Post Update</a></li>
         
          
         </ul>
           <button type="submit" class="btn btn-warning btnfoc10"><a href="admin.jsp" class="btnfoc3">Log Out</a> </button>
             </div>
     </div>
     </div>
       <div class="body1">
    
        <div class="slider">
            
            <div class="slides">
                
            
                <input type="radio" name="radio-btn" id="radio1">
                <input type="radio" name="radio-btn" id="radio2">
                <input type="radio" name="radio-btn" id="radio3">
                <input type="radio" name="radio-btn" id="radio4">
                  
                <div class="slide first">
                    <img src="slide1.jpg" alt="">
                    
                    
        <div class="hero container">
            
            </div>
                         
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

         <section id="services">
        <div class="services container">
            
             <div class="service-bottom">
             <div class="service-item">
              <div class="icon"> <img src="icon.png" alt="icon">
                    </div>
                    <h2>Hotel Details</h2>
                    <p>Today we are going create a website which will be a nice one page website.
                         This is for html & css practice and through this project
                          we will see many things like how we can</p>
                     <div>
                <a href="hotelupdate.jsp"><<<< Click Here To Visit >>>></a>
            </div>
                 </div>
        <div class="service-item">
         <div class="icon"> <img src="icon.png" alt="icon">
            </div>
            <h2>Event Details </h2>
            <p>Today we are going create a website which will be a nice one page website.
               This is for html & css practice and through this project
               we will see many things like how we can</p>
            <div>
                <a href="eventupdate.jsp"><<<< Click Here To Visit >>>></a>
            </div>
                </div>
        <div class="service-item">
        <div class="icon"> <img src="icon.png" alt="icon">
         </div>
         <h2>Hotel Booking</h2>
         <p>Today we are going create a website which will be a nice one page website.
            This is for html & css practice and through this project
            we will see many things like how we can</p>
          <div>
                <a href="bookdetail.jsp"><<<< Click Here To Visit >>>></a>
            </div>
            </div>   
                 
                 <div class="service-item">
         <div class="icon"> <img src="icon.png" alt="icon">
            </div>
            <h2>Event Interest</h2>
            <p>Today we are going create a website which will be a nice one page website.
               This is for html & css practice and through this project
               we will see many things like how we can</p>
            <div>
                <a href="interestdetail.jsp"><<<< Click Here To Visit >>>></a>
            </div>
                </div>


            </div>
        </div>
         </section>


<section id="footer">
      <div class="footer container">
          <div class="brand"><h1><span>Sri&nbsp;</span>Lankan&nbsp;<span></span><span>Paradise</span></h1></div>
          <h2>...Find Your Dream Destination With Us...</h2>
          <div class="social-icon">
              <div class="social-item">
                  <a href="#"><img src="facebook.png" alt="facebook"></a>
              </div>
              <div class="social-item">
                <a href="#"><img src="whatsapp.png" alt="whatsapp"></a>
            </div>
            <div class="social-item">
                <a href="#"><img src="instagram.png" alt="instagram"></a>
            </div>
          </div>
          <p>Copyright © 2020 Tour(Pvt)Ltd.&nbsp; All rights reserved</p>
      </div>  
    </section>


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


