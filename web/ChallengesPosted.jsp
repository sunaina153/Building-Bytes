<%-- 
    Document   : Chome
    Created on : Feb 21, 2020, 6:00:20 PM
    Author     : Stuti
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
	font-family:"montserrat";
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
	font-size:18px;
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
 .ads_column{
margin-left:68%;
margin-top:5%;
width:400px;
height:350px;
position:absolute;
tranform:translate(-50%,-50%);
background-size:100% 100%;
box-shadow:1px 2px 10px 6px #a3c2c2;
animation:slider 15s infinite linear;
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
.leftcolumn{
    margin-top:7%;
	width:1000px;
	display:flex;
	flex-wrap:wrap;
	justify-content:space-between;
	}
.card{
	position:relative;
        	margin-right:12%;
	width:300px;
	height:400px;
	background:#a3c2c2;
	box-shadow:0 30px 30px rgba(0,0,0,.5);
}
	.card .imgBx{
	position:absolute;
	top:0;
	left:0;
	width:100%;
	height:100%;
	}
	.card .imgBx img{
	position:absolute;
	top:0;
	left:0;
	width:100%;
	height:100%;
	object-fit:cover;
	transition:0.5s;
	}
	.card:hover .imgBx img{
	opacity:0;
	}
.card .material{
	position:absolute;
	bottom:20px;
	left:10%;
	width:80%;
	height:60px;
	background:black;
                 color:#d9b3ff;
	transition:0.5s;
	overflow:hidden;
	padding:15px;
	box-sizing:border-box;
                 border-radius: 5px;
	}
	.card:hover .material{
	height:100%;
	width:100%;
	bottom:0;
	left:0;
                background:#d9b3ff;
                    color:black;
	}
	.card .material h2{
	margin:0;
	padding:0;
	font-size:20px;
	}
	.card .material p{
	margin:10px 0 0;
	padding:0;
	opacity:0;
	line-height:1.2em;
	transition:0.5s;
	text-align:justify;
	}
	.card:hover .material p{
	opacity:1;
	transition-delay:0.5s;
	}  
 .rightcolumn{
	width:1000px;
	display:flex;
	flex-wrap:wrap;
	justify-content:space-between;
	}
.card1{
                position:relative;
        
	width:300px;
	height:400px;
	background:#d9b3ff;
	box-shadow:0 30px 30px rgba(0,0,0,.5);
}
	.card1 .imgBx1{
	position:absolute;
	top:0;
	left:0;
	width:100%;
	height:100%;
	}
	.card1 .imgBx1 img{
	position:absolute;
	top:0;
	left:0;
	width:100%;
	height:100%;
	object-fit:cover;
	transition:0.5s;
	}
	.card1:hover .imgBx1 img{
	opacity:0;
	}
.card1 .material1{
	position:absolute;
	bottom:20px;
	left:10%;
	width:80%;
	height:60px;
	transition:0.5s;
	overflow:hidden;
	padding:15px;
	box-sizing:border-box;
                background:black;
                 color:#d9b3ff;
                 border-radius: 5px;
	}
	.card1:hover .material1{
	height:100%;
	width:100%;
	bottom:0;
	left:0;
        background:#d9b3ff;
                 color:black;
	}
	.card1 .material1 h2{
	margin:0;
	padding:0;
	font-size:20px;
	}
	.card1 .material1 p{
	margin:10px 0 0;
	padding:0;
	opacity:0;
	line-height:1.2em;
	transition:0.5s;
	text-align:justify;
	}
	.card1:hover .material1 p{
	opacity:1;
	transition-delay:0.5s;
	}  
        .c1
        {
            font-family: Palantino Linotype;
            font-size:20px;
            color:white;
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
.t1
{
    width:600px;
    height:400px;
}
.r1
{
    font-size: 15px;
}
.r1:hover
{
    background-color: #d9b3ff;
    color:black;
}
.mybtn{
    background-color: #d9b3ff;
    width:100px;
    height:50px;
    padding:10px;
    font-family: Palantino Linotype;
    margin-left: 200px;
    font-size: 18px;
    font-weight: bold;
}
.mybtn:hover
{
    background-color: black;
    color:#d9b3ff;
    
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
               <h4><font face="Palantino Linotype" color="white" size="5px">
                    <%
                        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/buildingbytes","root","");
                    Statement stmt=conn.createStatement();
                    String l = session.getAttribute("nm").toString();
                    String m = session.getAttribute("eml").toString();
                    String n = session.getAttribute("idd").toString();
                    out.println("Hey "+  l+"!");
                    %>
                    </font></h4>
            </div>
               <div class="row">
                    <div class="ads_column">
                        
    </div> 
  <div class="leftcolumn">
      <div class="content1">
           
      <center>
          <h1 class="c1" ><font-face Palantino Linotype>Upload Practice Sets for studnets</font-face></h1>
        <form method="post" action="SetPdfUpload" enctype="multipart/form-data">
            <table border="2" class="t1">
                <tr class="r1">
                    <td><font face="Palantino Linotype" color="white" size="13px">Topic</font> </td>
                    <td><input type="text" name="subject" size="50"/></td>
                </tr>
                
                <tr class="r1">
                    <td ><font face="Palantino Linotype" color="white" size="13px">Select File</font></td>
                    <td><input type="file" name="pdf" size="50"/></td>
                </tr>
                <tr class="r1">
                    <td colspan="2">
                        <input type="submit" value="UPLOAD" class="mybtn">
                    </td>
                </tr>
            </table>
        </form>
        </center>
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