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
 * @author Sunaina
 */
@WebServlet(urlPatterns = {"/CSignupServlet"})
public class CSignupServlet extends HttpServlet {

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
           
            response.setContentType("text/html;charset=UTF-8");
            String pass1 = request.getParameter("txtpassword");
            String email = request.getParameter("txtemail");
            String name  = request.getParameter("txtname");
            String iso = request.getParameter("txtISO");
            String empid = request.getParameter("txtEmp");
            String qst1 = request.getParameter("dpdSecurityQstn1");
            String qst2 = request.getParameter("dpdSecurityQstn2");
            String qst3 = request.getParameter("dpdSecurityQstn3");
            String ans1 = request.getParameter("txtanswer1");
            String ans2 = request.getParameter("txtanswer2");
            String ans3 = request.getParameter("txtanswer3");
            String str="COM";
            try 
           {
                if(email!=null)
                {
                    int id=0;
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/buildingbytes","root","");
                    Statement stmt=conn.createStatement();
                    String sql1="select comid from company";
                    ResultSet rs=stmt.executeQuery(sql1);
                    while(rs.next())
                    {
                        id=rs.getInt("comid");
                        out.println(id);
                    }
                    id++;
                    out.println(id);
                    String i = str+id;
                    String sql = "insert into company(C_ID,Name,Prim_Email,Password,ISO_Num,Emp_ID,Q1,Q2,Q3,Ans1,Ans2,Ans3,comstr,comid) values('"+i+"','"+name+"','"+email+"','"+pass1+"','"+iso+"','"+empid+"','"+qst1+"','"+qst2+"','"+qst3+"','"+ans1+"','"+ans2+"','"+ans3+"','"+str+"','"+id+"')";  
                    int  y = stmt.executeUpdate(sql);
                    if(y>0)
                    {
                        HttpSession session=request.getSession();    
                        session.setAttribute("idd",i);
                        session.setAttribute("nm", name);
                        session.setAttribute("eml",email);
                        response.sendRedirect("CProfile.jsp");
                    }
                    else
                    {
                        response.sendRedirect("Error.jsp");
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
