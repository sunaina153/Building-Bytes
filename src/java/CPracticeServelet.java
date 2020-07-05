/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.*;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import static jdk.nashorn.internal.objects.NativeError.getFileName;
import static org.omg.CORBA.FieldNameHelper.id;

/**
 *
 * @author Sunaina
 */
@WebServlet(urlPatterns = {"/CPracticeServelet"})
@MultipartConfig(fileSizeThreshold=1024*1024*10,//10mb
        maxFileSize=1024*1024*1000,//1gb
        maxRequestSize=1024*1024*1000)//1gb
public class CPracticeServelet extends HttpServlet {
    
    PrintWriter out=null;
    Connection conn=null;
    PreparedStatement ps=null;
    HttpSession session=null;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
               try 
               {
                 out=response.getWriter();  
                 session=request.getSession();
                 String sid= session.getAttribute("id").toString();
                 String folderName="resources";
                 String uploadPath=request.getServletContext().getRealPath("")+File.separator+folderName;
                 File dir=new File(uploadPath);
                 if(!dir.exists())
                 {
                     dir.mkdirs();
                 }
                 Part filePart=request.getPart("file");
                 String fileName=filePart.getSubmittedFileName();
                 InputStream is=filePart.getInputStream();
                 Files.copy(is,Paths.get(uploadPath + File.separator+fileName),StandardCopyOption.REPLACE_EXISTING);
                 try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/buildingbytes","root","");
                   
                    
                    String sql = "insert into practice_set(C_ID ,Practice_Paper) values(?,?)";
                    ps=con.prepareStatement(sql);
                    ps.setString(1,sid);
                    ps.setString(2,fileName);
                   
                    int  y=ps.executeUpdate();
                    if(y>0)
                    {
                        response.sendRedirect("CPracticePapers.jsp");
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
