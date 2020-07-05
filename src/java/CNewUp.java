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
import javax.servlet.http.HttpSession;

/**
 *
 * @author hp
 */
@WebServlet(urlPatterns = {"/CNewUp"})
public class CNewUp extends HttpServlet {

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
            out.println("<title>Servlet CNewUp</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CNewUp at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            String name = request.getParameter("Name");
            String pemail = request.getParameter("pemail");
            String iso = request.getParameter("iso");
            String empid = request.getParameter("eid");
            String semail = request.getParameter("semail");
            String cnum = request.getParameter("cont");
            String desc = request.getParameter("des");
            String pradd = request.getParameter("padd");
            String seadd = request.getParameter("sadd");
            String head = request.getParameter("hdq");
            String csize = request.getParameter("csize");
            HttpSession session=request.getSession();    
            try 
           {

                    String nid = session.getAttribute("idd").toString();
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/buildingbytes","root","");
                    Statement stmt=conn.createStatement();
                    
                    String sql = "Update Company set Name=?, Prim_Email=?, ISO_Num=?, Emp_ID=? where C_ID=?";
                    PreparedStatement ps = conn.prepareStatement(sql);
                    ps.setString(1,name);
                    ps.setString(2,pemail);
                    ps.setString(3,iso);
                    ps.setString(4,empid);
                    ps.setString(5,nid);
                    int  y = ps.executeUpdate();
                    if(y>0)
                    {
                        out.println("1");
                        String sql1 = "Update company_profile set Sec_Email=?, Phone_No=?, Description=?, Prim_Address=?, Sec_Address=?, Headquarter=?, Company_Size=? where C_ID=?";
                        PreparedStatement ps1 = conn.prepareStatement(sql1);
                        ps1.setString(1,semail);
                        ps1.setString(2,cnum);
                        ps1.setString(3,desc);
                        ps1.setString(4,pradd);
                        ps1.setString(5,seadd);
                        ps1.setString(6,head);
                        ps1.setString(7,csize);
                        ps1.setString(8,nid);
                        out.println("2");
                        int  x = ps1.executeUpdate();
                        out.println("3");
                        if(x>0)
                        {
                            response.sendRedirect("CAccount.jsp");
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
