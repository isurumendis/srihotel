<%-- 
    Document   : hotel
    Created on : Oct 13, 2020, 1:09:59 PM
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
      <link rel="stylesheet" type="text/css" href="css/admincss.css">
    <script type="text/javascript">
        
        </script>
        <title>WELCOME TO SRI LANKA</title>
    </head>
    <body>
        <style>
          body{
       background-image: url("12.jpg");
       height:760px;
      width: 100%;
      background-size:cover; 
     }
     
     .title8{

	width: 70%;
	height: 30px;
	background-color: white;
  border: 1px solid black;
  opacity: 0.7;
  filter: alpha(opacity=60); 

}


.form-group1{

	 padding-left: 350px;
 padding-top: 0px;
 font-weight: bold;
 color: White;
 font-size: 14px;

 }
 h1{
     
     color:purple; 
 }
   .btnfoc6{
    
    color: white;
	margin-top: 7px;
       font-weight: bold ;
       margin-left: 360px;
}

.btnfoc7{
    color: white;
	padding-bottom: 70px;
       font-weight: bold ;
    
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
          
          <li ><a href="adminhome.jsp">Home</a></li>
          <li ><a href="">About Us</a></li>
        
          <li ><a href="">Historical</a></li>
          <li ><a href="eventR.jsp">Events</a></li>
          <li ><a href="Reservation.jsp">Hotels Booking</a></li>
          <li ><a href="adminp.jsp">Add Post</a></li>
          <li class="active"><a href="hotel.jsp">Reservation Request Form</a></li>
          
         </ul>
           <button type="submit" class="btn btn-warning btnfoc6 "><a href="index.jsp" class="btnfoc7">Log Out</a> </button>
             </div>
     </div>
     </div>
     <br>
        
        
    <center><h1><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;...RESERVATION FORM...</b></h1></center><br>
        
        <div class="container" id="imag">
        <form name="hform" action="data" method="get">
            
            <div class="form-group  form-group1 " >
                Enter Name:<input type="text" name="t1" class="form-control title8" value="" placeholder="Full Name">
            </div>
            <div class="form-group  form-group1 " >
                Enter Email:<input type="text" name="t2"  class="form-control title8" value="" placeholder="Email">
              </div>
            <div class="form-group  form-group1 " >
                Enter Phone Number:<input type="text" name="t3"  class="form-control title8" value="" placeholder="Phone Number">
              </div>
            <div class="form-group  form-group1 " >
            Enter Check In:<input type="date" name="t4"  class="form-control title8" value="">
              </div>
            <div class="form-group  form-group1 " >
                Enter Check Out:<input type="date" name="t5"  class="form-control title8" value="">
              </div>
            <div class="form-group  form-group1 " >
                Enter Number Of Rooms:<input type="text" name="t6"  class="form-control title8" value="" placeholder="Number Of Rooms">
              </div>
            <div class="form-group  form-group1 " >
                Enter Passport Number:<input type="text" name="t7"  class="form-control title8" value="" placeholder="Passport Number">
              </div>
            <div class="form-group  form-group1 " >
            Enter Message:<input type="text" name="t8"  class="form-control title8" value="" placeholder="More details about your inquary">
              </div>
            
              <div class="form-group  form-group1 " >
  <button type="submit" value="Submit" class="btn btn-success">Submit</button>
  <button type="reset" value="Cancel" class="btn btn-warning">Cancel</button>
  </div>
            
        
            
            <%--
              String name= request.getParameter("t1");
             String email= request.getParameter("t2");
             String phonenumber= request.getParameter("t3");
             String checkin= request.getParameter("t4");
             String checkout= request.getParameter("t5");
              String norooms= request.getParameter("t6");
              String ppnumber= request.getParameter("t7");
             String message= request.getParameter("t8");
         
             
             Connection conn =null;
             Statement st =null;
             
             try{
                 
                 
                 Class.forName("com.mysql.jdbc.Driver");
                 conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","");
                 st = conn.createStatement();
                 
                 String qry="INSERT INTO `room` (`id`, `name`, `email`, `phonenumber`, `checkin`, `checkout`, `norooms`, `ppnumber`, `message`) VALUES (NULL, '"+name+"', '"+email+"', '"+phonenumber+"', '"+checkin+"', '"+checkout+"', '"+norooms+"', '"+ppnumber+"', '"+message+"')";
                 
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

