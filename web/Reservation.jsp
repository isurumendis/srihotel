<%-- 
    Document   : Reservation
    Created on : Aug 8, 2020, 10:04:56 AM
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
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/rating.css">
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
       background-image: url("wp.jpg");
       height:770px;
      width: 100%;
      background-size:cover; 
     }
            
       
     .title8{
         
         text-align: center;
           color:black;
           font-weight: bold;
	background-color: white;
  border: 1px solid black;
  opacity: 0.7;
  filter: alpha(opacity=60); 
  border-collapse: separate;
  border-spacing:20px 55px;
  margin-top:15px;
     }
     .btnsi1{
    
    width: 120px;
    height: 40px;
     filter: alpha(opacity=60); 
   font-size: 20px;
   font-weight: bold;
   margin-top: 10px;
   
    
}

.btns2{
    color: white;
    font-size: 15px;
}

.table1{
    background-color: black;
     border: 1px solid black;
  opacity: 0.7;
  filter: alpha(opacity=60); 
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
          <li class="active"><a href="Reservation.jsp">Hotels Booking</a></li>
          <li ><a href="">Sri Lankan Beaches</a></li>
          <li ><a href="">Wild Life & Nature</a></li>
          <li ><a href="adminC.jsp">Add Post</a></li>
          <li ><a href="rateRRC.jsp">Ratings</a></li>
          
         </ul>
             </div>
     </div>
     </div>
        
        
         <center>
               <form name="rateform1" action="hratec" method="POST">
            <table border="2" class="table1">
                <tr>
                    <td>
                        <label class="btns2">Enter Hotel Name And Rate It</label>
    <input type="text" name="r1">
                    </td>
                    <td><input class="star star-5" id="star-5" type="radio" name="star" value="5" />
    <label class="star star-5" for="star-5"></label>
    <input class="star star-4" id="star-4" type="radio" name="star" value="4" />
    <label class="star star-4" for="star-4"></label>
    <input class="star star-3" id="star-3" type="radio" name="star" value="3" />
    <label class="star star-3" for="star-3"></label>
    <input class="star star-2" id="star-2" type="radio" name="star" value="2" />
    <label class="star star-2" for="star-2"></label>
    <input class="star star-1" id="star-1" type="radio" name="star" value="1" />
    <label class="star star-1" for="star-1"></label></td>
      <td><input type="submit" value="submit"></td>
    </tr>
            </table>
                   
    </form>
            </center>
        
    
     
         <%
          Connection conn =null;
          Statement st =null;
          ResultSet rs =null;
             
             try{
                 
                 
                 Class.forName("com.mysql.jdbc.Driver");
                 conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","");
                 st = conn.createStatement();
                 String qry="select * from booking";
                 rs=st.executeQuery(qry);
                
                 
                 while(rs.next()){
                     %>
                             
                     <div class="col-md-4">
                    <div class="single-blog">
                    <h2><%=rs.getString(2)%></h2>
                    <p class="twoline"><%=rs.getString(3)%></p>
                       
                    <label> Tel:</label>
                    <p><%=rs.getString(4)%></p>
                    
                    <div >
                        <label class="lable1">Email:</label>
                        <label class="lable2">Advertiser:</label>  </div>
                        
                        <div> 
                    <p class="pleft"><%=rs.getString(5)%></p>
                    <p class="prigh" ><%=rs.getString(6)%></p></div>
                    
                    <div><button type="submit" class="btn btn-success btnsi1 "><a href="hotelC.jsp" class="btns2">BOOKING</a> </button></div>
                  
                            
                        
                            
                        
                    </div>
                </div>
                     
        
               
                     <%
                 }
                      
             }catch(Exception ex){}
                 %>
                     
                     
        
                        
    </body>
</html>


