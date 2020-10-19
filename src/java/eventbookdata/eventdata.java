/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package eventbookdata;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;


@WebServlet(name = "eventdata", urlPatterns = {"/eventdata"})
public class eventdata extends HttpServlet {

    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) { 
            String postid= request.getParameter("n0");
           String name= request.getParameter("n1");
             String email= request.getParameter("n2");
             String phonenumber= request.getParameter("n3");
             String birth= request.getParameter("n4");
             String participate= request.getParameter("n5");
              String inumber= request.getParameter("n6");
              String ppnumber= request.getParameter("n7");
             String message= request.getParameter("n8");
          if(name != null && email != null){
              response.sendRedirect("eventRC.jsp");
          }
             
             Connection conn =null;
             Statement st =null;
             
             try{
                 
                 
                 Class.forName("com.mysql.jdbc.Driver");
                 conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","");
                 st = conn.createStatement();
                 
                 String qry="INSERT INTO `eventbookd` (`id`, `postid`, `name`, `email`, `phonenumber`, `birth`, `participate`, `inumber`, `ppnumber`, `message`) VALUES (NULL, '"+postid+"', '"+name+"', '"+email+"', '"+phonenumber+"', '"+birth+"', '"+participate+"', '"+inumber+"', '"+ppnumber+"', '"+message+"')";
                 
                 st.executeUpdate(qry);
                 out.print("data succsess");
                 
             }catch(Exception ex)
             {
                 out.print (ex.getMessage());
             }
             
            
             
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet eventdata</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet eventdata at " + request.getContextPath() + "</h1>");
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
   
