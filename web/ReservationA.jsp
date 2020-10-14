<%-- 
    Document   : ReservationA
    Created on : Aug 25, 2020, 11:38:59 AM
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
            
            <%@ include file="css/style.css"%>
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

.single-blog
    {
     
      box-shadow: 0px 0px 20px 1px rgba(0,0,0,0.2);
        padding: 30px;
        margin-top: 100px;
        margin-left: 50px;
        margin-right: 50px;
        background-color: #fff;
        box-sizing: border-box;
        width: auto;
        height: 400px;
       
        
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
           <li ><a href="Details.jsp">Details</a></li>
          <li ><a href="adminC.jsp">Add Post</a></li>
          <li ><a href="rateRRC.jsp">Ratings</a></li>
          
         </ul>
           <button type="submit" class="btn btn-primary btnfoc5 " id="fpword"><a href="hotelupdate.jsp">Post Update</a> </button>
            <button type="submit" class="btn btn-warning btnfoc4"><a href="adminhome.jsp" class="btnfoc3">Log Out</a> </button>
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
                        <h3 class="padd"><%=rs.getString(1)%></h3>
                        <h2 class="twoline1"><%=rs.getString(2)%></h2>
                    <p class="twoline"><%=rs.getString(3)%></p>
                       
                    <label> Tel:</label>
                    <p><%=rs.getString(4)%></p>
                    
                    <div >
                        <label class="lable1">Email:</label>
                        <label class="lable2">Advertiser:</label>  </div>
                        
                        <div> 
                    <p class="pleft"><%=rs.getString(5)%></p>
                    <p class="prigh" ><%=rs.getString(6)%></p></div>
                    
                    <div><button type="submit" class="btn btn-success btnsi1 lable5"><a href="hotelC.jsp" class="btns2">BOOKING</a> </button>
                        <button type="submit" class="btn btn-primary"><a href="<%=rs.getString(7)%>" class="lable3">more...</a> </button>
                        <button type="submit" class="btn btn-primary btnfoc5 " id="fpword"><a href="hotelupdate.jsp">Post Update</a> </button>
                      
                    </div>
                  
                            
                        
                            
                        
                    </div>
                </div>
                    
                    
                     
        
               
                     <%
                 }
                      
             }catch(Exception ex){}
                 %>
                     
             
        
                  
        
        <%
              try{
            String host ="jdbc:mysql://localhost:3306/hotel";
            
            Statement stat = null;
            ResultSet res = null;
            PreparedStatement stmt= null;
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conn=(Connection)DriverManager.getConnection(host, "root","");
                 st = conn.createStatement();
                 String qry="select * from booking";
                 rs=st.executeQuery(qry);
               %> 
                 
               <form name="pcform1" action="dataupdat" method="get" >
                   
                   <%
                      stat = conn.createStatement();
                      String u = request.getParameter("u");
                      int num = Integer.parseInt(u);
                      String data = "select * from booking";
                      res = stat.executeQuery(data);
                      while(rs.next()){
                     %>
                           
                      
                      <div class="popup1">
                  <div class="popup-content1">
                      
                      <img src="close.png" alt="Close" class="close" >
                      <img src="icon.png" alt="user">
                      <form name="pcform1" action="dataupdat" method="get" >
                          
              <div class="form-group  form-group10 " >
                Post ID:<input type="text" name="ch0" class="form-control title9" value="<%=rs.getString(1)%>" placeholder="Post ID Number">
            </div>            
                          
            <div class="form-group  form-group10 " >
                Hotel Name:<input type="text" name="ch1" class="form-control title9" value="<%=rs.getString(2)%>" placeholder="Hotel Name">
            </div>
            <div class="form-group  form-group10 " >
                Description:<input type="text" name="ch2"  class="form-control title9" value="<%=rs.getString(3)%>" placeholder="Description">
              </div>
            <div class="form-group  form-group10 " >
                Contact Number:<input type="text" name="ch3"  class="form-control title9" value="<%=rs.getString(4)%>" placeholder="Contact Number">
              </div>
            
              <div class="form-group  form-group10 " >
            Email:<input type="text" name="ch4"  class="form-control title9" value="<%=rs.getString(5)%>" placeholder="Email">
              </div>
            
            <div class="form-group  form-group10 " >
            Name:<input type="text" name="ch5"  class="form-control title9" value="<%=rs.getString(6)%>" placeholder="Name">
              </div>
            
         <div class="form-group  form-group10 " >
            Website URL:<input type="text" name="ch6"  class="form-control title9" value="<%=rs.getString(7)%>" placeholder="Website URL">
              </div>
            
             <div class="form-group  form-group10 " >
             <button type="submit" value="Submit" class="btn btn-success">Submit</button>
             <button type="reset" value="Cancel" class="btn btn-warning">Cancel</button>
             </div>
<!--                 <input type="submit" value="Log In" class="btn btn-primary">-->
              
                    
                 </div> 
          </div>      
                   </form>
              
              
              
         <script type="text/javascript">
            document.getElementById("fpword").addEventListener('click',
            function(){
            document.querySelector('.popup1').style.display = 'flex';
            });
            
            document.querySelector(".close").addEventListener("click",
            function(){
                document.querySelector(".popup1").style.display = "none";
            });
        </script>
                    
             
      
           <%
                 }
                      
             }catch(Exception ex){}
                 %>          
        
        
    </body>
</html>

