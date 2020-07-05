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
                <label class="lbl2">
                    <pre><br>
      Sorry!!! You could not complete your<br>
      profile. Please recheck the data you  <br>
      entered or your Internet connection.
                    </pre>
                </label>
                <div class="newuser">
            <label class="lbl1">Not registered?</label>
            <a href="Ssignup.jsp" class="button2">Create Account</a>
        </div>
            </div>
            
              <div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="images/Slide1.JPG" style="width:500px">
</div>

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="images/Slide2.JPG" style="width:500px">
</div>

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="images/Slide12.JPG" style="width:500px">
</div>
            
<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="images/Slide13.JPG" style="width:500px">
</div>
            
<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="images/Slide14.JPG" style="width:500px">
</div>
            
<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="images/Slide16.JPG" style="width:500px">
</div>
            
<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="images/Slide3.JPG" style="width:500px">
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
  
</div>
</div>
<div class="copy">
                <p class="copypara">
                    Copyright &copy; 2020 <a href="home.jsp">Building Bytes</a>
                </p>
</div>
<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>

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
    padding-top: 20px;
    padding-left: 600px;
}
.copypara{
    color:black;
    font-family: Palantino Linotype;
    font-size: 18px;
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

