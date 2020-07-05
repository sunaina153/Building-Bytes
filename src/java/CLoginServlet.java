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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Sunaina
 */
@WebServlet(urlPatterns = {"/CLoginServlet"})
public class CLoginServlet extends HttpServlet {

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
            out.println("<title>Servlet CLoginServelet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CLoginServelet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            String email = request.getParameter("username");
            String pass = request.getParameter("password");
            try
            {
                String id="";
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/buildingbytes","root","");
                    String query="select * from Company where Prim_Email=? and password=?";
                    PreparedStatement stmt=conn.prepareStatement(query);
                    
                    stmt.setString(1,email);
                    stmt.setString(2, pass);
                    ResultSet rs=stmt.executeQuery();
                    String query1="select C_ID from company";
                    PreparedStatement stmt1=conn.prepareStatement(query1);
                    ResultSet rs1=stmt1.executeQuery();
                    String id2="";
                    String n2 = "";
                    String fs = "";
                    String query2="select * from company where Prim_Email=?";
                    PreparedStatement stmt2=conn.prepareStatement(query2);
                    stmt2.setString(1,email);
                    ResultSet rs2=stmt2.executeQuery();
                   while(rs2.next())
                    {
                            id2 = (String)rs2.getString("C_ID");
                            n2 = (String)rs2.getString("Name");
                            fs = (String)rs2.getString("Prim_Email");
                            if(fs==email)
                                break;
                    }                  
                    if(rs.next())
                    {
                        HttpSession session=request.getSession();
                         session.setAttribute("nm", n2); 
                         session.setAttribute("idd",id2);
                         session.setAttribute("eml",fs);
                       response.sendRedirect("CAfterLogin.jsp");
                    }
                    else
                    {
                        response.sendRedirect("Error.jsp");
                        
                    }
            }   
            catch(Exception e)
            {
                out.println("got exception"+e.getMessage());
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
