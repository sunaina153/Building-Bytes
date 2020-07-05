import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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
import javax.servlet.*;  
import javax.servlet.http.*;  
/**
 * Servlet implementation class UserProfile
 */
@WebServlet("/SLoginServlet")
public class SLoginServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
  /**
   * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
   */
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // TODO Auto-generated method stub
    response.getWriter().append("Served at: ").append(request.getContextPath());
  }
  /**
   * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
   */
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // TODO Auto-generated method stub
    doGet(request, response);
    
    PrintWriter out = response.getWriter();
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    try {
        if(username!=null)
        {
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/buildingbytes","root","");
      String qry = "select S_ID from student where Email=? and Password=?";
      PreparedStatement ps = con.prepareStatement(qry);
      ps.setString(1,username);
      ps.setString(2,password);
      ResultSet rs = ps.executeQuery();
      String i=rs.toString();
      String qry2 = "select Name from student where Email=?";
      PreparedStatement ps1 = con.prepareStatement(qry2);
      ps1.setString(1,username);
      ResultSet rs1 = ps1.executeQuery();
      String name = rs1.toString();
      String id2="";
      String n2 = "";
      String fs = "";
      String query2="select * from student where Email=?";
      PreparedStatement stmt2=con.prepareStatement(query2);
      stmt2.setString(1,username);
      ResultSet rs2=stmt2.executeQuery();
      while(rs2.next())
      {
           id2 = (String)rs2.getString("S_ID");
           n2 = (String)rs2.getString("Name");
           fs = (String)rs2.getString("Email");
           if(fs==username)
                 break;
       }                  
         if(rs.next())
        {
              HttpSession session=request.getSession();
              session.setAttribute("nm", n2); 
              session.setAttribute("idd",id2);
              session.setAttribute("eml",fs);
              response.sendRedirect("SAfterLogin.jsp");
        }
    
      else 
      {  
           response.sendRedirect("Error.jsp");
      }
        }
      
      
      
    } catch (ClassNotFoundException e) {
      // TODO Auto-generated catch block
      out.println("got exception");
      e.printStackTrace();
    } catch (SQLException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
    
    
    
  }
}