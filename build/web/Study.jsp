<%-- 
    Document   : Study
    Created on : 18 Feb, 2020, 6:05:10 PM
    Author     : hp
--%>

<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%-- 
    Document   : newjsp
    Created on : 4 Feb, 2020, 4:26:55 PM
    Author     : hp
--%>

<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
	    <LINK REL=STYLESHEET type=text/CSS href=css/studystyle.css>
            
		<link rel=stylesheet href=bootstrap.css>
                <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	</head>
	<body>	
		 <div class="topnav" align=center width=100% >
				<table border=0 width=100% >
					<tr><td>
					<h1 class=p1>BUILDING BYTES</h1>
				<h3 class=p2> Explore | Learn | Share</h3></td>
                                                                        <td>
                                                                       
			<div class="box">
                                                   <a href="SAfterLogin.jsp" class="btn btn4">Home</a>
			<a href="Study.jsp" class="btn btn1">E-BOOKS</a>
                                                    <a href="LectureVideos.jsp" class="btn btn2">Lecture Videos</a>
			<a href="Secell.jsp" class="btn btn3">E-cell</a>
			<a href="SAccount.jsp" class="btn btn4">My account</a>
                                            </div>
                                           
                                                                        </td>
				</table>
			</div>
			
               <div class="row">
                    <div class="rightcolumn">
      <div class="block b1">
          <h2><font color="black"><center>Articles</center></font></h2>
      <ul type="disc" class="list1">
          <li><a href="SArticles.jsp">Data Structures and Algorithms</a></li>
          <li><a href="SArticles.jsp">Segmentation and Paging</a></li>
          <li><a href="SArticles.jsp">Mealy Machine and Moore Machine</a></li>
          <li><a href="SArticles.jsp">How to build a website using ...</a></li>
       </ul>
          <a href="SArticles.jsp"><font face="Palantino Linotype" color="black" size="5"><b>View more...</b></font></a>
    </div>
    <div class="block b2">
        <br>
        <h2><font color="black"><center>Query Corner</center></font></h2>		
      <ul type="disc" class="list1">
          <li><a href="SQuery.jsp">Which language is better: Python or R?</a></li>
          <li><a href="SQuery.jsp">My GRE score is 300, how would i get ...</a></li>
          <li><a href="SQuery.jsp">Between React Js and Node Js, if I...</a></li>
      </ul>
      <a href="SQuery.jsp"><font face="Palantino Linotype" color="black" size="5"><b>View more...</b></font></a>
    </div>
  </div>
<div class="container">
<div class="box"> 
                <div class="icon"><i class="fa fa-book" aria-hidden="true"><p class="fafa">Software Engineering</p></i></div>
 <div class="content">
<div class="card1">
    <a href="book/BLOCK 1 (1).pdf" target="_blank" type="application/pdf">Module 1</a><br><br>
    <a href="book/BLOCK 2 (1).pdf" target="_blank" type="application/pdf">Module 2</a><br><br>
    <a href="book/mcs-024.pdf" target="_blank" type="application/pdf">Software Engg</a>  
</div>
</div>
</div>                     
<div class="box"> 
<div class="icon"><i class="fa fa-book" aria-hidden="true"><p class="fafa">Data Structure</p></i></div>
<div class="content">
<div class="card1">
    <a href="book/10-ArraysAndStrings.pdf" target="_blank" type="application/pdf">Arrays and Strings</a><br><br>
    <a href="book/10Hashing.pdf" target="_blank" type="application/pdf">Hashing</a><br><br>
    <a href="book/Asymptotic.pdf" target="_blank" type="application/pdf"><centre>Asymptotic Notations</centre></a><br><br>
    <a href="book/TimeComplexity_using_Big_O.pdf" target="_blank" type="application/pdf">Time Complexity</a>    
</div>
 </div>
</div>
<div class="box"> 
<div class="icon"><i class="fa fa-book" aria-hidden="true"><p class="fafa">C & C++ Programming Language</p></i></div>
<div class="content">
<div class="card1">
    <a href="book/CStrings.pdf" target="_blank" type="application/pdf">C Strings</a><br><br>
    <a href="book/cpp_functions.pdf" target="_blank" type="application/pdf">C++ Functions</a><br><br>
    <a href="book/CPlusPlusNotesForProfessionals (1) (2) (4) (1) (1).pdf" target="_blank" type="application/pdf">C++ Notes</a>   
