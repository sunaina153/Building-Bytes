<%-- 
    Document   : home.jsp
    Created on : 27 Feb, 2020, 11:56:42 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!--	    <LINK REL=STYLESHEET type=text/CSS href=css/homestyle.css>-->
		<link rel=stylesheet href=bootstrap.css>
                 <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
                 <!-- Start WOWSlider.com HEAD section -->
<link rel="stylesheet" type="text/css" href="engine1/style.css" />
<script type="text/javascript" src="engine1/jquery.js"></script>
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
 padding-left: 700px;
 width:400px;
 height:200px;
 
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
    
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
  opacity:0;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>
<!-- End WOWSlider.com HEAD section -->
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
                                        <a href="home.jsp" class="btn btn1"> HOME</a>
                                        <a href="AboutUs.jsp" class="btn btn2"> ABOUT US</a>
                                      
                                        <a href="Contact.jsp" class="btn btn4"> CONTACT US</a>
                                        <a href="Privacy.jsp" class="btn btn5">POLICY </a>
                                                </div>
                                           </td>
                                  </tr>
                          </table>
         </div>
    <div class="login">
        <div class="innerlogin" align="center">
            <div class="form" >
                <form action="CPassServlet" method="post">
                    <div>
                        <input placeholder="Email" id="username" class="input-field" name="username" type="text" required="required" data-validation-required-message="Please enter your username.">
                    </div>
                    <br>
                    <label class="please">
<pre>
Please Enter the security questions and their answers</pre>
                    </label><br>
                    <style>
                        .please
                        {
                            font-family: Palantino Linotype;
                            font-weight: bold;
                            font-size: 20px;
                        }
                    </style>
                    <div class="select">
                                    <select name="dpdSecurityQstn1" id="SQ1" required />
                                       <option value="1">What was your first pet's name?</option>
                                        <option value="2">What was your mother's birthplace?</option>
                                        <option value="3">Who is your favourite cricketer?</option>
                                        <option value="4">Who is your favourite director?</option>
                                        <option value="5">What primary school did you attend?</option>
                                        <option value="6">What was your childhood nickname?</option>
                                    </select>
                        </div>
                    <input placeholder="Answer1" id="ans1" class="input-field" name="ans1" type="text" required="required" data-validation-required-message="Please enter your answer.">
                   <div class="select">
                                    <select name="dpdSecurityQstn2" id="SQ1" required />
                                       <option value="1">What was your first pet's name?</option>
                                        <option value="2">What was your mother's birthplace?</option>
                                        <option value="3">Who is your favourite cricketer?</option>
                                        <option value="4">Who is your favourite director?</option>
                                        <option value="5">What primary school did you attend?</option>
                                        <option value="6">What was your childhood nickname?</option>
                                    </select>
                        </div>
                    <input placeholder="Answer2" id="ans2" class="input-field" name="ans2" type="text" required="required" data-validation-required-message="Please enter your answer.">
                   
                    <div class="select">
                                    <select name="dpdSecurityQstn3" id="SQ1" required />
                                       <option value="1">What was your first pet's name?</option>
                                        <option value="2">What was your mother's birthplace?</option>
                                        <option value="3">Who is your favourite cricketer?</option>
                                        <option value="4">Who is your favourite director?</option>
                                        <option value="5">What primary school did you attend?</option>
                                        <option value="6">What was your childhood nickname?</option>
                                    </select>
                        </div>
                    <input placeholder="Answer3" id="ans3" class="input-field" name="ans3" type="text" required="required" data-validation-required-message="Please enter your answer.">
                    <button type="submit" class="button">Submit</button><br>
                </form>
            </div>

</div>
<div class="copy">
                <p class="copypara">
                    Copyright &copy; 2020 <a href="home.jsp">Building Bytes</a>
                </p>
</div>


    </div>
   
        
      
    <style>
 
 body
{ overflow-x: hidden;
    background-color:black;
}
.images
{
    padding-top: 0px;
    padding-bottom: 300px;
    width: 500px;
    height:250px;
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
	margin:30px ;
	padding:15px;
	text-transform:uppercase;
	overflow:hidden;
	transition:1s all ease;
 }
 .btn:hover
 {
     background-color: #d9b3ff;
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
   background-color: #a3c2c2;
   border-radius: 10px;
}
.newuser
{
    font-family: Palantino Linotype;
    width: 400px;
    height:30px;
    font-size: 20px;
    padding-top: 130px;
    padding-left: 0px;
    padding-bottom: 20px;
    align:centre;
}
.lbl2
{
    font-family: Palantino Linotype;
    font-size: 20px;
}
.lbl1
{
    font-family: Palantino Linotype;
    font-size: 20px;
}
.form
{
    padding-left: 120px;
    padding-top: 70px;
    width:130px;
    height: 100px;
}
.input-field
{
    border-radius: 10px;
    color:black;
    background-color: #669999;
    font-family: Palantino Linotype;
    width:200px;
    height:40px;
    text-align: center;
    font-size: 25px; 
    padding: 20px;
    margin:20px;
}
.input-field:hover
{
    background-color: black;
    color:white;
}
.link
{
    width:200px;
    height: 30px;
    padding-left: 50px;
}
.forgot
{
    padding-top: 10px;
    width:170px;
    height: 50px;
    color:black;
    font-family: Palantino Linotype;
    font-size: 20px;
}
.button2
{
    margin:20px;
    width:190px;
    height:60px;
    color:black;
    text-align: centre;
    font-family: Palantino Linotype;
    font-size: 20px;
    border-radius: 5px;
}
.button2:hover
{
    background-color:black;
    color:#d9b3ff;
}
.button
{
    margin:20px;
    width:80px;
    height:40px;
    background-color:#669999;
    color:black;
    text-align: centre;
    font-family: Palantino Linotype;
    font-size: 20px;
    border-radius: 5px;
}
.button:hover
{
    background-color:black;
    color:#d9b3ff;
}
.login
{
    border-radius: 10px;
    width:100%;
    height:810px;
    margin-top: 10px;
    margin-bottom: 20px;
    background-color: #d9b3ff;    
    border-radius: 5px;
}
.innerlogin
{
    border-radius: 10px;
    width:100px;
    height: 500px;
    background-color: #d9b3ff;
}
.abb{
    text-align:center;
}
.abb1{
    padding-left: 10%;
}
.abb2{
    padding-left: 10%;
}

.footer{
    padding: 20px;
    margin-bottom:20px;
    margin-top: 10px;
    background-color:#a3c2c2;
    border-radius: 10px;
    width:1500px;
    height:60px;
}
.copy{
    padding-top: 250px;
    padding-left: 600px;
}
.copypara{
    color:black;
    font-family: Palantino Linotype;
    font-size: 18px;
}
select { 
               
                background: black; 
                width: 250px; 
                height: 60px; 
                color: white; 
                cursor: pointer; 
                border-radius:5px; 
            } 
            .select { 
                
                display: block; 
                width: 20em; 
                height: 4em; 
                line-height: 3; 
                overflow: hidden; 
                border-radius: .25em; 
                
                  
            } 
            select:hover
            {
                background-color: #a3c2c2;
                color:black;
            }
</style>
		

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

