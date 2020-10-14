<%-- 
    Document   : rateRRC
    Created on : Aug 19, 2020, 12:50:31 PM
    Author     : Isuru Mendis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import=" java.sql.*"%>
<%@page import=" java.sql.*"%>
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
       background-image: url("i.jpg");
       height:760px;
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
     }
     .title9{
         color: white;
	background-color: black;
  border: 1px solid black;
  opacity: 0.7;
  filter: alpha(opacity=60); 
     }
     
      .button-success {
            background: rgb(28, 184, 65); 
                    color: white;
                    width: 250px;
                    height: 65px;
            border-radius: 1px;
            text-shadow: 0 1px 1px rgba(0, 0, 0, 0.2);
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
          <li ><a href="adminC.jsp">Add Post</a></li>
          <li class="active"><a href="rateRRC.jsp">Ratings</a></li>
          
         </ul>
             </div>
     </div>
     </div>
        <center>
        <br><br><br><br><br><br>
        
        <table border="3" width="70%" class='title8'>
            <tr class='title9' height='30px'>
                <td><b>ID</b></td>
                <td><b>EVENT NAME</b></td>
                <td><b>RATINGS</b></td>  
            </tr>
            
        <%
          Connection conn =null;
          Statement st =null;
          ResultSet rs =null;
             
             try{  
                 Class.forName("com.mysql.jdbc.Driver");
                 conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","");
                 st = conn.createStatement();
                 
                 String qry="select * from ratin";
                 rs=st.executeQuery(qry);
                 while(rs.next()){
                     %>
                     <tr class="title8">
                         <td><%=rs.getString(1)%></td>
                         <td><%=rs.getString(2)%></td>
                         <td><%=rs.getString(3)%></td>      
                     </tr>
                     <%
                 }        
             }catch(Exception ex){}
                 %>
        </table>
    </center>
   
    <center>
        <br><br><br><br><br><br>
        
        <table border="3" width="70%" class='title8'>
            <tr class='title9' height='30px'>
                <td><b>ID</b></td>
                <td><b>HOTEL NAME</b></td>
                <td><b>RATINGS</b></td>  
            </tr>
            
        <%
             try{  
                 Class.forName("com.mysql.jdbc.Driver");
                 conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","");
                 st = conn.createStatement();
                 
                 String qry="select * from hbook";
                 rs=st.executeQuery(qry);
                 while(rs.next()){
                     %>
                     <tr class="title8">
                         <td><%=rs.getString(1)%></td>
                         <td><%=rs.getString(2)%></td>
                         <td><%=rs.getString(3)%></td>      
                     </tr>
                     <%
                 }        
             }catch(Exception ex){}
                 %>
        </table>
    </center>
    
    
    
    </body>
</html>
