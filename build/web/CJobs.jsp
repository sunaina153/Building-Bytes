<%-- 
    Document   : CArticles
    Created on : Feb 21, 2020, 5:59:43 PM
    Author     : Sunaina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	    <LINK REL=STYLESHEET type=text/CSS href=css/c_article_style.css>
           
		<link rel=stylesheet href=bootstrap.css>
                <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
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
                                                   <a href="CAfterLogin.jsp" class="btn btn4">Home</a>
			<a href="CJobs.jsp" class="btn btn1">Job Update</a>
                                                    <a href="Cchallenges.jsp" class="btn btn2">Challenge</a>
			<a href="Cecell.jsp" class="btn btn3">E-cell</a>
			<a href="CAccount.jsp" class="btn btn4">My account</a>
                                            </div>
                                           </td>
                                  </tr>
                          </table>
          </div>
			<div>
               <div class="row">
  <div class="leftcolumn">
      <br>
          <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

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
statement=connection.createStatement(); %>
<%
String idd= session.getAttribute("idd").toString();
String sql ="(SELECT article FROM ArticlesPosted )" ;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<div class="card1">
<%=resultSet.getString("Idea")

%>
</div>
<% 
}
} catch (Exception e) {
e.printStackTrace();
}
%>
<style>
     .post
    {
        font-family: Palantino Linotype;
        color:black;
        font-size: 17px;
        
    }
    .txta1
    {
        text-align: center;
        background-color: white;
        border-color: 2px solid #d9b3ff;
        font-family: Palantino Linotype;
        color:black;
        font-size: 17px;
        padding:3px;
        height:40px;
        margin:5px;
        margin-left: 275px;
        width:400px;
    }
    .txta1:hover
    {
        background-color: #d9b3ff;
        color:black;
    }
    .txta2
    {
        text-align: center;
        font-family: Palantino Linotype;
        color:black;
        font-size: 17px;
        margin:8px;
        height:150px;
    }
    .txta2:hover
    {
        background-color: #d9b3ff;
        color:black;
    }
    .postbtn
    {
        color:black;
        background-color: #d9b3ff;
        font-family: Palantino Linotype;
        width:100px;
        height:50px;
        padding:10px;
        border-right: 5px;
        font-size: 20px;
        margin:5px;
        margin-left: 380px;
        font-weight: bold;
    }
    .postbtn:hover
    {
        color:#d9b3ff;
        background-color: black;
    }
</style>
<div class="post">
    <form action="CJobsPost" method="post">
    <textarea placeholder="Company Name" name="txt0" class="txta1"></textarea><br>
    <textarea placeholder="Job Role" name="txt1" class="txta1"></textarea><br>
    <textarea placeholder="Job Description" name="txt2" class="txta2"></textarea><br>
    <button class="postbtn" type="submit"> POST</button>
    </form>
</div>
<div class="onlyarti">
   
        <%
            try{

String sql ="select * from job_posted";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
 <div class="box">
    <div class="icon"><%=resultSet.getString("JRole") %></div>
    <div class="arti_block">
<h2><%=resultSet.getString("Name") %> has posted:</h2>
<p><%=resultSet.getString("Description") %></p>
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
<div class="heha">
         <div class="ads_column">
    </div>  
	</div>
    
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
<style>
body{
		background-color:black;
		margin:0;
                overflow-x: hidden;
	}
	.p1{
		text-align:left;
		padding:0px;
		margin:0px;
		
	}
	.p2{
		text-align:left;
		padding:0px;
		margin-top:-10px;
		margin-left:10px;
		font-family:Palantino Linotype;
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
.box{
 	transform:translate(20%,20%);
 }
 .btn{color:black;
                    position:relative;
	font-size:18px;
	font-family: Palantino Linotype;
	text-decoration:none;
	margin:20px ;
	padding:15px;
	text-transform:uppercase;
	overflow:hidden;
	transition:1s all ease;
        font-weight: bold;
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
.footer{
    padding: 20px;
    margin-bottom:20px;
    margin-top: 20px;
    background-color:#d9b3ff;
    border-radius: 10px;
    color:black;
}

a{
    text-decoration: none;
}
a:hover
    {
       text-decoration:underline;
      border-radius:5px;
    }
 *
    {
        box-sizing: border-box;
    }
	.list1
{
    font-family: Palantino Linotype;
    font-size:20px;
    color:black;
}

.rightcolumn {
  float: left;
  width: 25%;
  padding-left: 20px;
}

/* Fake image */
.fakeimg {
  width: 100%;
  padding: 20px;
}
.query{
	background-color:lightgrey;
}

.row:after {
  content: "";
  display: table;
  clear: both;
}

@media screen and (max-width: 800px) {
  .container, .rightcolumn {   
    width: 100%;
    padding: 0;
  }
}

@media screen and (max-width: 400px) {
  .topnav a {
    float: none;
    width: 100%;
  }
}
.heha{
      margin-top:10%;
}
.ads_column{
width:400px;
height:550px;
right:3%;
position:absolute;
tranform:translate(-50%,-50%);

background-size:100% 100%;
box-shadow:1px 2px 10px 6px white;
animation:slider 18s infinite linear;
}
@keyframes slider{
      0% { background-image: url(images/pic1.jpg); 
	        background-size:100% 100%;
	  }
    15%{background-image: url(images/pic2.jpg);
	        background-size:100% 100%;
	  }
    35%{background-image: url(images/Slide3.JPG);
	        background-size:100% 100%;
          }
	50%{background-image: url(images/Slide4.JPG); 
	        background-size:100% 100%;
        }
	65%{background-image: url(images/pic4.png);
	        background-size:100% 100%;
        }
	85%{background-image: url(images/Slide6.JPG);
	        background-size:100% 100%;
        }
	 100%{background-image: url(images/Slide7.JPG);
	        background-size:100% 100%;
         } 	

</style>


