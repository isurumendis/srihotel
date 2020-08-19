/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package imagef;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

@WebServlet(name = "image", urlPatterns = {"/image"})
public class image extends HttpServlet {

  
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
           
             String title= request.getParameter("e2");
             String stitle= request.getParameter("e3");
             String description= request.getParameter("e4");
             String reporter= request.getParameter("e5");
            String pnumber= request.getParameter("e6");
            String links= request.getParameter("e7");
               Connection conn =null;
             Statement st =null;
             
             try{
                 
                 
                 Class.forName("com.mysql.jdbc.Driver");
                 conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","");
                 PreparedStatement ps=conn.prepareStatement("insert into uplod values (?)");
             
                 st = conn.createStatement();
                 
                 String qry="INSERT INTO `uplod` (`id`, `title`, `stitle`, `description`, `reporter`, `pnumber`, `links`) VALUES (NULL, '"+title+"', '"+stitle+"', '"+description+"', '"+reporter+"', '"+pnumber+"', '"+links+"')";
                 
                 st.executeUpdate(qry);
                 out.print("data succsess");
                 
             }catch(Exception ex)
             {
                 out.print (ex.getMessage());
             }
             
             
             
             
             
             
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet image</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet image at " + request.getContextPath() + "</h1>");
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