</div>
</div>
</div>
<div class="box"> 
<div class="icon"><i class="fa fa-book" aria-hidden="true"><p class="fafa">JAVA Programming Language</p></i></div>
<div class="content">
<div class="card1">
    <a href="book/MULTI THREAD.pdf" target="_blank" type="application/pdf">Multi Threading</a><br><br>
    <a href="book/JDBC.pdf" target="_blank" type="application/pdf">JDBC Tutorial</a><br><br>
    <a href="book/event listener.pdf" target="_blank" type="application/pdf">Event Listener</a><br><br>
</div>
</div>
</div>
<div class="box"> 
<div class="icon"><i class="fa fa-book" aria-hidden="true"><p class="fafa">Data Communications and Networks</p></i></div>
<div class="content">
<div class="card1">
    <a href="book/DCN NOTES.pdf" target="_blank" type="application/pdf">DCN NOTES</a><br><br>
    <a href="book/data-communication-and-networking-by-behrouz-a-forouzan.pdf" target="_blank" type="application/pdf">DCN By Forouzan</a><br><br>
    <a href="book/Transport Layer .pdf" target="_blank" type="application/pdf">Transport Layer Notes</a>   
</div>
</div>
</div>
<div class="box"> 
<div class="icon"><i class="fa fa-book" aria-hidden="true"><p class="fafa">Internet & Web Technology</p></i></div>   
<div class="content">
<div class="card1">
    <a href="book/Validation.pdf" target="_blank" type="application/pdf">Form Validation</a><br><br>
    <a href="book/WEB TECHNOLOGIES Lecture Notes.pdf" target="_blank" type="application/pdf">Lecture Notes</a><br><br>
    <a href="book/Web-Technologies PPT.pdf" target="_blank" type="application/pdf">Web Technology</a><br><br>
    <a href="book/IWT.pdf" target="_blank" type="application/pdf">IWT</a> 
</div>
</div>
</div>
<div class="box"> 
<div class="icon"><i class="fa fa-book" aria-hidden="true"><p class="fafa">Database Management System</p></i></div> 
<div class="content">
<div class="card1">
    <a href="book/relational algebra questions.pdf" target="_blank" type="application/pdf">Relational Algebra</a><br><br><br>
    <a href="book/1. Introduction_Architecture of DBMS.pdf" target="_blank" type="application/pdf">DBMS Architecture</a><br><br><br>
    <a href="book/sql programming (4th edition).pdf" target="_blank" type="application/pdf">SQL Programming</a>  
</div>
</div>
</div>
<div class="box"> 
<div class="icon"><i class="fa fa-book" aria-hidden="true"><p class="fafa">Operating Systems</p></i></div>
<div class="content">
<div class="card1">
    <a href="book/BLOCK 1.pdf" target="_blank" type="application/pdf">Module 1</a><br><br>
    <a href="book/BLOCK 2.pdf" target="_blank" type="application/pdf">Module 2</a><br><br>
    <a href="book/BLOCK 3.pdf" target="_blank" type="application/pdf">Module 3</a><br><br>
    <a href="book/unix_tutorial.pdf" target="_blank" type="application/pdf">Unix Tutorial</a>    
</div>
</div>
</div>
<div class="box"> 
<div class="icon"><i class="fa fa-book" aria-hidden="true"><p class="fafa">Artificial Intelligence and Machine Learning</p></i></div>
<div class="content">
<div class="card1">
    <a href="book/artificial-intelligence-by-rich-and-knight.pdf" target="_blank" type="application/pdf">AI by Rich and Knight</a><br><br><br>
    <a href="book/Artificial Intelligence Notes - TutorialsDuniya.pdf" target="_blank" type="application/pdf">AI NOTES</a><br><br><br>
    <a href="book/artificial-intelligence-modern-approach.9780131038059.25368.pdf" target="_blank" type="application/pdf">AI Modern Approach</a>   
</div>
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
	}
	.p1{
		text-align:left;
		padding:0px;
		margin:0px;
		position:fix;
                                    font-family:Palantino Linotype;
	}
	.p2{
		text-align:left;
		padding:0px;
		margin-top:10px;
		
		font-family:Palantino Linotype;
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
 .table
 {
     background-color:#d9b3ff;
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
                                font-family:Palantino Linotype;
                                    font-size: 33px;
	}
	.p2{
		text-align:left;
		font-family:Palantino Linotype;
                                   font-size: 20px;
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
        .footer{
    padding: 20px;
    margin-bottom:20px;
    margin-top: 20px;
    background-color:#d9b3ff;
    border-radius: 10px;
    color:black;
        }
/* Style the button that is used to open the sidepanel */

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
.row
{
    height:950px;
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