/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
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
@WebServlet(urlPatterns = {"/SQueryServlet"})
public class SQueryServlet extends HttpServlet {

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
            out.println("<title>Servlet SQueryServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SQueryServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            HttpSession session = request.getSession();
            String sid= session.getAttribute("idd").toString();
            String str="QRY";
            String n1 = request.getParameter("txt0");
            String head = request.getParameter("txt1");
            String qr = request.getParameter("txt2");
            try
           {
                if(qr!=null)
                {
                    int id1=0;
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/buildingbytes","root","");
                    Statement stmt=conn.createStatement();
                     String sql1="select endid from query";
                    ResultSet rs=stmt.executeQuery(sql1);
                    while(rs.next())
                    {
                        id1=rs.getInt("endid");
                    }
                    out.println("hey");
                    id1++;
                    String i = str+id1;
                    String sql = "insert into query(S_ID,Name,Query_ID,Topic,Query,stuid,endid) values('"+sid+"','"+n1+"','"+i+"','"+head+"','"+qr+"','"+str+"','"+id1+"')";
                    int  y=stmt.executeUpdate(sql);
                    out.println("HeyAQ");
                    if(y>0)
                    {
                        request.getRequestDispatcher("SQuery.jsp").forward(request, response); 
                        response.sendRedirect("SQuery.jsp");
                    }
                    else
                    {
                         response.sendRedirect("SError.jsp");
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
