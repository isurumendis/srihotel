<%-- 
    Document   : admin
    Created on : Aug 19, 2020, 10:32:14 AM
    Author     : Isuru Mendis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <link href="css/bootstrap.min.css" rel="stylesheet">
     <link rel="stylesheet" type="text/css" href="css/style.css">
    <script type="text/javascript">
        
        </script>
        
        <title>WELCOME TO SRI LANKA</title>
    </head>
    <body>
        <style>    
            
       body{
       background-image: url("img1.jpg");
       height:780px;
      width: 100%;
      background-size:cover; 
     }
     h1{
         color: darkgoldenrod;
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
          <li ><a href="Local.php">About Us</a></li>
          <li class="active"><a href="admin.jsp">Admin Account</a></li>
          
          
         </ul>
             </div>
     </div>
     </div>
    
        <div class="container" ><br><br>
            &nbsp; &nbsp; &nbsp; <center> &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; <h1><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;...PLEASE LOG IN...</b></h1></center><br><br>
       <form name="form2" action="admin" method ="POST">
  <div class="form-group  form-group1 " >
   <lable for="User Name">User Name:</lable>
   <input type="text" name="un" class="form-control title" placeholder="Enter User Name">
  </div><br>

   <div class="form-group  form-group1 " >
   <lable for="Password">Password:</lable>
   <input type="password" name="pw" class="form-control title1" placeholder="Enter Password">
   </div>
             <div>
                 &nbsp;&nbsp;&nbsp;<center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" class="btn btn-primary " class="btnfocl">Log In</button>
         
    <button type="reset" class="btn btn-danger "><a href="" class="btnfocl">Reset</a> </button></center>
             </div>
           
</form>
        </div>
    
    </body>
</html>
