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
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author hp
 */
@WebServlet(urlPatterns = {"/SNewUp"})
public class SNewUp extends HttpServlet {

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
            out.println("<title>Servlet SNewUp</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SNewUp at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
             String name = request.getParameter("Name");
            String email = request.getParameter("email");
            String remail = request.getParameter("remail");
            String phone = request.getParameter("cont");
            String twel = request.getParameter("twe");
            String ten = request.getParameter("ten");
            String univ = request.getParameter("univ");
            String course = request.getParameter("cour");
            String yr = request.getParameter("yr");
            String skill = request.getParameter("skill");
            String pro = request.getParameter("pro");
            HttpSession session=request.getSession();    
            try 
           {

                    String nid = session.getAttribute("idd").toString();
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/buildingbytes","root","");
                    Statement stmt=conn.createStatement();
                    
                    String sql = "Update student set Name=?, Email=? where S_ID=?";
                    PreparedStatement ps = conn.prepareStatement(sql);
                    ps.setString(1,name);
                    ps.setString(2,email);
                    ps.setString(3,nid);
                    
                    int  y = ps.executeUpdate();
                    if(y>0)
                    {
                        out.println("1");
                        String sql1 = "Update student_profile set Rec_Email=?, Phone_No=?, XIIth_Per=?, Xth_Per=?, University=?, Course=?, Year=?, Skill=?, Project=? where S_ID=?";
                        PreparedStatement ps1 = conn.prepareStatement(sql1);
                        ps1.setString(1,remail);
                        ps1.setString(2,phone);
                        ps1.setString(3,twel);
                        ps1.setString(4,ten);
                        ps1.setString(5,univ);
                        ps1.setString(6,course);
                        ps1.setString(7,yr);
                        ps1.setString(8,skill);
                        ps1.setString(9,pro);
                        ps1.setString(10,nid);
                        out.println("2");
                        int  x = ps1.executeUpdate();
                        out.println("3");
                        if(x>0)
                        {
                            response.sendRedirect("SAccount.jsp");
                        }
                    }
                    else
                    {
                        response.sendRedirect("Error.jsp");
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
