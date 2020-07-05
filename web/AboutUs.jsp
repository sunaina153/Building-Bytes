<%-- 
    Document   : AboutUs
    Created on : 18 Feb, 2020, 10:23:43 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
		<link rel=stylesheet href=bootstrap.css>
          <style>
                    body{
		background-color:black;
		margin:0;
                font-family: sans-serif;
                overflow-x: hidden;
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

.footer{
    padding: 20px;
    margin-bottom:20px;
    margin-top: 20px;
    background-color:#d9b3ff;
    border-radius: 10px;
}

.topnav{
    padding: 20px;
	margin-bottom:0; 	 
     background-color:#d9b3ff;
}
 *
    {
        box-sizing: border-box;
    }
    .box{
 	transform:translate(20%,20%);
 }
 .btn{
	color:white;
   position:relative;
	font-size:20px;
	font-family:Palantino Linotype;
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
 .wrapper{
     margin-top: 10%;
 }
 .wrapper h1{
     font-family: Palantino Linotype;
     font-size:52px;
     margin-bottom: 60px;
     text-align: center;
     color: white;
 }
 .team{
     display:flex;
     text-align:center;
     width:auto;
     justify-content: center;
 }
 .team .team_member{
     background: white;
     margin:5px;
     margin-bottom:50px;
     width:300px;
     padding:20px;
     line-height: 20px;
     color: black;
     position:relative;
 }
 .team .team_member h3{
   color: #cc00cc;
   font-size:26px;
   margin-top:50px;
 }
 .team .team_member p.role{
   color:BLACK;
   font-size:16px;
   font-family: Palantino Linotype;
   font-weight: bold;
 text-transform: uppercase;
 margin:12px 0;
 }
 .team .team_member .team_img{
     width:100px;
     height: 100px;
     border-radius:50%;
     position:absolute;
     top:-50px;
     left:50%;
     transform: translateX(-50%);
       background: white;
 }
 .team .team_member .team_img img{
     width:100px;
     height: 100px;
      border-radius:50%;
    padding: 10px;
    
      
 }
 .btn{
	color:black;
                 position:relative;
	font-size:20px;
	font-family:"Palantino Linotype";
	font-weight: bold;
	margin:30px ;
	padding:15px;
	text-transform:uppercase;
	overflow:hidden;
	transition:1s all ease;
 }
 .btn:hover
 {
     color:#d9b3ff;
     background-color: black;
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

.topnav
{  width:100%;
   padding-top: 0px;
   margin-top:0;
   background-color: #d9b3ff;
   border-radius: 10px;
}
.table1
{
    border-radius: 10px;
    width:100%;
    margin-top: 10px;
    margin-bottom: 20px;
    background-color: #d9b3ff;    
}
.name
{
    font-family: Palantino Linotype;
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
                                        <a href="home.jsp" target="_blank" class="btn btn1"> HOME</a>
                                        <a href="#" class="btn btn2"><u> ABOUT US</u></a>
                                        <a href="Contact.jsp" class="btn btn4"> CONTACT US</a>
                                        <a href="Privacy.jsp" class="btn btn5">POLICY </a>
                                                </div>
                                           </td>
                                  </tr>
                          </table>
         </div>
                                    <div class="wrapper">
                                        <h1> OUR TEAM</h1>
                                        <div class="team">
                                         <div class="team_member">
                                             <div class="team_img">
                                                <img src="images/Photo Collage_2019622173117237.jpg" height="400px">
                                            </div>
                                             <h3 class="name">SHRISTI</h3>
                                            <p class="role">FRONT-END DEVELOPER</p>
                                            <p>A passionate web developer pursuing B.Tech from Banasthali Vidyapith who is always update with new technology and software.</p>  </div>
                                        <div class="team_member">
                                             <div class="team_img">
                                                <img src="images/my1.jpg" height="400px">
                                            </div>
                                             <h3 class="name">STUTI</h3>
                                            <p class="role">BACK-END DEVELOPER</p>
                                            <p> An undergraduate pursuing B.Tech Information Technology from Banasthali Vidyapith. Apart from writing codes, has enormous interest in movies and series.</p>
                                      
                                        </div>
                                         <div class="team_member">
                                            <div class="team_img">
                                                <img src="images/MyPhoto.jpg" height="400px">
                                            </div>
                                         <h3 class="name">SUNAINA</h3>
                                            <p class="role">BACK-END DEVELOPER</p>
                                            <p>A B.Tech undergraduate, an enthusiastic learner of new coding languages. Besides web development, has keen interest in French literature.</p>
                                        </div>
                                             <div class="team_member">
                                             <div class="team_img">
                                                <img src="images/PhotoGrid_1565453509198.jpg" height="400px">
                                            </div>
                                             <h3 class="name">SURABHI</h3>
                                            <p class="role">FRONT-END DEVELOPER</p>
                                            <p>An enthusiastic web developer pursuing B.Tech from Banasthali Vidyapith who always tries to push boundaries in search of great breakthroughs.</p>
                                       
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