<%-- 
    Document   : AdminPdf
    Created on : 29 Feb, 2020, 4:29:44 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Pdf Upload</title>
        <LINK REL=STYLESHEET type=text/CSS href=css/style.css>
    
    </head>
    <body>
              <div class="topnav" align=center width=100% class="table1" >
                          <table border=0 width=100% >
		<tr>
                                           <td>
                                                    <h1 >BUILDING BYTES</h1>
                                                    <h3 > Explore, Learn, Share</h3>
                                           </td>
                                           <td>
                                               <ul>
                                                   <li><h5><a href="#"><font color="black">HOME</font></a></h5></li>
                                                   <li><h5><a href="#about"><font color="black">ABOUT US</font></a></h5></li>
                                                   <li><h5><a href="#services"><font color="black">SERVICES</font></a></h5></li>
                                                   <li><h5><a href="Policy.jsp"><font color="black">POLICY</font></a></h5></li>
                                               </ul>
                                              
                                           </td>
                                  </tr>
                                  
                          </table>
         </div>
        <div class="content1">
           
      <center>
        <h1>Upload Study Books and Notes to Database</h1>
        <form method="post" action="PdfUploadServlet" enctype="multipart/form-data">
            <table border="2">
                <tr>
                    <td>Subject Name </td>
                    <td><input type="text" name="subject" size="50"/></td>
                </tr>
                
                <tr>
                    <td>Subject File</td>
                    <td><input type="file" name="pdf" size="50"/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Save">
                    </td>
                </tr>
            </table>
        </form>
        </center>
        </div>

    <center>
        <div class="content1">
        <h1>Upload Videos to Database</h1>
        <form method="post" action="VideoUploadServlet" >
            <table border="2">
                <tr>
                    <td>Subject Name</td>
                    <td><input type="text" name="sub" size="50"/></td>
                </tr>
                
                <tr>
                    <td>Link</td>
                    <td><input type="text" name="link" size="50"/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Save">
                    </td>
                </tr>
            </table>
        </form>
    </center> 
        </div>
    </body>
</html>
<style>
    body
{
    background-color:white;
}
.topnav
{
   padding-top: 0px;
    background-color: #66d9ff;
}
.table1
{
    border-radius: 10px;
    padding: 20px;
    width:97%;
    height:100%;
    margin-top: 20px;
    margin-bottom: 20px;
    background-color: slategray;    
}
li
{
    display:inline-block;
    text-align: end;
    margin-left: 140px;
    margin-top: 70px;
    font-family: Palantino Linotype;
    font-size: 15px;
    
}
a:link
{
    color:black;
}
a:visited
{
    color:green;
}
a:active
{
    color:darkblue;
       font-size:150%;
}
a:hover
{
    background-color:slategrey;
    border-radius: 5px;
     padding:15px;
}
</style>