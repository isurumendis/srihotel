<%-- 
    Document   : slider
    Created on : Oct 13, 2020, 2:14:38 PM
    Author     : Isuru Mendis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import=" java.sql.*"%>
<%@page import="java.io.*" %>
<%@page language="java" %> 

<!DOCTYPE html>
<html>
    <head>
         <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
              
               <link rel="stylesheet" type="text/css" href="css/lightslider.css"/>
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/rating.css">
     <link href="css/bootstrap.min.css" rel="stylesheet">
     
      <link rel="stylesheet" type="text/css" href="css/admincss.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css" integrity="sha512-17EgCFERpgZKcm0j0fEq1YCJuyAWdz9KUtv1EjVuaOz8pDnh/0nZxmU6BBXwaaxqoi9PQXnRWqlcDB027hgv9A==" crossorigin="anonymous" /><!--
-->      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css" integrity="sha512-yHknP1/AwR+yx26cB1y0cjvQUMvEa2PFzt1c9LlS4pRQ5NOTZFWbhBig+X9G9eYW/8m0/4OXNx8pxJ6z57x0dw==" crossorigin="anonymous" />
<!--Jquery-->
 

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js" integrity="sha512-XtmMtDEcNz2j7ekrtHvOVR4iwwaD6o/FUJe6+Zq+HgcCsk3kj4uSQQR8weQ2QVj1o0Pk6PwYLohm206ZzNfubg==" crossorigin="anonymous"></script>



    


        
    </head>
    
    
    <body>
        
        <style>
            
            body{
    margin: 0px 0px;
    padding: 0px;
    margin-left: 150px;
    margin-right: 200px;
    background-color: #6a6a74;
}

ul{
    list-style: none;
}
a{
    text-decoration: none;
}
.container{
    
    width: auto;
    max-height: 50vh;
    display: flex;
    justify-content: center;
    align-items: center;
    
}
.box{
    width:250px;
    height: 370px;
    background-color: #1e1e26;
    border-radius: 10px;
    box-shadow: 10px 10px 12px rgba(0,0,0,0.5);
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: space-between;
    box-sizing: border-box;
    margin-left: -40px;
    margin-bottom: 20px;
    
}
.model{
    height: 180px;
    max-height: 100%;
    max-width: 100%;
}
.details{
    display: flex;
    flex-direction: column;
    align-items: center;
    width: 300px;
    
}
.details p{
    font-family: calibri;
    font-weight: bold;
    color: #6a6a74;
    text-align: center;
    margin-top: 20px;
    
}
.marvel{
    color: #32323e;
    font-weight: bold;
    letter-spacing: 2px;
    font-family: bebas kai;
    font-size: 25px;
}

.wrapper{
    
    
   
    
    overflow-x: auto;
    display: flex;
    width: 100%;
    margin-top: 250px;
    margin-bottom: -50px;
}
.wrapper::-webkit-scrollbar{
    width: 0px;
}

        </style>
       <div class="slider"> 
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
        
         
        <div class="col-sm-3">
           
        <div class="container">
            
            <ul>
                <li class="item-a">
                     <div class="box">
                
                <img src="img1.jpg" class="model">
                     <p class="marvel"><%=rs.getString(2)%></p>
                     <div class="details">
                         <p><%=rs.getString(3)%></p>
                     </div>
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
   
    <script type="text/javascript">
        $('.slider').slick({
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
    </body>   
</html>
