package registerup;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

@WebServlet(name = "registerupd", urlPatterns = {"/registerupd"})
public class registerupd extends HttpServlet {

    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
         
            String id= request.getParameter("f0");
              String fname= request.getParameter("f1");
             String lname= request.getParameter("f2");
             String email = request.getParameter("f3");
             String password= request.getParameter("f4");
              String country= request.getParameter("f5");
                String address = request.getParameter("f6");
             String pnumber= request.getParameter("f7");
              String ppnumber= request.getParameter("f8");
              if(fname != null && email != null){
              response.sendRedirect("userdetails.jsp");
          }
              
             Connection conn =null;
             Statement st =null;
             
             try{
                 
                 
                 Class.forName("com.mysql.jdbc.Driver");
                 conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","");
                 st = conn.createStatement();
                 
            String qry = "update  registerf set fname ='"+fname+"', lname ='"+lname+"', email ='"+email+"', password ='"+password+"', country ='"+country+"', address ='"+address+"', pnumber ='"+pnumber+"', ppnumber ='"+ppnumber+"' where id ='"+id+"'";
             
                st.executeUpdate(qry);
                 out.print("data succsess");
                 
             }catch(Exception ex)
             {
                 out.print (ex.getMessage());
             }
             
            
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet registerupd</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet registerupd at " + request.getContextPath() + "</h1>");
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

