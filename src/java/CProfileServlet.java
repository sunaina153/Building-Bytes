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
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.PreparedStatement;

/**
 *
 * @author hp
 */
@WebServlet(urlPatterns = {"/CProfileServlet"})
public class CProfileServlet extends HttpServlet {

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
            String email = request.getParameter("txtemail");
            String semail = request.getParameter("txtSemail");
            String phn = request.getParameter("txtPhone");
            String des = request.getParameter("txtDes");
            String padd = request.getParameter("txtPAdd");
            String sadd = request.getParameter("txtSAdd");
            String head = request.getParameter("txtHead");
            String comSize = request.getParameter("txtComSize");
            String str="COM";
            try
           {
                if(semail!=null)
                {
                     out.println("heyyy");
                    int id=0;
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/buildingbytes","root","");
                    Statement stmt=conn.createStatement();
                    PreparedStatement ps = conn.prepareStatement("select comid from company where Prim_Email=?");
                    ps.setString(1, email);
                    ResultSet rs=ps.executeQuery();
                    while(rs.next())
                    {
                        out.print(id);
                        id=rs.getInt("comid");
                    }
                    String i = str+id;
                    String sql = "insert into company_profile(C_ID,Sec_Email,Phone_No,Description,Prim_Address,Sec_Address,Headquarter,Company_Size) values('"+i+"','"+semail+"','"+phn+"','"+des+"','"+padd+"','"+sadd+"','"+head+"','"+comSize+"')";
                out.println("afterheyyy");
                    int  y=stmt.executeUpdate(sql);
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
                    if(y>0)
                    {
                        HttpSession session=request.getSession();     
                         session.setAttribute("nm", n2); 
                         session.setAttribute("idd",id2);
                         session.setAttribute("eml",fs);
                        response.sendRedirect("CAfterLogin.jsp");
                    }
                    else
                    {
                         response.sendRedirect("CError.jsp");
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
