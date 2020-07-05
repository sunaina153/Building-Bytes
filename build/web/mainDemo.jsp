<%-- 
    Document   : newjsp
    Created on : 4 Feb, 2020, 4:26:55 PM
    Author     : hp
--%>

<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
 
     <!-- Site Metas -->
    <title>	BUILDING BYTES </title>  
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="styleDemo.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">
	<script src="js/modernizr.js"></script> <!-- Modernizr -->

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body id="page-top" class="politics_version">

    <!-- LOADER -->
    <div id="preloader">
        <div id="main-ld">
			<div id="loader"></div>  
		</div>
    </div><!-- end loader -->
    <!-- END LOADER -->
	
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">
	<!--<img class="img-fluid" src="images/logo1.png" alt="" />-->
        </a>
<!--        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fa fa-bars"></i>
        </button>-->
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav text-uppercase ml-auto">
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger active" href="#home">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#about">About Us</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#services">Services</a>
            </li>
			<li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#contact">Contact Us</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
	
	<section id="home" class="main-banner parallaxie" style="background: url('uploads/laptop.jpg')" >
		<div class="heading">
			<h1>Welcome!</h1>
			<p>EXPLORE<br>LEARN <br>SHARE</p>
			<h3 class="cd-headline clip is-full-width">
				<span>BUILD FOR</span>
				<br>
				<span class="cd-words-wrapper">
					<b class="is-visible">Student</b>
					<b>Company</b>
					<b>Entreprenuer</b>
				</span>
			</h3>
		</div>
	</section>

	<svg id="clouds" class="hidden-xs" xmlns="http://www.w3.org/2000/svg" version="1.1" width="100%" height="100" viewBox="0 0 85 100" preserveAspectRatio="none">
        <path d="M-5 100 Q 0 20 5 100 Z
            M0 100 Q 5 0 10 100
            M5 100 Q 10 30 15 100
            M10 100 Q 15 10 20 100
            M15 100 Q 20 30 25 100
            M20 100 Q 25 -10 30 100
            M25 100 Q 30 10 35 100
            M30 100 Q 35 30 40 100
            M35 100 Q 40 10 45 100
            M40 100 Q 45 50 50 100
            M45 100 Q 50 20 55 100
            M50 100 Q 55 40 60 100
            M55 100 Q 60 60 65 100
            M60 100 Q 65 50 70 100
            M65 100 Q 70 20 75 100
            M70 100 Q 75 45 80 100
            M75 100 Q 80 30 85 100
            M80 100 Q 85 20 90 100
            M85 100 Q 90 50 95 100
            M90 100 Q 95 25 100 100
            M95 100 Q 100 15 105 100 Z">
        </path>
    </svg>

    <div id="about" class="section wb">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div >                        
                        <h2><font face="Palantino Linotype" color="black" size="8"><b>About Building Bytes</b></font></h2>
                        <p><font face="Palantino Linotype" color="black" size="5"> We know that you are done with manually filtering different numerous for the perfect company and 
                            the perfect candidate. So, we created a platform with the goal of bringing students and companies together. Not only this, but to also bring out the hidden 
                           entrepreneur among yourself and to share your idea with the world.</font></p>
                        <p><font face="Palantino Linotype" color="black" size="5"> So, what are you waiting for? It's time to EXPLORE, LEARN & SHARE!!! </font></p>
                        <style>
.dropbtn {
  background-color: #4CAF50;
  color: white;
  padding: 12px;
  font-size: 12px;
  border: none;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: lightseagreen;
  min-width: 120px;
  box-shadow: 0px 8px 10px 0px rgba(0,0,0,0.2);
  z-index: 1;
  margin-bottom: 10px;
}

.dropdown-content a {
  color: black;
  padding: 8px 8px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}
