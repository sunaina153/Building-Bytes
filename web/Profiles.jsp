<%-- 
    Document   : CArticles
    Created on : Feb 21, 2020, 5:59:43 PM
    Author     : Sunaina
--%>

<%@page import="java.sql.PreparedStatement"%>
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
                                                    <a href="ChallengesPosted.jsp" class="btn btn2">Challenge</a>
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

Connection con = null;
Statement statement = null;
ResultSet rs = null;
%>


        <%
try
{    
//String s1 ="select t1.Name, t1.Email, t2.University, t2.Course, t2.Year, t2.Skill, t2.Project, t2.XIIth_Per, t2.Xth_Per FROM student t1 JOIN student_profile t2 ON t1.S_ID = t2.S_ID";
String s1 = "select * FROM student , student_profile WHERE student.S_ID = student_profile.S_ID";
//PreparedStatement ps = con.prepareStatement(s1);
ResultSet rs1=statement.executeQuery(s1);
while(rs1.next()){
%>
<h3 class="d1"><%=rs1.getString("Name") %></h3>
<table class="t1">

<tr class="d1"><td>Email</td><td><%=rs1.getString("Email") %></td></tr>
<tr class="d1"><td>University</td><td><%=rs1.getString("University") %></td></tr>
<tr class="d1"><td>Course</td><td><%=rs1.getString("Course") %></td></tr>
<tr class="d1"><td>Year</td><td><%=rs1.getString("Year") %></td></tr>
<tr class="d1"><td>Skill</td><td><%=rs1.getString("Skill") %></td></tr>
<tr class="d1"><td>Project</td><td><%=rs1.getString("Project") %></td></tr>
<tr class="d1"><td>XIIth %</td><td><%=rs1.getString("XIIth_Per") %></td></tr>
<tr class="d1"><td>Xth %</td><td><%=rs1.getString("Xth_Per") %></td></tr>
</table>
     
            <%
}
}
catch (Exception e)
{
e.printStackTrace();
}
%>
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
     .t1
{
                       width:600px;
                       text-align: center;
                       font-family: Palantino Linotype;
                       padding:15px;
                       background:white;
                       height:600px;
                       font-size: 25px;
                       margin-left: 100px;
                       padding: 40px;
                       border:40px;
                   }
                   .d1
                   {
                       padding:30px;
                       height: 50px;
                       text-align:center;
                   }
                   .d1:hover
                   {                      
                       color:#d9b3ff;
                       background-color: black;
                   }
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
	font-family:"montserrat";
	text-decoration:none;
	margin:30px ;
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

</style>


