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
                                        <a href="#" class="btn btn1"> HOME</a>
                                        <a href="#about" class="btn btn2"> ABOUT US</a>
                                        <a href="#services" class="btn btn3"> SERVICES</a>
                                        <a href="#contact" class="btn btn4"> CONTACT US</a>
                                        
                                                </div>
                                           </td>
                                  </tr>
                          </table>
         </div>
<div class="table1" id="about">
    <table>
        <tr>
            <td width='30%'>
      <h2 class="abb"><font face="Palantino Linotype" color="black" size="8"><b>About Building Bytes</b></font></h2>
                        <p class="abb1"><font face="Palantino Linotype" color="black" size="5" align="justify"> We know that you are done with manually filtering hundreds of websites regularly 
                            for the perfect company and the perfect candidate. So, we aimed to bring students and company on a common platform. And hence, BUILDING BYTES
                            was formed. Here, you not only post jobs for, but also view them, apply them, post your articles, get to read the same and the most important, 
                            you get to present the hidden entrepreneur among yourself and to share your idea with the world.</font></p>
                        <p class="abb2"><font face="Palantino Linotype" color="black" size="5"> So, what are you waiting for? It's time to EXPLORE, LEARN & SHARE!!! </font></p>
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
.table1
{
    border-radius: 10px;
    width:100%;
    margin-top: 10px;
    margin-bottom: 20px;
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
.table2
{
     border-radius: 10px;
    padding: 20px;
    height:100%;
    margin-top: 20px;
    margin-bottom: 20px;
    background-color:#d9b3ff ;
    color:#d9b3ff;
    align :center;
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
.servicediv
{  background-image: url(images/gif3.gif);
    border-radius: 20px;
    background-color: #d9b3ff;
    padding: 20px;
    margin-top:30px;
    margin-right: 30px;
    margin-left: 30px;
    margin-bottom: 30px;
    width:250px;
    height:300px;
    align:center;
    text-align: justify;
}
.heading
{   color:#d9b3ff  ;
    text-align: center;
}
.service_para{
   line-height: 26px;
   color:#d9b3ff ;
   font-size: 18px;
   font-family:"Palatino Linotype";
   font-weight: bold;
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
    background-color:#a3c2c2;
    border-radius: 10px;
}
@media screen and (max-width: 800px) {
  .container, .rightcolumn {   
    width: 100%;
    padding: 0;
  }
}

.rightcolumn {
  float: left;
  width: 20%;
  padding-left:20px;
  height:400px;
    color: #fff;
     position:relative;
  box-shadow: 10px 10px 60px 10px rgba(0,0,0,0.3);
}
            .b1{
                  background-color:whitesmoke;
                  left:5px;
                  top:18%;
                  padding:20px;
                  position: absolute;
                  border-radius:20px;
                   box-shadow: 10px 10px 60px 10px rgba(0,0,0,0.3);
               }
              .b2{
                 
                  background-color:whitesmoke;
                  left:5px;
                  top:77%;
                   padding:19px;
                  position: absolute;
                   border-radius:20px;
                    box-shadow: 10px 10px 60px 10px rgba(0,0,0,0.3);
                  
                 }
                  .block{
                    
                    -webkit-animation:scaledown 0.4s ease;
                   animation: scaledown 0.4s linear;
                   animation-fill-mode: forwards;
                   transform: origin 50% 50%;
                   
                }
                .block a:hover{
                    color:red;
                }
                .block:hover {
                    z-index:100;
                    -webkit-animation:scaledown 0.4s ease;
                     animation: scale 0.4s linear;
                     animation-fill-mode: forwards;
                     transform: origin 50% 50%;
                    
                }
                @keyframes scaledown{
                    0%{
                        -webkit-transform:scale (1.1);
                        transform:scale(1.1);
                    }
                     100%{
                          -webkit-transform:scale (1.0);
                        transform:scale(1.0);
                    }
                }
                @keyframes scale{
                    0%{
                        -webkit-transform:scale (1);
                        transform:scale(1);
                        
                    }
                     100%{
                          -webkit-transform:scale (1.1);
                        transform:scale(1.1);
                        box-shadow:10px 10px 60px 10px rgba(0,0,0,0.3);
                    }
                }

@media screen and (max-width: 400px) {
  .topnav a {
    float: none;
    width: 100%;
  }
}
.container{
        background-color: slategrey;
                position:relative;
                width:70%;
                padding-left:30px;
                margin-bottom: 50px;
                margin-top: 50px;
          }
      .container .box{
                    position: relative;
                    width:290px;
                    height:260px;
                    background:#000;
                    float:left;
                    margin:15px;
                    box-sizing:border-box;
                    overflow: hidden;
                    border-radius: 10px;
                }
                .container .box .icon{
                    position: absolute;
                    top:0;
                    left:0;
                    width:100%;
                    height:100%;
                    background: #f00;
                    transition: 0.5s;
                    z-index:1;  
                }
                 .container .box:hover .icon{
                     top:20px;
                     left:calc(50% - 40px);
                     width:80px;
                     height:80px;
                     border-radius:50%;
                 } 
                 .container .box .icon .fa{
                     position:absolute;
                     top:50%;
                     left:50%;
                     transform:translate(-50%,-50%);
                     font-size:80px;
                     transition:0.5s;
                     color:#fff;
                     
                 }
                 .container .box .icon .fa .fafa{
                     font-size:20px;
                 }
                 
                 .container .box:hover .icon .fa{
                     font-size:25px;
                     
                 }
                  .container .box:hover .icon .fa .fafa{
                     font-size:14px;
                     align:center;
                     
                 }
                 .container .box .content{
                     position: absolute;
                     top:100%;
                   height:calc(100% - 100px);
                     text-align:center;
                     padding:20px;
                     box-sizing:border-box;
                     opacity:0;
                     transition:0.5s;
                 }
                 .container .box:hover .content{
                     top:100px;
                     opacity: 1;
                     
                 }
                 .container .box .content h2{
                     margin:0 0 10px;
                     padding:0;
                     color:black;
                     font-size:15px;
                    }
                      .container .box .content p{
                     margin:0;
                     padding:0;
                     color:olive;
                     font-size:15px;
                      }
                      .container .box .content a:visited{
                            color:purple;
                      }
                      .container .box .content a:hover{
                            color:red;
                      }
                      
                      .container .box:nth-child(1) .icon{
                          background: #c5a84e;
                      }
                       .container .box:nth-child(1) {
                          background:#c5a84e;
                      }
                       .container .box:nth-child(2) .icon{
                          background: #706579;
                      }
                      .container .box:nth-child(2) {
                          background: #706579;
                      }
                        .container .box:nth-child(3) .icon{
                          background: goldenrod;
                      }
                      .container .box:nth-child(3) {
                          background: gold;
                      }  
                       .container .box:nth-child(4) .icon{
                          background: purple;
                      }
                      .container .box:nth-child(4) {
                          background: purple;
                      }    
                       .container .box:nth-child(5) .icon{
                          background: brown;
                      }
                      .container .box:nth-child(5) {
                          background: brown;
                      }  
                       .container .box:nth-child(6) .icon{
                          background: olive;
                      }
                      .container .box:nth-child(6) {
                          background: olive;
                      } 
    li
{
    display:inline-block;
    margin-left: 140px;
    margin-top: 70px;
    text-align: end;  
}                  
.dropbtn {
  background-color:black;
  color:#d9b3ff;
  padding: 12px;
  font-size: 12px;
  border: none;
  border-radius: 5px;
  width: 120px;
  font-family: Palantino Linotype;
  font-size: 20px;
  font-weight: bold;
}

.dropdown {
  position: relative;
  display: inline-block;
  padding-left: 10%;
  padding-bottom: 5%;
  border-radius: 5px;
}

.dropdown-content {
  display: none;
  font-family: Palantino Linotype;
  font-size: 20px;
  position: absolute;
  border-radius: 5px;
  background-color: #94b8b8;
  min-width: 120px;
  box-shadow: 0px 8px 10px 0px rgba(0,0,0,0.2);
  z-index: 1;
  margin-bottom: 10px;
  border-radius: 5px;
}

.dropdown-content a {
    background-color:black;
  color: #d9b3ff;
  padding: 8px 8px;
  text-decoration: none;
  display: block;
}
.dropdown-content a:hover {background-color:#d9b3ff;
                           color:black;
border-radius: 5px;
}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color:#d9b3ff ;
color:black;}
.feedback{
   background-color: slategray;   
}
.service_heading{
   font-size: 38px;
    font-weight:bold;
    line-height: 62px;
    margin: 0 30px 25px;
    color:black ;
    text-transform: none;
    font-family: Palantino Linotype;
}
.ser_block{
  margin-top:5%;
 
}
.section-title-p {
    color:black;
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
    color:black;
    text-transform: none;
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
    font-family: Palantino Linotype;
    outline: 0 none;
   float:right;
    height: 65px;
    resize: none;
    box-shadow: none !important;
    width: 60%;
	border-radius: 0px;
}
.contact_form textarea {
    color: #bcbcbc;
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
    border-radius: 10px;
    background-color: #d9b3ff;
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
    background-color: #d9b3ff;
}

.send_msg_btn{
    padding:15px;
    background-color: #94b8b8;
    font-family: Palantino Linotype;
    border-radius: 5px;
    font-weight: bold;
    width: 150px;
    font-size: 17px;
}
 
</style>



                           <div class="dropdown">
                            <button class="dropbtn">LOGIN</button>
                            <div class="dropdown-content">
                            <a href="SLogin.jsp" target="_blank">STUDENT</a>
                            <a href="CLogin.jsp" target="_blank">COMPANY</a>
                            </div>
                            </div>
                            <div class="dropdown">
                            <button class="dropbtn">SIGN UP</button>
                            <div class="dropdown-content">
                            <a href="Ssignup.jsp" target="_blank">STUDENT</a>
                            <a href="Csignup.jsp" target="_blank">COMPANY</a>
                            </div>
                            </div>
    </td>
<td width='80%'>
        <!-- Start WOWSlider.com BODY section -->
<div id="wowslider-container1">
<div class="ws_images"><ul>
		<li><img src="data1/images/slide1.jpg" alt="Slide1" title="Slide1" id="wows1_0"/></li>
		<li><img src="data1/images/slide2.jpg" alt="Slide2" title="Slide2" id="wows1_1"/></li>
		<li><img src="data1/images/slide3.jpg" alt="Slide3" title="Slide3" id="wows1_2"/></li>
		<li><img src="data1/images/slide7.jpg" alt="Slide7" title="Slide7" id="wows1_3"/></li>
		<li><img src="data1/images/slide9.jpg" alt="Slide9" title="Slide9" id="wows1_4"/></li>
		<li><img src="data1/images/slide6.jpg" alt="Slide6" title="Slide6" id="wows1_5"/></li>
		<li><a href="http://wowslider.net"><img src="data1/images/thepotentialoftheiotineducation1024x768.jpg" alt="html5 slideshow" title="The-Potential-of-The-IoT-in-Education-1024x768" id="wows1_6"/></a></li>
		<li><img src="data1/images/slide10.jpg" alt="Slide10" title="Slide10" id="wows1_7"/></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title="Slide1"><span><img src="data1/tooltips/slide1.jpg" alt="Slide1"/>1</span></a>
		<a href="#" title="Slide2"><span><img src="data1/tooltips/slide2.jpg" alt="Slide2"/>2</span></a>
		<a href="#" title="Slide3"><span><img src="data1/tooltips/slide3.jpg" alt="Slide3"/>3</span></a>
		<a href="#" title="Slide7"><span><img src="data1/tooltips/slide7.jpg" alt="Slide7"/>4</span></a>
		<a href="#" title="Slide9"><span><img src="data1/tooltips/slide9.jpg" alt="Slide9"/>5</span></a>
		<a href="#" title="Slide6"><span><img src="data1/tooltips/slide6.jpg" alt="Slide6"/>6</span></a>
		<a href="#" title="The-Potential-of-The-IoT-in-Education-1024x768"><span><img src="data1/tooltips/thepotentialoftheiotineducation1024x768.jpg" alt="The-Potential-of-The-IoT-in-Education-1024x768"/>7</span></a>
		<a href="#" title="Slide10"><span><img src="data1/tooltips/slide10.jpg" alt="Slide10"/>8</span></a>
	</div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.net">javascript photo gallery</a> by WOWSlider.com v8.8</div>
<div class="ws_shadow"></div>
</div>	
<script type="text/javascript" src="engine1/wowslider.js"></script>
<script type="text/javascript" src="engine1/script.js"></script>
<!-- End WOWSlider.com BODY section -->
    </td>
</tr>
    </table>
</div> 
    <div class="table2" id="services" align="center">
        <h3 class="service_heading">Services</h3>
        <table class="ser_block">
            <tr>
                <td>
                    
                    <div class="servicediv">
                      <h2 class="heading">Study</h2>
	<p class="service_para">Tired of searching heavy books for one single topic? Here you can post and get study articles on various subjects of computer science, 
            which are posted by students only. No more searching, only exploring.</p> </div>
                </td>
                 <td>
                     <div class="servicediv">
                       <h2 class="heading">Query</h2>
                       <p class="service_para">Ask your query and answer that of others. Resolve your doubts and return the favours at our query handle.  </p></div>
                </td>
                 <td>
                     <div class="servicediv">
                     <h2 class="heading">Job Articles</h2>
     <p class="service_para">You can post vacancies for jobs and internships and the interested students can apply. You will be able to view their profiles and
         see their progress in various challenges.</p></div>
                </td>
            </tr>
            <tr>
                 <td>
                     <div class="servicediv">
                       <h2 class="heading">Daily Challenges</h2>
                  <p class="service_para">Companies will get to post challenges comprising various coding problems and other problem sets which you can solve and get command over your concepts. </p> 
                     </div>
                </td>
                 <td>
                     <div class="servicediv">
                    <h2 class="heading">Study Materials</h2>
                    <p class="service_para"> We have rich collection of numerous pdfs,lecture videos,lecture notes on all topics of Computer Science which you can acess all, for FREE!!! </p>     </div>      
                </td>
               
                 <td>
                       <div class="servicediv">
                      <h2 class="heading">E-Cell</h2>
<p class="service_para">We present our best platform fro you, to share your start-up idea with the world, and get the funds from the company. Share your idea,
         and get a rocking start!   </p>   
</div>
                </td>
                 
            </tr>
        </table>
   </div>    
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
<center><button class="send_msg_btn" type="submit"><font style="PalantinoLinotype"><b>SEND QUERY</b></font></button></center>
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
				<td><a href="#contact" class="btn btn2">CONTACT US</a></td>
				<td><a href="Feedback.jsp" class="btn btn3">FEEDBACK</a></td>
				<td> <a href="Privacy.jsp" class="btn btn4">PRIVACY POLICY</a></td>
			</tr>
			
			</table>
            </div>

</body>
</html>
