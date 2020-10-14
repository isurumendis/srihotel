/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package updatedata;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;


@WebServlet(name = "dataupdat", urlPatterns = {"/dataupdat"})
public class dataupdat extends HttpServlet {
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String id = request.getParameter("ch0");
             String hotelname = request.getParameter("ch1");
             String description = request.getParameter("ch2");
             String contactno = request.getParameter("ch3");
             String email = request.getParameter("ch4");
             String name = request.getParameter("ch5");
             String links = request.getParameter("ch6");
           
               ResultSet resultset = null;
               Statement statement = null;
             
             
             try{
              
                
                 
                 Class.forName("com.mysql.jdbc.Driver").newInstance();
                 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","");
                 statement = conn.createStatement();
                 String qry = "update booking set hotelname='"+hotelname+"', description='"+description+"', contactno='"+contactno+"', email='"+email+"', name='"+name+"', links='"+links+"' where id='"+id+"'";
                 int result = statement.executeUpdate(qry);
                 
                
                   response.sendRedirect("ReservationA.jsp");
                
                
                 out.print("data update succsess");
                
                 
                 
             }catch(Exception ex)
             {
                 out.print (ex.getMessage());
             }
             
             
              out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet dataupdat</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet dataupdat at " + request.getContextPath() + "</h1>");
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
        
    

