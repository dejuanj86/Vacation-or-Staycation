<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 
	Developed For the 2018 GrandCircus October TechHire Java Final Project 
	By Carl Jones III
	Cristian James
	DeJuan Johnson
	All rights reserved
-->
  	<title>Home - Vacation or Staycation</title>
  	<meta charset="utf-8" />
  	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  	<!-- css -->
  	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700|Open+Sans:400,300,700,800" rel="stylesheet" media="screen">
	<link href="/css/bootstrap.min.css" rel="stylesheet" media="screen">
  	<link href="/css/style.css" rel="stylesheet" media="screen">
  	<link href="/color/default.css" rel="stylesheet" media="screen">
  	<link href="/css/app-style.css" rel="stylesheet" media="screen">
</head>
<body>
  <!-- Navigation -->
  <nav class="navbar navbar-default" role="navigation">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
          <span class="sr-only">Toggle nav</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>

        <!-- Logo text or image -->
        <a class="navbar-brand" href="/">Vacation or Staycation?</a></br>

      </div>
      <div class="navigation collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav">
          <li class="current"><a href="#app-console">Home</a></li>
          <li><a href="#parallax2">About</a></li>
          <li><a href="#services">Services In Use</a></li>
          <!--<li><a href="#portfolio">Delete?</a></li>-->
          <li><a href="#team">Team</a></li>
          <li><a href="#bottom-widget">Contact</a></li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- App area -->
  <section id="app-console" class="home-section bg-gray">
	   <!--  <h1>Lets get lost!</h1>
	    <h3>Vacation or Staycation?</h3> -->
	    <img id="logo-md" src="img/logo.png">
		<form action="vacation-or-staycation">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<img id="suggestion-wp" src="/img/intro/vacation.jpg">
						<input id="button1" class="btn btn-lg" type="submit" name="vacationOrStaycation" value="Vacation">
	  				</div>
	  				<div class="col-lg-6">
						<img id="suggestion-wp" src="/img/intro/staycation.jpg">
						<input id="button1" class="btn btn-lg" type="submit" name="vacationOrStaycation" value="Staycation">
	  				</div>
				</div>
			</div>
		</form>
    
  </section>
  <!-- Parallax 2 -->
  <section id="parallax2" class="home-section parallax" data-stellar-background-ratio="0.5">
    <div class="container">
      <div class="row">
        <div class="color-light">
            <h2 class="wow bounceInDown" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: bounceInDown;">
              About</h2>
            <p class="lead wow bounceInUp" data-wow-delay="1s" style="visibility: visible; animation-delay: 1s; animation-name: bounceInUp; color: snow;">
              We are a Detroit based tour company offering comparisons of tours within or in driving distance of Detroit and around the country. 
              We want to streamline the process of booking a quick getaway. Just answer a few simple questions and we will tailor your trip!
            </p>
          </div>
      </div>
    </div>
  </section>
  <!-- Team -->
  <section id="team" class="home-section bg-white">
    <div class="container">
      <div class="row">
        <div class="col-md-offset-2 col-md-8">
          <div class="section-heading">
            <h2>Built by Back-End Grand Circus graduates</h2>
            <div class="heading-line"></div>
          	<p>Bringing together our 10 weeks of intensive study on Java and creativity to life in the heart of Detroit's downtown area</p>
          	<p>Passionate developers ready to apply our software development skills to solve todays problems for a better future!</p>
          </div>
        </div>
      </div>
      <div class="row">
          <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
            <div class="box-team wow bounceInUp" data-wow-delay="0.1s">
              <img src="img/team/1.jpg" alt="" class="img-circle img-responsive" />
              <h4>Dejuan Johnson</h4>
              <p>Java Developer</p>
               <p class="center teal big margin-bottom-half" style="min-height: 44px;">
             		<a href="https://github.com/dejuanj86/" onclick="javascript:window.open('https://github.com/dejuanj86/'); return false;"><i class="fa fa-github" aria-hidden="true"></i></a>
              		<a href="https://www.linkedin.com/in/" onclick="javascript:window.open('https://www.linkedin.com/in/'); return false;"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
              </p>
              <p></p>
            </div>
          </div>
          <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4" data-wow-delay="0.3s">
            <div class="box-team wow bounceInUp">
              <img src="img/team/3.jpg" alt="" class="img-circle img-responsive" />
              <h4>Carl Jones</h4>
              <p>Java Developer</p>
              <p class="center teal big margin-bottom-half" style="min-height: 44px;">
             		<a href="https://github.com/kaaru44" onclick="javascript:window.open('https://github.com/kaaru44'); return false;"><i class="fa fa-github" aria-hidden="true"></i></a>
              		<a href="https://www.linkedin.com/in/cejones24/" onclick="javascript:window.open('https://www.linkedin.com/in/cejones24/'); return false;"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
              </p>
              <p>Coding the road to the future one smart car at a time!</p>
            </div>
          </div>
          <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4" data-wow-delay="0.5s">
            <div class="box-team wow bounceInUp">
              <img src="img/team/2.jpg" alt="" class="img-circle img-responsive" />
              <h4>Cristian James</h4>
              <p>Java Developer</p>
              <p class="center teal big margin-bottom-half" style="min-height: 44px;">
             		<a href="https://github.com/thegoodcristian/" onclick="javascript:window.open('https://github.com/thegoodcristian/'); return false;"><i class="fa fa-github" aria-hidden="true"></i></a>
              		<a href="https://www.linkedin.com/in/" onclick="javascript:window.open('https://www.linkedin.com/in/'); return false;"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
              </p>
              <p></p>
            </div>
          </div>
      </div>
    </div>
  </section>
  <!-- About App -->
  <section id="services" class="home-section bg-gray">
    <div class="container">
      <div class="row">
        <div class="col-md-offset-2 col-md-8">
          <div class="section-heading">
            <h2>Powered By</h2>
            <div class="heading-line"></div>
            <div class="col-md-12">
        		<ul class="clients">
		            <li class="wow fadeInDown" data-wow-delay="0.3s"><a href="#"><img src="img/clients/1.png" alt="" style="width: 150px; height: 150px;"/></a></li> &nbsp
		            <li class="wow fadeInDown" data-wow-delay="0.6s"><a href="#"><img src="img/clients/2.png" alt="" style="width: 150px; height: 150px;" /></a></li> &nbsp
		            <li class="wow fadeInDown" data-wow-delay="0.9s"><a href="#"><img src="img/clients/3.png" alt="" style="width: 150px; height: 150px;" /></a></li> &nbsp
		            <li class="wow fadeInDown" data-wow-delay="1.1s"><a href="#"><img src="img/clients/4.png" alt="" style="width: 150px; height: 150px;" /></a></li> &nbsp
	          	</ul>
	        </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- Bottom widget -->
  <section id="bottom-widget" class="home-section bg-white">
  <div class="container">
      <div class="row">
        <div class="col-md-offset-2 col-md-8">
          <div class="section-heading">
            <h2>About Grand Circus</h2>
            <div class="heading-line"></div>
            <p>Thank you for taking the time to try our application, we hope 
            you are now inspired to get lost and take a break from your daily routine.</p>
          </div>
        </div>
      </div>
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <div class="contact-widget wow bounceInLeft">
            <i class="fa fa-map-marker fa-4x"></i>
            <h5>GRAND CIRCUS - TECH TRAINING</h5>
            <p>
              1570 Woodward Avenue, Level 3 <br/> Detroit, MI 48226
            </p>
          </div>
        </div>
        <div class="col-md-6">
          <div class="contact-widget wow bounceInRight">
            <i class="fa fa-envelope fa-4x"></i>
            <h5>Email</h5>
            <p>
              General Inquiries: hello@grandcircus.co<br /> Bootcamp Specific Inquiries: bootcamps@grandcircus.co
            </p>
          </div>
        </div>
      </div>
      <div class="row mar-top30">
        <div class="col-md-12">
          <h5>Check out Grand Circus on social media!</h5>
          <ul class="social-network">
            <li><a href="https://www.facebook.com/GrandCircusCo/">
                <span class="fa-stack fa-2x">
                  <i class="fa fa-circle fa-stack-2x"></i>
                  <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
                </span></a>
            </li>
            <li><a href="https://www.instagram.com/grandcircusco/">
                <span class="fa-stack fa-2x">
                  <i class="fa fa-circle fa-stack-2x"></i>
                  <i class="fa fa-instagram fa-stack-1x fa-inverse"></i>
                </span></a>
            </li>
            <li><a href="https://twitter.com/GrandCircusCo">
                <span class="fa-stack fa-2x">
                  <i class="fa fa-circle fa-stack-2x"></i>
                  <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
                </span></a>
            </li>
            <li><a href="https://www.linkedin.com/company/grandcircus/">
                <span class="fa-stack fa-2x">
                  <i class="fa fa-circle fa-stack-2x"></i>
                  <i class="fa fa-linkedin fa-stack-1x fa-inverse"></i>
                </span></a>
            </li>
            <li><a href="https://www.youtube.com/channel/UCDVi0K-a-yPxvhVe9DLlYRw">
                <span class="fa-stack fa-2x">
                  <i class="fa fa-circle fa-stack-2x"></i>
                  <i class="fa fa-youtube fa-stack-1x fa-inverse"></i>
                </span></a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </section>

  <!-- Footer -->
  <footer>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <p>Copyright &copy; Grand Circus TechHire Fall 2018. All rights reserved.</p>
          <div class="credits">
            <!--
              All the links in the footer should remain intact.
              You can delete the links only if you purchased the pro version.
              Licensing information: https://bootstrapmade.com/license/
              Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Alstar
            -->
          </div>
        </div>
      </div>
    </div>
  </footer>

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

  <!-- js -->
  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/wow.min.js"></script>
  <script src="js/jquery.scrollTo.min.js"></script>
  <script src="js/jquery.nav.js"></script>
  <script src="js/modernizr.custom.js"></script>
  <script src="js/grid.js"></script>
  <script src="js/stellar.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

  <!-- Template Custom Javascript File -->
  <script src="js/custom.js"></script>

</body>

</html>
