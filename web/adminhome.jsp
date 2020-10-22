<%-- 
    Document   : adminhome
    Created on : Oct 19, 2020, 10:45:07 AM
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
     <%@ include file="css/newuser.css"%>
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
          <li class="active"><a href="adminhome.jsp">Home</a></li>
          <li ><a href="">About Us</a></li>
          <li ><a href="">Historical</a></li>
          <li ><a href="eventA.jsp">Events</a></li>
          <li ><a href="ReservationA.jsp">Hotels Booking</a></li>
          <li ><a href="adminp.jsp">Add Post</a></li>
          
          
          
         </ul>
         
           <button type="submit" class="btn btn-warning btnfoc10"><a href="admin.jsp" class="btnfoc3">Log Out</a> </button>
            <button type="submit" class="btn btn-warning btnfoc10"><a href="poupselect.jsp" class="btnfoc3">Post Update</a> </button>
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
                    <p>Sri Lanka, officially the Democratic Socialist Republic of Sri Lanka, is an island country in South Asia,
                        located in the Indian Ocean southwest of the Bay of Bengal and southeast of the Arabian Sea 
                        Travel and find happiness within yourself. Allow us to convince you. You won't regret it. 
                        Find the best time to go and the best places to visit for a true Sri Lanka experience.Find travel ideas 
                        for planning your holiday to Sri Lanka. Discover things to see and do, places to stay and more.</p>        
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
            <div class="service-top">
                <h1 class="section-title">Ser<span>Vi</span>ces</h1>
                <p>Apart from being a large tea producer, Sri Lanka is famous for its cinnamon, an indispensable ingredient for many of its fabulous food.
                    It is said to have originated from the teardrop nation and first found by the Egyptians in 2000 BC. Today, Sri Lanka is still a leading 
                    exporter of the world's cinnamon.World best tourism services are given in Sri Lanka.The central feature of Sri Lankan cuisine is boiled 
                    or steamed rice, served with a curry of fish or chicken , along with other curries made with vegetables, lentils, or fruits. Dishes are 
                    accompanied by pickled fruits or vegetables, chutneys, and sambols.The popular and most basic form of tourism is leisure tourism, under 
                    which family tourism, cultural tourism, religious tourism, sports tourism are included. Business tourism is also getting momentum. 
                    Ceylon Tea, being that Sri Lanka is most known for, is considered by the cleanest tea in the world by the ISO (with the least pesticide 
                    residue quantities). So if you like tea, you'll love Sri Lanka!  </p>
            </div>
            <div class="service-bottom">
             <div class="service-item">
              <div class="icon"> <img src="icon.png" alt="icon">
                    </div>
                    <h2>Events</h2>
                    <p>There’s so much to do here in Sri Lanka that you wouldn’t want to miss- a here’s your one-stop platform for vibrant and dynamic Sri Lanka Events.bringing the world live experiences.</p>
                     <div>
                <a href="eventA.jsp"><<<< Click Here To Visit >>>></a>
            </div>
                 </div>
        <div class="service-item">
         <div class="icon"> <img src="icon.png" alt="icon">
            </div>
            <h2>Hotels</h2>
            <p>The total number of SLTDA registered accommodation establishments as at 31st March 2018 was 2,131. The number of classified tourist hotels was 141 and among them, 20 were five-star hotels.</p>
            <div>
                <a href="ReservationA.jsp"><<<< Click Here To Visit >>>></a>
            </div>
                </div>
        <div class="service-item">
        <div class="icon"> <img src="icon.png" alt="icon">
         </div>
         <h2>Historical</h2>
         <p>Visit Sri Lankan historical places and explore Cultural Triangle namely sacred city of Anuradhapura,ancient city of Polonnaruwa, and the ancient city of Sigiriya.to visit in Sri Lanka that are of historical importance;</p>
          <div>
                <a href="#"><<<< Click Here To Visit >>>></a>
            </div>
            </div>         


            </div>
        </div>
         </section>
       
       <section id="contact">
      <div class="contact container">
          <div><h1 class="section-title">Contact <span>Info</span></h1></div>
          <div class="contact-items">
              <div class="contact-item">
            <div><img src="phone.png" alt="phone"></div>
            <div class="contact-info">
                <h1>Phone</h1>
                <h2>0111234567</h2>
                <h2>0111234568</h2>
            </div>
              </div>
              <div class="contact-item">
                <div><img src="mail.png" alt="mail"></div>
                <div class="contact-info">
                    <h1>Email</h1>
                    <h2>info@gmail.com</h2>
                    <h2>info1@gmail.com</h2>
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