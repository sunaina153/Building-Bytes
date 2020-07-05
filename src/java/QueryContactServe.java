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
@WebServlet(urlPatterns = {"/QueryContactServe"})
public class QueryContactServe extends HttpServlet {

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
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet QueryContactServe</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet QueryContactServe at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phn = request.getParameter("phone");
            String query = request.getParameter("message");
            try
            {
                if(name!=null)
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/buildingbytes","root","");
                    Statement stmt=conn.createStatement();
                    String sql  = "insert into query_contact values('"+name+"','"+email+"','"+phn+"','"+query+"')";
                    int y = stmt.executeUpdate(sql);
                    if(y>0)
                    {
                        response.sendRedirect("home.jsp");
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
        PrintWriter out = response.getWriter();
    String uname = request.getParameter("name");
    String emailm = request.getParameter("email");
    String phoneNum = request.getParameter("phone");
    String msg = request.getParameter("message");
    try {
        int cnt=0;
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/buildingbytes","root","password");
      Statement stmt = con.createStatement();
      String qry = " insert into query_contact (name,email,phone_no, message)"+ "values (?,?,?,?)" ;
      PreparedStatement ps = con.prepareStatement(qry);
      ps.setString(1,uname);
      ps.setString(2,emailm);
      ps.setString(3,phoneNum);
      ps.setString(4,msg);
      cnt = ps.executeUpdate();
      if(cnt!=0) 
      {
         response.sendRedirect("http://localhost:8081/BytesDemo/loginDemo.jsp.");
      }
         else 
         { 
            response.sendRedirect("http://localhost:8081/BytesDemo/mainDemo.jsp");
         }
      
      con.close();
      
    } catch (ClassNotFoundException e) {
      // TODO Auto-generated catch block
      out.println("got exception");
      e.printStackTrace();
    } catch (SQLException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
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
