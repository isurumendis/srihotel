/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bookh;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

@WebServlet(name = "book", urlPatterns = {"/book"})
public class book extends HttpServlet {

    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            
           
             String hotelname= request.getParameter("b1");
             String description= request.getParameter("b2");
             String contactno = request.getParameter("b3");
             String email= request.getParameter("b4");
              String name= request.getParameter("b5");
              String fileimg= request.getParameter("b6");
              if(name != null && email != null){
              response.sendRedirect("Reservation.jsp");
          }
              
             Connection conn =null;
             Statement st =null;
             
             try{
                 
                 
                 Class.forName("com.mysql.jdbc.Driver");
                 conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","");
                 st = conn.createStatement();
                 
             String qry="INSERT INTO `booking` (`id`, `hotelname`, `description`, `contactno`, `email`, `name`, `fileimg`) VALUES (NULL, '"+hotelname+"', '"+description+"', '"+contactno+"', '"+email+"', '"+name+"', '"+fileimg+"')";
             
                st.executeUpdate(qry);
                 out.print("data succsess");
                 
             }catch(Exception ex)
             {
                 out.print (ex.getMessage());
             }
             
            
            
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet book</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet book at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
        
       
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

   
}
