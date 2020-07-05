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
        <title>Lecture Videos</title>
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
                                              <div class="box">
					<a href="SAfterLogin.jsp" class="btn btn1"> home</a>
                                        <a href="Study.jsp" class="btn btn2"> Study</a>
					<a href="Secell.jsp" class="btn btn3"> e-cell</a>
					<a href="SAccount.jsp" class="btn btn4"> my account</a>
                                     </div>
                                              
                                           </td>
                                  </tr>
                                  
                          </table>
         </div>
       
        <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
        <div class="content1">
           <div class="ads_column">
    </div>         
 
<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "buildingbytes";
String userId = "root";
String password = "";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
   <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();

String sql ="SELECT Video FROM lecture_videos where Topic='DCN'" ;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<div class="card1">
    <iframe width="660" height="315" src="<%=resultSet.getString("Video")%>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%> 
   <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();

String sql2 ="SELECT Video FROM lecture_videos where Topic='DS'" ;
resultSet = statement.executeQuery(sql2);
while(resultSet.next()){
%>
<div class="card1">
    <iframe width="660" height="315" src="<%=resultSet.getString("Video")%>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%> 
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();

String sql2 ="SELECT Video FROM lecture_videos where Topic='SE'" ;
resultSet = statement.executeQuery(sql2);
while(resultSet.next()){
%>
<div class="card1">
    <iframe width="660" height="315" src="<%=resultSet.getString("Video")%>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%> 
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();

String sql2 ="SELECT Video FROM lecture_videos where Topic='AI ML'" ;
resultSet = statement.executeQuery(sql2);
while(resultSet.next()){
%>
<div class="card1">
    <iframe width="660" height="315" src="<%=resultSet.getString("Video")%>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%> 
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();

String sql2 ="SELECT Video FROM lecture_videos where Topic='DBMS'" ;
resultSet = statement.executeQuery(sql2);
while(resultSet.next()){
%>
<div class="card1">
    <iframe width="660" height="315" src="<%=resultSet.getString("Video")%>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%> 
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();

String sql2 ="SELECT Video FROM lecture_videos where Topic='COA'" ;
resultSet = statement.executeQuery(sql2);
while(resultSet.next()){
%>
<div class="card1">
    <iframe width="660" height="315" src="<%=resultSet.getString("Video")%>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%> 
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();

String sql2 ="SELECT Video FROM lecture_videos where Topic='JVP'" ;
resultSet = statement.executeQuery(sql2);
while(resultSet.next()){
%>
<div class="card1">
    <iframe width="660" height="315" src="<%=resultSet.getString("Video")%>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%> 
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();

String sql2 ="SELECT Video FROM lecture_videos where Topic='IWT'" ;
resultSet = statement.executeQuery(sql2);
while(resultSet.next()){
%>
<div class="card1">
    <iframe width="660" height="315"  src="<%=resultSet.getString("Video")%>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%> 
  
</div>
   <div class="footer">
			<table  width=100% height=10% border=0 >
			<tr>
				<td><a href="AboutUs.jsp" class="l2"><b><font color=black><center>ABOUT US</center></font></b></a></td>
				<td><a href="Contact.jsp" class="l2"><b><font color=black><center>CONTACT US</center></font></b></a></td>
				<td><a href="Feedback.jsp" class="l2"><b><font color=black><center>FEEDBACK</center></b></a></font></td>
				<td> <a href="Privacy.jsp" class="l2"><b><font color=black><center>PRIVACY POLICY</center></b></a></font></td>
			</tr>
			
			</table>
            </div>
    </body>
</html>
<style>
    body
{overflow-x: hidden;
    background-color:black;
}

.footer{
	padding: 20px;
	margin-bottom:20px;
        margin-top: 20%;
	background-color:lightslategrey;
}
.box{
 	transform:translate(20%,20%);
 }
 .btn{
	color:white;
   position:relative;
	font-size:20px;
	font-family:"montserrat";
	text-decoration:none;
	margin:30px ;
	padding:15px;
	text-transform:uppercase;
	overflow:hidden;
	transition:1s all ease;
 }
 .btn::before{
    	 background:black;
	     content:"";
       position:absolute;
       top:0%;
       left:0%;
       bottom:0%;
      right:0%;
      opacity: 0.4;
     z-index:-1;
	transition: all 0.6s ease;
	}
 .btn1::before{
  	width:0px;
	height:100%;
}
.btn1:hover::before{
 width:100%;
}
.btn2::before{
 width:100%;
 height:0;
}
.btn2:hover::before{
 height:100%;
 }
.btn3::before{
width:0px;
 height:100%;
}
.btn3:hover::before{
width:100%;
 }
.btn4::before{
 width:100%;
 height:0;
}
.btn4:hover::before{
 height:100%;
 }
 

.topnav
{
   padding-top: 0px;
    background-color: #66d9ff;
}
.table1
{
    border-radius: 10px;
   
    width:100%;
    height:100%;
    margin-top: 10px;
    margin-bottom: 20px;
    background-color: slategray;    
}
.card1
{
    align:center;
    padding: 20px;
    margin-left:40%;
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
.content1{
    margin-top:10%;
}
.ads_column{
width:300px;
height:700px;
left:3%;
position:absolute;
tranform:translate(-50%,-50%);

background-size:100% 100%;
box-shadow:1px 2px 10px 6px white;
animation:slider 18s infinite linear;
}
@keyframes slider{
      0% { background-image: url(images/Slide1.JPG); 
	        background-size:100% 100%;
	  }
    15%{background-image: url(images/Slide2.JPG);
	        background-size:100% 100%;
	  }
    35%{background-image: url(images/Slide3.JPG);
	        background-size:100% 100%;
          }
	50%{background-image: url(images/Slide4.JPG); 
	        background-size:100% 100%;
        }
	65%{background-image: url(images/Slide5.JPG);
	        background-size:100% 100%;
        }
	85%{background-image: url(images/Slide6.JPG);
	        background-size:100% 100%;
        }
	 100%{background-image: url(images/Slide7.JPG);
	        background-size:100% 100%;
         } 		
}

</style>