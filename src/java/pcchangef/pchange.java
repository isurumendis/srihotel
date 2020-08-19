/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pcchangef;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;


@WebServlet(name = "pchange", urlPatterns = {"/pchange"})
public class pchange extends HttpServlet {
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            
             String name = request.getParameter("f1");
             String pword = request.getParameter("f2");
             
             
//              if(name != null && pword != null){
//              response.sendRedirect("index.jsp");
//          }
              
             
             
             try{
                 Connection conn =null;
             Statement st =null;
                 
                 Class.forName("com.mysql.jdbc.Driver");
                 conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");
                 st = conn.createStatement();
                 String qry = "update wedd set pword='"+pword+"' where name='"+name+"'";
                  
             
                st.executeUpdate(qry);
                 out.print("data update succsess");
                 
             }catch(Exception ex)
             {
                 out.print (ex.getMessage());
             }
             
             
              out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet pchange</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet pchange at " + request.getContextPath() + "</h1>");
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
        
    

