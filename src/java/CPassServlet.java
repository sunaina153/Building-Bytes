/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hp
 */
@WebServlet(urlPatterns = {"/CPassServlet"})
public class CPassServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CPassServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CPassServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            String email = request.getParameter("username");
            String qst1 = request.getParameter("dpdSecurityQstn1");
            String qst2 = request.getParameter("dpdSecurityQstn2");
            String qst3 = request.getParameter("dpdSecurityQstn3");
            String ans1 = request.getParameter("ans1");
            String ans2 = request.getParameter("ans2");
            String ans3 = request.getParameter("ans3");
            
              try
           {
               
                if(email!=null)
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/buildingbytes","root","");
                    Statement stmt=conn.createStatement(); 
                    String sql = "select C_ID from company where Prim_Email=? AND Q1=? AND Q2=? AND Q3=? AND Ans1=? AND Ans2=? AND Ans3=?";
                    PreparedStatement ps1 = conn.prepareStatement(sql);
                    ps1.setString(1,email);
                    ps1.setString(2,qst1);
                    ps1.setString(3,qst2);
                    ps1.setString(4,qst3);
                    ps1.setString(5,ans1);
                    ps1.setString(6,ans2);
                    ps1.setString(7,ans3);
                    ResultSet rs = ps1.executeQuery();
                    out.println("aFTER\n");
                    if(rs.next())
                    {
                         out.println("aFTER\n");
                        response.sendRedirect("CSetNewPass.jsp");
                        out.println("aFTER\n");
                    }
                    else
                    {
                        response.sendRedirect("ChangePError.jsp");
                    }
                }
           }
            catch(Exception e)
            {
                System.out.println("got exception"+e.getMessage());
            }
            
        }
        }
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
