/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hotelbookup;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

@WebServlet(name = "hotelbooup", urlPatterns = {"/hotelbooup"})
public class hotelbooup extends HttpServlet {

    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) { 
            
            String id= request.getParameter("t");
            String postid= request.getParameter("t0");
           String name= request.getParameter("t1");
             String email= request.getParameter("t2");
             String phonenumber= request.getParameter("t3");
             String checkin= request.getParameter("t4");
             String checkout= request.getParameter("t5");
              String norooms= request.getParameter("t6");
              String ppnumber= request.getParameter("t7");
             String message= request.getParameter("t8");
          if(name != null && email != null){
              response.sendRedirect("bookdetail.jsp");
          }
             
             Connection conn =null;
             Statement st =null;
             
             try{
                 
                 
                 Class.forName("com.mysql.jdbc.Driver");
                 conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","");
                 st = conn.createStatement();
                 
                String qry = "update bookhotel set postid ='"+postid+"', name ='"+name+"', email ='"+email+"', phonenumber ='"+phonenumber+"',checkin ='"+checkin+"', checkout ='"+checkout+"', norooms ='"+norooms+"', ppnumber ='"+ppnumber+"', message ='"+message+"' where id ='"+id+"'";
                 
                 st.executeUpdate(qry);
                 out.print("data succsess");
                 
             }catch(Exception ex)
             {
                 out.print (ex.getMessage());
             }
             
            
             
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet data</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet data at " + request.getContextPath() + "</h1>");
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
   
