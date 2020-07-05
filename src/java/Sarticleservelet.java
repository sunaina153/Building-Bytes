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
 * @author Sunaina
 */
@WebServlet(urlPatterns = {"/Sarticleservelet"})
public class Sarticleservelet extends HttpServlet {

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
            out.println("<title>Servlet Sarticleservelet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Sarticleservelet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            HttpSession session = request.getSession();
            String sid= session.getAttribute("id").toString();
            String str="AR";
            String article = request.getParameter("article");
            String head = request.getParameter("head");
            try
           {
                if(article!=null && head!=null)
                {
                    int id1=0;
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/buildingbytes","root","");
                    Statement stmt=conn.createStatement();
                     String sql1="select artid from Articles_Posted";
                    ResultSet rs=stmt.executeQuery(sql1);
                    while(rs.next())
                    {
                        id1=rs.getInt("artid");
                    }
                    id1++;
                    String i = str+id1;
                    String sql = "insert into Articles_Posted (ID,AR_ID,arstr,artid,article,article_heading) values('"+sid+"','"+i+"','"+str+"','"+id1+"','"+article+"','"+head+"')";
                    out.println("hey");
                    int  y=stmt.executeUpdate(sql);
                    out.println("hey");
                    if(y>0)
                    {
                        request.getRequestDispatcher("Sarticles.jsp").forward(request, response); 
                        response.sendRedirect("Sarticles.jsp");
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
