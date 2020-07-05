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
                <div class="icon"><i class="fa fa-book" aria-hidden="true"><p class="fafa">JAVA Interview Questions</p></i></div>
 <div class="content">
<div class="card1">
    <a href="book/java_interview_questions.pdf" target="_blank" type="application/pdf">Interview Questions Pdf</a><br><br>
    <a href="book/Java-Interview-Questions.pdf" target="_blank" type="application/pdf">Interview Questions</a><br><br>
    <a href="book/advanced-java-interview-questions-answers-guide.pdf" target="_blank" type="application/pdf">Advance Java</a>  
</div>
</div>
</div>                     
<div class="box"> 
<div class="icon"><i class="fa fa-book" aria-hidden="true"><p class="fafa">Aptitude Pdfs</p></i></div>
<div class="content">
<div class="card1">
    <a href="book/aptitude-test.pdf" target="_blank" type="application/pdf">Aptitude Questions</a><br><br>
    <a href="book/Aptitude-Test-Paper.pdf" target="_blank" type="application/pdf">Solved Q/A(Aptitude)</a><br><br>
    <a href="book/mba_apttest.pdf" target="_blank" type="application/pdf"><centre>Entrance Exam Aptitude</centre></a><br><br>    
</div>
 </div>
</div>
<div class="box"> 
<div class="icon"><i class="fa fa-book" aria-hidden="true"><p class="fafa">Technical Interview Questions</p></i></div>
<div class="content">
<div class="card1">
    <a href="book/coding-interview.pdf" target="_blank" type="application/pdf">Coding Interview </a><br><br>
    <a href="book/Common Interview Questions.pdf" target="_blank" type="application/pdf">Common Technical Questions</a><br><br>
    <a href="book/Placement-Test-Questions-answers-Unix-and-Networking.pdf" target="_blank" type="application/pdf">Unix and N/W Questions</a>   
</div>
</div>
</div>
<div class="box"> 
<div class="icon"><i class="fa fa-book" aria-hidden="true"><p class="fafa">C & C++ Questions</p></i></div>
<div class="content">
<div class="card1">
    <a href="book/cprogrammingquestion.pdf" target="_blank" type="application/pdf">C Programming</a><br><br>
    <a href="book/c++interviewquestions.pdf" target="_blank" type="application/pdf">C++ Programming</a><br><br>

</div>
</div>
</div>
<div class="box"> 
<div class="icon"><i class="fa fa-book" aria-hidden="true"><p class="fafa">Puzzles and Brain Teasures</p></i></div>
<div class="content">
<div class="card1">
    <a href="book/400-Puzzles.pdf" target="_blank" type="application/pdf">Puzzles</a><br><br>  
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