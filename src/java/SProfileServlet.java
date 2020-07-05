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
@WebServlet(urlPatterns = {"/SProfileServlet"})
public class SProfileServlet extends HttpServlet {

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
            String remail = request.getParameter("txtRemail");
            String phn = request.getParameter("txtPhone");
            String twelve = request.getParameter("txtXII");
            String ten = request.getParameter("txtX");
            String univ = request.getParameter("txtUniversity");
            String cor = request.getParameter("Course");
            String year = request.getParameter("ddYear");
            String skill = request.getParameter("txtSkill");
            String proj = request.getParameter("txtProject");
            String str="STU";
            try
           {
                if(remail!=null)
                {
                    int id=0;
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/buildingbytes","root","");
                    Statement stmt=conn.createStatement();
                    PreparedStatement ps = conn.prepareStatement("select stuid from student where Email=?");
                    ps.setString(1, email);
                    ResultSet rs=ps.executeQuery();
                    while(rs.next())
                    {
                        id=rs.getInt("stuid");
                    }
                    
                    String i = str+id;
                    String sql = "insert into student_profile(S_ID,Rec_Email,Phone_No,XIIth_Per,Xth_Per,University,Course,Year,Skill, Project) values('"+i+"','"+remail+"','"+phn+"','"+twelve+"','"+ten+"','"+univ+"','"+cor+"','"+year+"','"+skill+"','"+proj+"')";
                    int  y=stmt.executeUpdate(sql);
                    String id2="";
                    String n2 = "";
                    String fs = "";
                    String query2="select * from student where Email=?";
                    PreparedStatement stmt2=conn.prepareStatement(query2);
                    stmt2.setString(1,email);
                    ResultSet rs2=stmt2.executeQuery();
                   while(rs2.next())
                    {
                            id2 = (String)rs2.getString("S_ID");
                            n2 = (String)rs2.getString("Name");
                            fs = (String)rs2.getString("Email");
                            if(fs==email)
                                break;
                    }   
                    if(y>0)
                    {
                        HttpSession session=request.getSession();     
                         session.setAttribute("nm", n2); 
                         session.setAttribute("idd",id2);
                         session.setAttribute("eml",fs);
                        response.sendRedirect("SAfterLogin.jsp");
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
