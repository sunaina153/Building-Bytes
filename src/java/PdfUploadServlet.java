/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author hp
 */
@WebServlet(urlPatterns = {"/PdfUploadServlet"})
@MultipartConfig(fileSizeThreshold=1024*1024*10,//10mb
        maxFileSize=1024*1024*1000,//1gb
        maxRequestSize=1024*1024*1000)//1gb
public class PdfUploadServlet extends HttpServlet {
PrintWriter out=null;
    Connection conn=null;
    PreparedStatement ps=null;
    HttpSession session=null;
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
            throws ServletException, IOException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        try 
               {
                 out=response.getWriter();  
                 session=request.getSession();
                 String sub=request.getParameter("subject");
                 String folderName="resources";
                 String uploadPath=request.getServletContext().getRealPath("")+File.separator+folderName;
                 File dir=new File(uploadPath);
                 if(!dir.exists())
                 {
                     dir.mkdirs();
                 }
                 Part filePart=request.getPart("pdf");
                 String fileName=filePart.getSubmittedFileName();
                 InputStream is=filePart.getInputStream();
                 Files.copy(is,Paths.get(uploadPath + File.separator+fileName),StandardCopyOption.REPLACE_EXISTING);
                 try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/buildingbytes","root","");
                   
                    
                    String sql = "insert into books_pdf(Topic,Book) values(?,?)";
                    ps=con.prepareStatement(sql);
                    ps.setString(1,sub);
                    ps.setString(2,fileName);
                   
                    int  y=ps.executeUpdate();
                    if(y>0)
                    {
                        response.sendRedirect("home.jsp");
                    }
                 }
                 catch(SQLException e)
                 {
                     out.println("Exception"+e);
                 } 
               }
                 catch (ClassNotFoundException ex) 
                 {
               out.println("Exception"+ex);
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(PdfUploadServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(PdfUploadServlet.class.getName()).log(Level.SEVERE, null, ex);
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