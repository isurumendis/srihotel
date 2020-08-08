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
    <script type="text/javascript">
        
        </script>
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
          
          <li ><a href="userhome.jsp">Home</a></li>
          <li ><a href="">About Us</a></li>
          <li ><a href="">Historical</a></li>
          <li ><a href="eventRC.jsp">Events</a></li>
          <li ><a href="Reservation.jsp">Hotels Booking</a></li>
          <li ><a href="">Sri Lankan Beaches</a></li>
           <li ><a href="">Wild Life & Nature</a></li>
          <li ><a href="adminC.jsp">Add Post</a></li>
          <li class="active"><a href="booking.jsp">Add Hotels</a></li>
          <li ><a href="rateRRC.jsp">Ratings</a></li>
         </ul>
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
                Description:<input type="text" name="b2"  class="form-control title9" value="" placeholder="Description">
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
             <button type="submit" value="Submit" class="btn btn-success">Submit</button>
             <button type="reset" value="Cancel" class="btn btn-warning">Cancel</button>
            </di>
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
    </body>
</html>