</style>



                           <div class="dropdown">
                            <button class="dropbtn">LOGIN</button>
                            <div class="dropdown-content">
                            <a href="SLogin.jsp">STUDENT</a>
                            <a href="CLogin.jsp">COMPANY</a>
                            </div>
                            </div>
                            <div class="dropdown">
                            <button class="dropbtn">SIGN UP</button>
                            <div class="dropdown-content">
                            <a href="Ssignup">STUDENT</a>
                            <a href="Csignup">COMPANY</a>
                            </div>
                            </div>

                        
                    </div><!-- end messagebox -->
                </div><!-- end col -->

                <div class="col-md-6">
                    <div class="right-box-pro wow fadeIn">
                        <img src="uploads/lap.jpg" alt="" class="img-fluid img-rounded">
                    </div><!-- end media -->
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->
	
    <div id="services" class="section lb">
        <div class="container">
            <div class="section-title text-left">
                <h3>Services</h3>
                <p></p>
            </div><!-- end title -->

            <div class="row">
				<div class="col-md-4">
                    <div class="services-inner-box">
						<div class="ser-icon">
							<i class="flaticon-seo"></i>
						</div>
						<h2>Study</h2>
						<p>Tired of searching heavy books for one single topic? Here you can post and get study articles on various subjects of computer science, 
                                                                                                              which are posted by students only. No more searching, only exploring.
                                                                                                        </p>
					</div>
                </div><!-- end col -->
                <div class="col-md-4">
                    <div class="services-inner-box">
						<div class="ser-icon">
							<i class="flaticon-development"></i>
						</div>
						<h2>Query</h2>
                                                                                                        <p>Ask your query and answer that of others. Resolve your doubts and return the favours at our query handle.
                                                                                                        </p>
					</div>
                </div><!-- end col -->
				<div class="col-md-4">
                    <div class="services-inner-box">
						<div class="ser-icon">
							<i class="flaticon-process"></i>
						</div>
						<h2>Job Articles</h2>
						<p>You can post vacancies for jobs and internships and the interested students can apply. You will be able to view their profiles and
                                                                                                               see their progress in various challenges.
                                                                                                        </p>
					</div>
                </div><!-- end col -->
				<div class="col-md-4">
                    <div class="services-inner-box">
						<div class="ser-icon">
							<i class="flaticon-discuss-issue"></i>
						</div>
						<h2>Daily Challenges</h2>
						<p>Companies will get to post challenges comprising various coding problems and other problem sets which you can solve and get command
                                                                                                                over your concepts.
                                                                                                        </p>
					</div>
                </div><!-- end col -->
				<div class="col-md-4">
                    <div class="services-inner-box">
						<div class="ser-icon">
							<i class="flaticon-idea"></i>
						</div>
						<h2>E-Cell</h2>
						<p>We present our best platform fro you, to share your start-up idea with the world, and get the funds from the company. Share your idea,
                                                                                                                and get a rocking start!
                                                                                                        </p>
					</div>
                </div><!-- end col -->
				<div class="col-md-4">
                    <div class="services-inner-box">
						<div class="ser-icon">
							<i class="flaticon-idea-1"></i>
						</div>
						<h2>Study Materials</h2>
						<p> We have rich collection of numerous pdfs, lecture videos, lecture notes on all topics of Computer Science which you can acess
                                                                                                               all, for FREE!!!
                                                                                                        </p>
					</div>
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->
		

    <div id="contact" class="section db">
        <div class="container">
            <div class="section-title text-left">
                <h3>Contact</h3>
                <p>For any further query, just fill the following form and let us know!!! </p>  
            </div><!-- end title -->

            <div class="row">
                <div class="col-md-12">
                    <div class="contact_form">
                        <div id="message"></div>
                        <form action="QueryContactServe" id="contactForm" method="post" name="sentMessage" novalidate="novalidate">
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<input class="form-control" id="name" type="text" name="name"placeholder="Your Name" required="required" data-validation-required-message="Please enter your name.">
										<p class="help-block text-danger"></p>
									</div>
									<div class="form-group">
										<input class="form-control" id="email" type="email" name="email" placeholder="Your Email" required="required" data-validation-required-message="Please enter your email address.">
										<p class="help-block text-danger"></p>
									</div>
									<div class="form-group">
										<input class="form-control" id="phone" type="tel" name="phone" placeholder="Your Phone" required="required" data-validation-required-message="Please enter your phone number.">
										<p class="help-block text-danger"></p>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<textarea class="form-control" id="message" name="message" placeholder="Your Message" required="required" data-validation-required-message="Please enter a message."></textarea>
										<p class="help-block text-danger"></p>
									</div>
								</div>
								<div class="clearfix"></div>
								<div class="col-lg-12 text-center">
									<div id="success"></div>
<!--									<button id="sendMessageButton" class="sim-btn btn-hover-new" data-text="Send Message" type="submit">Send Message</button>-->
                                                                                                                                                             <button type="submit" class="waves-effect btn-large btn-large-white px-4 black-text rounded-0">Send Message</button>
								</div>
							</div>
						</form>
                    </div>
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->

    <div class="copyrights">
        <div class="container">
            <div class="footer-distributed">
                <div class="footer-left">
                    <p class="footer-links">
                        <a class="nav-link js-scroll-trigger" href="#home">Home</a>
                        <a class="nav-link js-scroll-trigger" href="#about">About Us</a>
                        <a class="nav-link js-scroll-trigger" href="#services">Services</a>
                        <a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
                    </p>
                    <p class="d-inline-block tm-bg-black white-text py-2 tm-px-5">
                    Copyright &copy; 2020 Building Bytes
                </p>
                </div>
            </div>
        </div><!-- end container -->
    </div><!-- end copyrights -->

    <a href="#" id="scroll-to-top" class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>

    <!-- ALL JS FILES -->
    <script src="js/all.js"></script>
	<!-- Camera Slider -->
	<script src="js/jquery.mobile.customized.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script> 
	<script src="js/parallaxie.js"></script>
	<script src="js/headline.js"></script>
	<!-- Contact form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/custom.js"></script>
    <script src="js/jquery.vide.js"></script>

</body>
</html>