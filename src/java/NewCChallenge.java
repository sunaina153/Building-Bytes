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
@WebServlet(urlPatterns = {"/NewCChallenge"})
public class NewCChallenge extends HttpServlet {

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
            out.println("<title>Servlet NewCChallenge</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet NewCChallenge at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            HttpSession session=request.getSession();    
            String nm = request.getParameter("txt0");
            String rl = request.getParameter("txt1");
            String des = request.getParameter("txt2");
            out.println("1");
            String iddd = session.getAttribute("idd").toString();
             String str="CHID";
             try
             {
                 if(nm!=null)
                 {
                      out.println("2");
                     int id=0;
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/buildingbytes","root","");
                    Statement stmt=conn.createStatement();
                    String sql1="select endid from challenges_posted";
                    ResultSet rs=stmt.executeQuery(sql1);
                     out.println("3");
                    while(rs.next())
                    {
                        id=rs.getInt("endid");
                        out.println(id);
                    }
                    id++;
                    out.println(id);
                    String i = str+id;
                    //String sqql = "insert into c_article(Ar_ID,C_ID,Article,startid,endid,Article_Head) values('"+i+"','"+iddd+"','"+con+"','"+str+"','"+id+"','"+top+"')";  
                    String sql = "insert into challenges_posted(C_ID,Name,Topic,CH_ID,Challenge,chid,endid) values('"+iddd+"','"+nm+"','"+rl+"','"+i+"','"+des+"','"+str+"','"+id+"')";  
                    int  y = stmt.executeUpdate(sql);
                    out.println("345");
                    if(y>0)
                    {
                        response.sendRedirect("Cchallenges.jsp");
                    }
                    else
                    {
                        response.sendRedirect("Error.jsp");
                    }
                 }
             }
             catch(Exception e)
             {
                 out.println(e);
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
