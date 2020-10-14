/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package loginfu;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

@WebServlet(name = "loginu", urlPatterns = {"/loginu"})
public class loginu extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
             String fname= request.getParameter("fname");
             String pword= request.getParameter("password");
             
                
             try{
                 if(fname != null){
                 
                 Class.forName("com.mysql.jdbc.Driver").newInstance();
               Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","");
               String Query="select * from registerf where fname=? and password=?";
               PreparedStatement psm=conn.prepareStatement(Query);
               psm.setString(1, fname);
               psm.setString(2, pword);
               ResultSet rs=psm.executeQuery();
              
               if(rs.next()){
                   response.sendRedirect("newuserhome.jsp");
               }
               else{
                   out.print("Login failed");
               }
                 }
                 
              }catch(Exception ex)
             {
                 out.print (ex.getMessage());
             }
             
           
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet loginu</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet loginu at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}

