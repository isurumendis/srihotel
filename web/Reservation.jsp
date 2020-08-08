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
     <link href="css/bootstrap.min.css" rel="stylesheet">
     <link rel="stylesheet" type="text/css" href="css/style.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
     <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript">
        
        </script>
        <title>JSP Page</title>
    </head>
    <body>
    
     
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


