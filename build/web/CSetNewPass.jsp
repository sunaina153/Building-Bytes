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
                                                    <h3 > Explore | Learn | Share</h3>
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
                <form action="CNewPassServlet" method="post">
                    <div>
                        <input placeholder="Email" id="username" class="input-field" name="username" type="text" required="required" data-validation-required-message="Please enter your username.">
                    </div>
                    <br>
                    <input placeholder="New Password" id="npass" class="input-field" name="npass" type="password" required="required" data-validation-required-message="Please enter your new password.">
                <input placeholder="Confirm Password" id="cnpass" class="input-field" name="cnpass" type="password" required="required" data-validation-required-message="Please confirm your password.">
                <pre>
         <button type="submit" class="button" onclick="return Validate()">Submit</button><br></pre>
                </form>
                 <script type="text/javascript">
    function Validate() {
        var password = document.getElementById("npass").value;
        var confirmPassword = document.getElementById("cnpass").value;
        if (password != confirmPassword) {
            alert("Passwords do not match.");
            return false;
        }
        return true;
    }
</script>
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
     background-color: black;
     color:#a3c2c2;
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
    width:300px;
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

.button
{
    margin:20px;
    width:100px;
    height:40px;
    background-color:#669999;
    color:black;
    text-align: centre;
    font-family: Palantino Linotype;
    font-size: 20px;
    border-radius: 5px;
    padding-left: 0px;
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
    height:550px;
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
    margin-top: 20px;
    background-color:#a3c2c2;
    border-radius: 10px;
    color:black;
}
.copy{
    
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
				<td><a href="AboutUs.jsp" class="btn btn1">ABOUT US</a></td>
				<td><a href="Contact.jsp" class="btn btn2">CONTACT US</a></td>
				<td><a href="Feedback.jsp" class="btn btn3">FEEDBACK</a></td>
				<td> <a href="Privacy.jsp" class="btn btn4">PRIVACY POLICY</a></td>
			</tr>
			
			</table>
            </div>
</body>
</html>

