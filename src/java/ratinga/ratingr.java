/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ratinga;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

@WebServlet(name = "ratingr", urlPatterns = {"/ratingr"})
public class ratingr extends HttpServlet {

   
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
             String hname= request.getParameter("r1");
             String rval= request.getParameter("star");
            if(hname != null && rval != null){
              response.sendRedirect("eventRC.jsp");
          }
             
             Connection conn =null;
             Statement st =null;
             
             try{
                 
                 
                 Class.forName("com.mysql.jdbc.Driver");
                 conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","");
                 st = conn.createStatement();
                 
                 
                 
                 String qry="INSERT INTO `ratin` (`id`, `hname`, `rval`) VALUES (NULL, '"+hname+"', '"+rval+"')";
                 
                 st.executeUpdate(qry);
                 out.print("data succsess");
                 
             }catch(Exception ex)
             {
                
             }
             
             
             
             
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ratingr</title>");            
            out.println("</head>");
            out.println("<body>");
            
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

