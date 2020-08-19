/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminlog;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "admin", urlPatterns = {"/admin"})
public class admin extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
             String un = request.getParameter("un");
             String pw = request.getParameter("pw");
             if(un != null && pw != null){
             if(pw.equals("admin123")&& un.equals("admin")){
                 response.sendRedirect("adminp.jsp");
             } 
             else{
                 out.println("Invalid Username Or Password");
             }
             }
             else{
                 
                 out.println("Empty Username Or Password");
             }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    private void PrintWriter(String invalid_Username_Or_Password) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
