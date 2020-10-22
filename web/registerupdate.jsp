<%-- 
    Document   : registerupdate
    Created on : Oct 21, 2020, 11:57:27 AM
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
      <link rel="stylesheet" type="text/css" href="css/admincss.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js" integrity="sha512-XtmMtDEcNz2j7ekrtHvOVR4iwwaD6o/FUJe6+Zq+HgcCsk3kj4uSQQR8weQ2QVj1o0Pk6PwYLohm206ZzNfubg==" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script type="text/javascript">
        
        </script>
        <title>WELCOME TO SRI LANKA</title>
    </head>
    <body>
        <style>
          body{
       background-image: url("Th.jpg");
       height:750px;
      width: 100%;
      background-size:cover; 
     }
     
     .title8{

	width: 70%;
	height: 25px;
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
 font-size: 15px;

 }
 h1{
     
     color:yellow; 
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
          
          <li ><a href="index.jsp">Home</a></li>
          <li ><a href="">About Us</a></li>
          <li class="active"><a href="booking.jsp">Registration</a></li>
          
         </ul>
             </div>
     </div>
     </div>
        
        
 
        <br><br>
        <center><h1><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;...REGISTRATION FORM...</b></h1></center><br>
        
        
        <div class="container" id="imag">
        <form name="rform" action="registerupd" method="get">
            
             <%
            
                        Connection con;
                        PreparedStatement pst;
                        ResultSet rs;
                        
                       Class.forName("com.mysql.jdbc.Driver");
                       con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","");
                       
                       String id = request.getParameter("id");
                       pst = con.prepareStatement("select * from registerf where id = ? ");
                       pst.setString(1, id);
                       rs = pst.executeQuery();
                       
                      while(rs.next())
                      {
            
            %>
            
            <div  class="form-group  form-group1 " >
                ID:<input type="text" name="f0" class="form-control title8" value="<%= rs.getString("id")%>" placeholder="ID Number">
            </div>
            <div class="form-group  form-group1 " >
                First Name:<input type="text" name="f1" class="form-control title8" value="<%= rs.getString("fname")%>" placeholder="First Name">
            </div>
            
            <div class="form-group  form-group1 " >
                Last Name:<input type="text" name="f2"  class="form-control title8" value="<%= rs.getString("lname")%>" placeholder="Last Name">
              </div>
            
            <div class="form-group  form-group1 " >
                Email:<input type="text" name="f3"  class="form-control title8" value="<%= rs.getString("email")%>" placeholder="Email">
              </div>
            
             <div class="form-group  form-group1 " >
                Password:<input type="password" name="f4"  class="form-control title8" value="<%= rs.getString("password")%>" placeholder="Password">
              </div>
            
             <div class="form-group  form-group1 " >
                Country:<input type="text" name="f5"  class="form-control title8" value="<%= rs.getString("country")%>" placeholder="Contry">
              </div>
            
            <div class="form-group  form-group1 " >
                Address:<input type="text" name="f6"  class="form-control title8" value="<%= rs.getString("address")%>" placeholder="Address">
              </div>
            
            <div class="form-group  form-group1 " >
                Phone Number:<input type="text" name="f7"  class="form-control title8" value="<%= rs.getString("pnumber")%>" placeholder="Phone Number">
              </div>
       
            <div class="form-group  form-group1 " >
                Passport Number:<input type="text" name="f8"  class="form-control title8" value="<%= rs.getString("ppnumber")%>" placeholder="Passport Number">
              </div>
            
           <% } %>
            
              <div class="form-group  form-group1 " >
  <button type="submit" value="Submit" class="btn btn-success">Submit</button>
  <button type="reset" value="Cancel" class="btn btn-warning">Cancel</button>
  </div>
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
