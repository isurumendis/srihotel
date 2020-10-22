<%-- 
    Document   : eventA
    Created on : Oct 19, 2020, 10:38:13 AM
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
     <link rel="stylesheet" type="text/css" href="css/style1.css">
     <link rel="stylesheet" type="text/css" href="css/hbook.css"/>
      <link rel="stylesheet" type="text/css" href="css/admincss.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css" integrity="sha512-17EgCFERpgZKcm0j0fEq1YCJuyAWdz9KUtv1EjVuaOz8pDnh/0nZxmU6BBXwaaxqoi9PQXnRWqlcDB027hgv9A==" crossorigin="anonymous" /><!--
-->      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css" integrity="sha512-yHknP1/AwR+yx26cB1y0cjvQUMvEa2PFzt1c9LlS4pRQ5NOTZFWbhBig+X9G9eYW/8m0/4OXNx8pxJ6z57x0dw==" crossorigin="anonymous" />
     
     <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js" integrity="sha512-XtmMtDEcNz2j7ekrtHvOVR4iwwaD6o/FUJe6+Zq+HgcCsk3kj4uSQQR8weQ2QVj1o0Pk6PwYLohm206ZzNfubg==" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
        
        <title>WELCOME TO SRI LANKA</title>
    </head>
    <body>
       <style>
     <%@ include file="css/style1.css"%>
     <%@ include file="css/hbook.css"%>
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
          <li class="active"><a href="eventA.jsp">Events</a></li>
          <li ><a href="ReservationA.jsp">Hotels Booking</a></li>
          <li ><a href="adminp.jsp">Add Post</a></li>
          
          </ul>
         <button type="submit" class="btn btn-warning btnfoc10"><a href="admin.jsp" class="btnfoc3">Log Out</a> </button>
         <button type="submit" class="btn btn-warning btnfoc10"><a href="poupselect.jsp" class="btnfoc3">Post Update</a> </button>
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
               <h3>Get Wonderful Event Experience<span></span></h3>
               </div>
            </div>
                    <p>Browse our guide to the latest upcoming events in Sri Lanka including annual events and festivals
                        throughout the year around the island on Know Sri Lanka.An event is something that happens, especially 
                        when it is unusual or important. You can use events to describe all the things that are happening in a
                        particular situation. ... An event is a planned and organized occasion.Discover the fantastic sustainable 
                        tourism trade shows, conferences and events for your tour.Tourism is travel for pleasure or business; also
                        the theory and practice of touring, the business ... Globally, international tourism receipts (the travel
                        item in balance of ... to a type of tourism, linked to the cinema, which relates to events, conventions 
                        and more like the case of the Dizionario del Turismo Cinematografico.</p>        
           </div>
                
                <div class="slide">
                    <img src="slide2.jpg" alt="">
                    
                </div>
                <div class="slide">
                    <img src="slide3.jpg" alt="">
                </div>
                <div class="slide">
                    <img src="e11.jpg" alt="">
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
        
    <div class="body2">
       <div class="slider1"> 
        <%
          Connection conn =null;
          Statement st =null;
          ResultSet rs =null;
             
             try{
                 
                 
                 Class.forName("com.mysql.jdbc.Driver");
                 conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","");
                 st = conn.createStatement();
                 String qry="select * from uplod";
                 rs=st.executeQuery(qry);
                
                 
                 while(rs.next()){
                     
                String id = rs.getString("id");
                String links = rs.getString("links");
                     %>
        
         
        <div class="col-sm-3">
           
        <div class="container1">
            
            <ul>
                <li class="item-a">
                     <div class="box">
                
                <img src="hote.png" class="model">
                
                <p class="marvel1"><%=rs.getString(1)%></p>
                     <p class="marvel"><%=rs.getString(2)%></p>
                     <span class="v2"></span>
                     <div class="details">
                         <p><%=rs.getString(3)%></p>
                         
                     </div>
                    </div>
                         <p class="marvel2"><span class="span1">Organizer:</span><br><%=rs.getString(5)%></p>
                     <p class="marvel3"><span class="span1">Contact No:</span><br><%=rs.getString(6)%></p>
                     <div class="booki">
                         <a href="eventbook.jsp?id=<%=id%>">Interested</a>
                     </div>
                     <div class="booki2">
                         <a href="<%=rs.getString(7)%>">Details >>></a>
                     </div>
                     
                </li>    
            </ul>
                     
                
        </div>
                     
        </div>
                     
                          
                        
               
      
               <%
                 }
                 }catch(Exception ex){}
                 %>
                    
        </div> 
        </div>
                 
                 <section class="parent">
                     <section id="services">
        <div class="services container">
            <div class="service-top">
                <h1 class="section-title"><span>Culture</span> In<span> Sri</span>Lanka</h1>
                <p>Sri Lanka is one of the few countries with a very vast and rich cultural diversity. 
                    The culture is itself very unique and thereby contributes to the Sri Lankan identity.
                    Sri Lankan culture includes a lot of customs and rituals, whish date to more than 2000
                    years which were handed down from generation to generation. The most prominent feature 
                    of the Sri Lankan is its colourful festivals , which is one of the main tourist attractions. 
                    Religion plays an important role in molding the Sri Lankan culture and traditions.One of the
                    main features of the culture is its Indian and Europen influence. Since most of the time Sri
                    Lankan kings married Indian princesses they incorporated Indian culture into ours but still
                    preserving the unique Sri Lankan identity. The European influence was a result of invasion 
                    from the Dutch and Portugese and finally the British. Hospitality is also one of the prominent 
                    characteristics of the culture, making Sri Lankans one of the friendly nations in the world.</p>
            </div>
             </div>
        </div>
         </section>
               
             <section class="child">
                         <div id="block">
                     <h1>Uber</h1>
                 <div class="imgZoom">
                    <a href="link 1"><img src="uber.png"></a> 
                 </div> 
                 </div><br>
                  <div id="block">
                  <h1>Pickme</h1>    
                 <div class="imgZoom">
                     <a href="link 1"><img src="pickme.jfif"></a>   
                 </div>  
                 </div><br>
                  <div id="block">
                  <h1>Yogo</h1>    
                 <div class="imgZoom">
                     <a href="link 1"><img src="yogo.png"></a>   
                 </div>  
                 </div><br>
                  <div id="block">
                  <h1>Kangaroo</h1>    
                 <div class="imgZoom">
                     <a href="link 1"><img src="kangaroo.png"></a>   
                 </div>  
                 </div><br>
                     </section>
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
        $('.slider1').slick({
  dots: true,
  infinite: false,
  speed: 300,
  slidesToShow: 4,
  slidesToScroll: 2,
  responsive: [
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 3,
        infinite: false,
        dots: true
      }
    },
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 2
      }
    },
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1
      }
    }
    // You can unslick at a given breakpoint now by adding:
    // settings: "unslick"
    // instead of a settings object
  ]
});
    </script>
     
        
                     
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


