<%-- 
    Document   : Chome
    Created on : Feb 21, 2020, 6:00:20 PM
    Author     : Stuti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
		<link rel=stylesheet href=bootstrap.css>
                <style>
                     body
{ overflow-x: hidden;
    background-color:black;
}
.box{
 	transform:translate(20%,20%);
 }
 .btn{
	color:black;
                 position:relative;
	font-size:20px;
	font-family:"Palantino Linotype";
	font-weight: bold;
	margin:10px ;
	padding:15px;
	text-transform:uppercase;
	overflow:hidden;
	transition:1s all ease;
 }
 .btn:hover
 {
     background-color: black;
     color:#d9b3ff;
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
 .btn5::before{
 width:0px;
	height:100%;
}
.btn5:hover::before{
width:100%;
 }
	.p1{
		text-align:left;
		padding:0px;
		margin:0px;
		position:fix;
	}
	.p2{
		text-align:left;
		padding:0px;
		margin-top:-10px;
		margin-left:10px;
		font-family:Lucida Calligraphy;
	}

.hey{
	margin:0px;
	}
.topnav button
{
  float: revert;
  cursor:pointer;
	margin-top:-49px;
	margin-left: -5px;
  width:20px;
  padding:20px;
  border: 2px solid grey;
  border-left: none;
	 border-radius: 0px 10 10 0px;
}

.topnav
{  width:100%;
   padding-top: 0px;
   margin-top:0;
   background-color: #d9b3ff;
   border-radius: 10px;
}
 *
    {
        box-sizing: border-box;
    }
    .box{
 	transform:translate(20%,20%);
 }
 .btn{
	color:black;
   position:relative;
	font-size:20px;
	font-family:"montserrat";
	text-decoration:none;
	margin:10px ;
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

@keyframes slider{
      0% { background-image:url(images/Slide8.JPG); 
	        background-size:100% 100%;
	  }
	  15%{background-image:url(images/Slide8.JPG); 
	        background-size:100% 100%;
	  }
	  35%{background-image:url(images/Slide10.JPG); 
	        background-size:100% 100%;}
	50%{background-image:url(images/Slide11.JPG); 
	        background-size:100% 100%;}
	65%{background-image:url(images/Slide12.JPG); 
	        background-size:100% 100%;}
	85%{background-image:url(images/Slide13.JPG); 
	        background-size:100% 100%;}
	 95%{background-image:url(images/Slide14.JPG); 
	        background-size:100% 100%;} 		
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
.card1
{
    width: 1000px;
    height:450px;
    border-right: 5px;
    padding-bottom: 10px;
    padding-left: 20px;
    margin-left: 100px;
    margin:50px;
}
.card1:hover
{
    background-color: #d9b3ff;
    width:920px;
    height:435px;
    border-radius: 4px;
    padding:3px;
    margin-left: 100px;
    margin-top: 50px;
}
.list1
{
    font-size: 20px;
    font-family: Palantino Linotype;
}
.footer{
    padding: 20px;
    margin-bottom:20px;
    margin-top: 20px;
    background-color:#d9b3ff;
    border-radius: 10px;
    color:black;
}
.category{
    width:950px;
     height:425px;
     font-family: Palantino Linotpe;
     font-size: 20px;
     color:#d9b3ff;
   margin:100px;
   text-align: center;   
}

</style>
	</head>
	<body>
	  <div class="topnav" align=center width=100% class="table1" >
                          <table border=0 width=100% >
		<tr>
                                           <td>
                                                    <h1 >BUILDING BYTES</h1>
                                                    <h3 > Explore | Learn | Share</h3>
                                           </td>
                                           <td>
                                              <div class="box">
			 <a href="SAfterLogin.jsp" class="btn btn4">Home</a>
			<a href="Study.jsp" class="btn btn1">E-BOOKS</a>
                                                    <a href="LectureVideos.jsp" class="btn btn2">Lecture Videos</a>
			<a href="Secell.jsp" class="btn btn3">E-cell</a>
			<a href="SAccount.jsp" class="btn btn4">My account</a>
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
<div class="category">
     <h3>Data Communication and Networks</h3>
<div class="card1">
    <iframe width="900" height="425" src="<%=resultSet.getString("Video")%>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
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
<div class="category">
     <h3>Data Structures and Algorithm</h3>
<div class="card1">
    <iframe width="900" height="425" src="<%=resultSet.getString("Video")%>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
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
<div class="category">
     <h3>Software Engineering</h3>
<div class="card1">
    <iframe width="900" height="425" src="<%=resultSet.getString("Video")%>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
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
<div class="category">
     <h3>Database Management System</h3>
<div class="card1">
    <iframe width="900" height="425" src="<%=resultSet.getString("Video")%>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
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
<div class="category">
     <h3>Computer Architecture</h3>
<div class="card1">
    <iframe width="900" height="425" src="<%=resultSet.getString("Video")%>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
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
<div class="category">
<div class="card1">
    <h3>Java Programming Language</h3>
    <iframe width="900" height="425" src="<%=resultSet.getString("Video")%>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
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
<div class="category">
     <h3>Internet and Web Technology</h3>
<div class="card1">
    <iframe width="900" height="425"  src="<%=resultSet.getString("Video")%>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
</div>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%> 
        </div>
               </div>		
	<div class="footer">
			<table  width=100% height=10% border=0 >
			<tr>
				<td><a href="AboutUs.jsp" class="btn btn1">ABOUT US</a></td>
				<td><a href="Contact.jsp" class="btn btn2">CONTACT US</a></td>
				<td><a href="Feedback.jsp" class="btn btn3">FEEDBACK</a></td>
				<td> <a href="Privacy.jsp" class="btn btn4">PRIVACY POLICY</a></td>
			</tr>
			
			</table>
            </div>
          
	</body>
</html>