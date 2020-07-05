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
                                        <a href="#contact" class="btn btn3"> CONTACT US</a>
                                        <a href="Privacy.jsp" class="btn btn4">POLICY</a>
                                        
                                                </div>
                                           </td>
                                  </tr>
                          </table>
         </div>
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
	margin:30px ;
	padding:15px;
	text-transform:uppercase;
	overflow:hidden;
	transition:1s all ease;
 }
 .btn:hover
 {
     background-color: black;
     color: #d9b3ff;
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
   background-color:  #d9b3ff;
   border-radius: 10px;
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

.table3
{
    border-radius: 10px;
    padding: 20px;
    width:97%;
    height:100%;
    margin-top: 20px;
    margin-bottom: 20px;
    background-color: #d9b3ff;    
}
.content
{
    position:relative;
    float:block;
    width:998px;
    height:90%;
    margin-top: 20px;
    margin-bottom: 20px;
  background-color: #66d9ff;  
}
.footer{
    padding: 20px;
    margin-bottom:20px;
    margin-top: 20px;
    background-color:  #d9b3ff;
    border-radius: 10px;
}
@media screen and (max-width: 800px) {
  .container, .rightcolumn {   
    width: 100%;
    padding: 0;
  }
}
 .section-title-p {
    color:white;
    font-weight:bold;
    font-size: 20px;
    line-height: 33px;
    margin: 0 30px 25px;
    text-align: center;
    
}

.section-title-h3 {
    font-size: 38px;
    font-weight:bold;
    line-height: 62px;
    margin: 0 30px 25px;
    color:white;
    text-transform: none;
    margin-top:5%;
}
.contact_form {
    border: 1px solid #ededed;
    box-shadow: 0 5px 14px rgba(0, 0, 0, 0.1);
    padding: 40px 30px;
    
}

.contact_form .form-control {
    background-color: #333333;
    margin-bottom: 30px;
    border: 1px solid #ebebeb;
    box-sizing: border-box;
    color: whitesmoke;
    font-size: 20px;
    font-family: Palantino Linotype;
    outline: 0 none;
    padding: 10px 25px;
    height: 55px;
    resize: none;
    box-shadow: none !important;
    width: 30%;
    border-radius: 0px;
}
.contact_form .form-control1 {
    background-color: #333333;
    margin-bottom: 30px;
    border: 1px solid #ebebeb;
    box-sizing: border-box;
    color: whitesmoke;
    font-size: 20px;
    outline: 0 none;
    font-family: Palantino Linotype;
   float:right;
    height: 65px;
    resize: none;
    box-shadow: none !important;
    width: 60%;
    border-radius: 0px;
}
.contact_form textarea {
    color: white;
    padding: 20px 25px !important;
    height: 360px !important;
}
.contact_form textarea.form-control{
	min-height: 225px;
}

.form-group{
	position:relative;
}
.feedback
{
    border-radius: 1px;
    background-color: black;
    
}
.contact_form .form-control::-webkit-input-placeholder {
    color: #bcbcbc;
}

.contact_form .form-control::-moz-placeholder {
    opacity: 1;
    color: #bcbcbc;
}

.contact_form .form-control::-ms-input-placeholder {
    color: #bcbcbc;
}

.send_message{
    margin-left: 40%;
    border-radius:3px;
    width:20%; 
 }
.send_msg_btn:hover{
    cursor:pointer;
    background-color: whitesmoke;
}

.send_msg_btn{
    padding:15px;
    background-color:  #d9b3ff;
    font-family: Palantino Linotype;
    border-radius: 5px;
    font-weight: bold;
    width: 150px;
    font-size: 17px;
}
 
</style>
  
    <div  id="contact">
        <div class="feedback">
               <h3 class="section-title-h3"><center>Contact</center></h3>
               <p class="section-title-p">For any further query, just fill the following form and let us know!!!</p>  
            <!-- end title -->
            <div>
         <div>
                    <div class="contact_form">
                        <div id="message"></div>
                        <form action="QueryContactServe" id="contactForm" method="post" name="sentMessage" novalidate="novalidate">
							<div>
								<div>
                                                                    <div class="form-group1">
										<textarea class="form-control1" id="message" name="message" placeholder="Your Message" required="required" data-validation-required-message="Please enter a message."></textarea>
										<p></p>
									<div class=form-group">
                                                                            <input class="form-control" id="name" type="text" name="name"placeholder="Your Name" required="required" data-validation-required-message="Please enter your name.">
										<p></p>
                                                                                
									</div>
									</div>
									<div  class="form-group">
										<input  class="form-control" id="email" type="email" name="email" placeholder="Your Email" required="required" data-validation-required-message="Please enter your email address.">
										<p></p>
									</div>
									<div  class="form-group">
										<input  class="form-control" id="phone" type="tel" name="phone" placeholder="Your Phone" required="required" data-validation-required-message="Please enter your phone number.">
										<p></p>
									</div>
                                                                    </div>
								</div>
								<div></div>
								<div class="send_message" onclick="validate()">
                                                                    <script type="text/javascript">
		$(document).ready (function()
		{
			$('#btnclr').click(function(){
			$('.clear').val('');
			});
		});
		function validate()
		{
			if( document.sentMessage.name.value == "" ) 
			{
                                                        alert( "Please provide your name!" );
                                                        document.sentMessage.name.focus() ;
                                                        return false;
			}
                                                    if( document.sentMessage.message.value == "" ) 
			{
                                                        alert( "Please provide your query or message!" );
                                                        document.sentMessage.name.focus() ;
                                                        return false;
			}
                                                    if( document.sentMessage.email.value == "" ) 
			{
                                                        alert( "Please provide your email!" );
                                                        document.sentMessage.name.focus() ;
                                                        return false;
			}
                                                    if( document.sentMessage.phone.value == "" ) 
			{
                                                        alert( "Please provide your Contact Number!" );
                                                        document.sentMessage.name.focus() ;
                                                        return false;
			}
                                                    else
			{
				alert("Query submitted successfully!");
				return true;
			}
                                    }
                                    </script>
									<div></div>
<!--<button id="sendMessageButton" class="sim-btn btn-hover-new" data-text="Send Message" type="submit">Send Message</button>-->
<center><button class="send_msg_btn" type="submit"><font style="Palantino Linotype"><b>SEND QUERY</b></font></button></center>
								</div>
							</div>
					</form>
                    </div>
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->

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
