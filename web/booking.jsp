<%-- 
    Document   : booking
    Created on : Aug 8, 2020, 10:00:42 AM
    Author     : Isuru Mendis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

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
                   
        <title>WELCOME TO SRI LANKA</title>
    </head>
    <body>
        <style>
            
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
          
            <li ><a href="newuserhome.jsp">Home</a></li>
          <li ><a href="">About Us</a></li>
          <li ><a href="">Historical</a></li>
          <li ><a href="eventRC.jsp">Events</a></li>
          <li ><a href="Reservation.jsp">Hotels Booking</a></li>
          <li class="active"><a href="booking.jsp">Add Hotels</a></li>
          
         </ul>
            <button type="submit" class="btn btn-warning btnfoc10"><a href="index.jsp" class="btnfoc3">Log Out</a> </button>
             </div>
     </div>
     </div>
        
        <br><br><br>
        
        <div class="container" id="imag">
            
        <form name="bform" action="book" method="get">
            
            <div class="form-group  form-group10 " >
                Hotel Name:<input type="text" name="b1" class="form-control title9" value="" placeholder="Hotel Name">
            </div>
            <div class="form-group  form-group10 " >
                 Description:<textarea type="text" name="b2"  class="form-control title9 checkLimit" value="" placeholder="Description"  maxlength="150"></textarea>
                 <span id="count">150</span> Remaining Character
              </div>
            <div class="form-group  form-group10 " >
                Contact Number:<input type="text" name="b3"  class="form-control title9" value="" placeholder="Contact Number">
              </div>
            
              <div class="form-group  form-group10 " >
            Email:<input type="text" name="b4"  class="form-control title9" value="" placeholder="Email">
              </div>
            
            <div class="form-group  form-group10 " >
            Name:<input type="text" name="b5"  class="form-control title9" value="" placeholder="Name">
              </div>
            
         <div class="form-group  form-group10 " >
            Website URL:<input type="text" name="b6"  class="form-control title9" value="https://" >
              </div>
            
             <div class="form-group  form-group10 " >
             <button type="submit" value="Submit" class="btn btn-success">Submit</button>
             <button type="reset" value="Cancel" class="btn btn-warning">Cancel</button>
             </div>
            
  
             <%--
              String hotelname= request.getParameter("b1");
             String description= request.getParameter("b2");
             String contactno = request.getParameter("b3");
             String email= request.getParameter("b4");
              String name= request.getParameter("b5");
             
             
              
             Connection conn =null;
             Statement st =null;
             
             try{
                 
                 
                 Class.forName("com.mysql.jdbc.Driver");
                 conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","");
                 st = conn.createStatement();
                 
             String qry="INSERT INTO `booking` (`id`, `hotelname`, `description`, `contactno`, `email`, `name`) VALUES (NULL, '"+hotelname+"', '"+description+"', '"+contactno+"', '"+email+"', '"+name+"')";
             
                st.executeUpdate(qry);
                 out.print("data succsess");
                 
             }catch(Exception ex)
             {
                 out.print (ex.getMessage());
             }
             
             
             
             --%>
  
        </form>
            
        </div>
 
              <script language="javascript" type="text/javascript">
    var maxLength = 150;
    $('.checkLimit').keyup(function() {
      var textlen = maxLength - $(this).val().length;
      $('#count').text(textlen);
    });
</script>
    </body>
</html>

