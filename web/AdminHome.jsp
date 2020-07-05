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
        <title>Admin Home</title>
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
             <h2 class="heading1">UPLOAD STUDY MATERIALS</h2>
             <div class="container">
                  <div class="box"> 
            <a href="StudyMaterialUpload.jsp" target="_blank" class="pglink">
            <img src="images\studym.jpg" alt="HTML tutorial" class="img1"></a>
          </div>
             </div>
        </div>
        <div class="content2">
             <h2 class="heading2">VIEW FEEDBACK AND QUERY</h2>
             <div class="container">
                  <div class="box"> 
            <a href="ViewFeedbackQuery.jsp" target="_blank" class="pglink">
            <img src="images/feed.jpg" alt="HTML tutorial" class="img2"></a>
          </div>
             </div>
        </div>
        <div class="content1">
             <h2 class="heading1">VIEW DATABASE</h2>
             <div class="container">
                  <div class="box"> 
           <a href="ViewDatabase.jsp" target="_blank" class="pglink">
            <img src="images/Capture.PNG" alt="HTML tutorial" class="img1" ></a>
          </div>
             </div>
        </div>
        <div class="content2">
             <h2 class="heading2">UPDATE ACCOUNT INFORMATION</h2>
             <div class="container">
                  <div class="box"> 
            <a href="UpdateAdminInfo.jsp" target="_blank" class="pglink">
                <img src="images/unnamed.png" alt="HTML tutorial" class="img2" ></a>
          </div>
             </div>
        </div>
    </body>
</html>
<style>
body
{
    background-image:linear-gradient(#999966,#99ffcc,#999966);
}
.heading1
{
    font-family:Palantino Linotype ;
    color: black;
    font-size: 40px;
}
.heading1:hover
{
    background-color:#003366;
    border-radius: 15px;
    color:#cc9900;
}
.heading2
{
    font-family:Palantino Linotype ;
    color: black;
    font-size: 40px;
    margin-left:650px;
    margin-top:100px;
}
.heading2:hover
{
    background-color:#003366;
    border-radius: 15px;
    color:#cc9900;
}
.pglink.a:hover
{
    
}
.img1
{
    width:500px;
    height:250px;
    border:0;
    margin-left: 650px;
    margin-bottom: 30px;
    border-radius: 15px;
}
.img2
{
    width:600px;
    height:250px;
    border:2;
    margin-bottom: 30px;
    border-radius: 15px;
}
.content1
{
    width:90%;
    background-image: linear-gradient(#cc9900,#003366);
    padding:20px;
    border-radius: 15px;
    margin-left:30px;
    margin-bottom: 30px;
    margin-right: 30px;
    margin-top: 30px;
}
.content2
{
    width:90%;
    background-image: linear-gradient(#cc9900,#003366);
    padding:20px;
    border-radius: 15px;
    margin-left:30px;
    margin-bottom: 30px;
    margin-right: 30px;
    margin-top: 30px;
}
.topnav
{
   padding-top: 0px;
    background-color: #99ffcc;
}
.table1
{
    border-radius: 10px;
    padding: 20px;
    width:97%;
    height:100%;
    margin-top: 20px;
    margin-bottom: 20px;
    background-color:#669999;    
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