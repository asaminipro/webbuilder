<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>WEBPAGE BUILDER</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />

  <!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />
	
	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="css/flexslider.css">

	<!-- Owl Carousel -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
	<script type="text/javascript">
	
	function phon_validation()
	{
		var num	=document.getElementById('pno').value;
		
		 if(isNaN(num))
         {
            document.getElementById("val").innerHTML = "Enter a valid number";
            
         }	
		 else if(num.length!='10')
			 {
			 document.getElementById("val").innerHTML = "Enter a 10 digit number";
	            
			 }
		 else
			 {
			 return true;
			 }
	}
	
	</script>
	</head>
	<body>
		
	<div class="colorlib-loader"></div>

	<div id="page">
		<nav class="colorlib-nav" role="navigation">
			<div class="top-menu">
				<div class="container">
					<div class="row">
						<div class="col-xs-2">
							<div id="colorlib-logo"><a href="index.jsp">WEBPAGE BUILDER</a></div>
						</div>
						<div class="col-xs-10 text-right menu-1">
							<ul>
								<li class="active"><a href="index.jsp">Home</a></li>
								<li><a href="contact.jsp">CONTACT</a></li>
								<li class="has-dropdown">
									<a href="blog.jsp">Blog</a></li>
									 <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal">SIGNUP</button>
							
							</ul>
						</div>
					</div>
				</div>
			</div>
		</nav>
<!--******************************************************Modal-THE LOGIN POPUP **************************************************************************** -->
											<div id="myModal" class="modal fade" role="dialog">
											  <div class="modal-dialog">

												<!-- Modal content-->
												<div class="modal-content">
												  <div class="modal-header">
													<button type="button" class="close" data-dismiss="modal">&times;</button>
													<h4 class="modal-title">SIGNUP HERE</h4>
												  </div>
												  <div class="modal-body">
												  
			<!-- **********************************************END LOGIN FORM ********************************************************************-->
																	<form action="registration_serve" method="POST">
																	<div class="row form-group">
																		<div class="col-md-6">
																			<label for="name">NAME</label>
																			<input type="text" id="name" name="name" class="form-control" placeholder="Pleae enter your Name" required>
																		</div>
																		<div class="col-md-6">
																			<label for="phoneno">PHONE NUMBER</label>
																			<input type="text" id="pno" name="pno" class="form-control" placeholder="Pleae enter your phone number" required onkeypress="return phon_validation()">
																			<font color="red"><p id="val"></p></font>
																		</div>
																		<div class="col-md-12">
																			<label for="email">EMAIL </label>
																			<input type="text" id="email" name="mail" class="form-control" placeholder="Pleae enter your Name" required>
																		</div>
																		
																		<div class="col-md-6">
																			<label for="pass">PASSWORD</label>
																			<input type="password" id="password" name="password" class="form-control" placeholder="Your password" required>
																		</div>
																		<div class="col-md-6">
																			<label for="cpass">CONFIRM PASSWORD</label>
																			<input type="password" id="cpassword" name="cpassword" class="form-control" placeholder="Your password" required>
																		</div>
																		<div class="row form-group">	
																		<div class="col-lg-12">
																		<center><br>
																		<button type="submit" class="btn-primary col-lg-12" name="submit" style="padding-top:20px;"> SIGN UP</button>
																		</center>
																		</div>
																		<div class="col-lg-6">
																		
																		<center><br>
																		<button type="button" class="btn-success col-lg-12" name="submit" > SIGN UP USING GOOGLE</button>
																		</center>
																		
																		</div>
																		<div class="col-lg-6">
																		
																		<center><br>
																		<button type="button" class="btn-info col-lg-12" name="submit" > SIGN UP USING FACEBOOK</button>
																		</center>
																		</div>
																		
                                                                        </div>
																			
																		
																		
																	<!-- <div class="row form-group"> -->
																	
																	<!-- </div> -->
																</form>
																
			<!-- **********************************************END LOGIN FORM ********************************************************************-->
														
															</div>
													
                    </div>
			<!-- **********************************************END OF OTHER LOGIN ACTION**********************************************************-->
												  <div class="modal-footer">
													
											<a href="login_form.jsp">already have account</a>
												  </div>
												</div>

											  </div>
											</div>
											</div>
<!--***************************************************END OF Modal-THE LOGIN POPUP **************************************************************************** -->
		<aside id="colorlib-hero">
			<div class="flexslider">
				<ul class="slides">
			   	<li style="background-image: url(images/img_bg_1.jpg);">
			   		<div class="overlay"></div>
			   		<div class="container">
			   			<div class="row">
				   			<div class="col-md-6 col-md-pull-3 col-sm-12 col-xs-12 col-md-offset-3 slider-text">
				   				<div class="slider-text-inner">
				   					<div class="desc">
				   						<p class="meta">
												<span class="cat"><a href="#">Templates</a></span>
												<span class="date">20 March 2018</span>
												<span class="pos">By <a href="#">ASA</a></span>
											</p>
					   					<h1>How a website designer began customizing and designing</h1>
				   					</div>
				   				</div>
				   			</div>
				   		</div>
			   		</div>
			   	</li>
			   	<li style="background-image: url(images/img_bg_2.jpg);">
			   		<div class="overlay"></div>
			   		<div class="container">
			   			<div class="row">
				   			<div class="col-md-6 col-md-pull-3 col-sm-12 col-xs-12 col-md-offset-3 slider-text">
				   				<div class="slider-text-inner">
				   					<div class="desc">
				   						<p class="meta">
												<span class="cat"><a href="#">Templates</a></span>
												<span class="date">20 March 2018</span>
												<span class="pos">By <a href="#">Rich</a></span>
											</p>
					   					<h1>How a website designer began customizing and designing</h1>
				   					</div>
				   				</div>
				   			</div>
				   		</div>
			   		</div>
			   	</li>
			   	<li style="background-image: url(images/img_bg_3.jpg);">
			   		<div class="overlay"></div>
			   		<div class="container">
			   			<div class="row">
				   			<div class="col-md-6 col-md-pull-3 col-sm-12 col-xs-12 col-md-offset-3 slider-text">
				   				<div class="slider-text-inner">
				   					<div class="desc">
				   						<p class="meta">
												<span class="cat"><a href="#">Templates</a></span>
												<span class="date">20 March 2018</span>
												<span class="pos">By <a href="#">Rich</a></span>
											</p>
					   					<h1>How a website designer began customizing and designing</h1>
				   					</div>
				   				</div>
				   			</div>
				   		</div>
			   		</div>
			   	</li>
			   	<li style="background-image: url(images/img_bg_4.jpg);">
			   		<div class="overlay"></div>
			   		<div class="container">
			   			<div class="row">
				   			<div class="col-md-6 col-md-pull-3 col-sm-12 col-xs-12 col-md-offset-3 slider-text">
				   				<div class="slider-text-inner">
				   					<div class="desc">
				   						<p class="meta">
												<span class="cat"><a href="#">Templates</a></span>
												<span class="date">20 March 2018</span>
												<span class="pos">By <a href="#">Rich</a></span>
											</p>
					   					<h1>Top 5 Places To Start Your Vacation This Summer</h1>
				   					</div>
				   				</div>
				   			</div>
				   		</div>
			   		</div>
			   	</li>
			  	</ul>
		  	</div>
		</aside>

		<div id="colorlib-container">
			<div class="container">
				<div class="row row-pb-md">
					<div class="col-md-4">
						<div class="blog-entry">
							<div class="blog-img">
								<a href="blog.html"><img src="images/blog-1.jpg" class="img-responsive" alt="html5 bootstrap template"></a>
							</div>
							<div class="desc">
								<p class="meta">
									<span class="cat"><a href="#">Templates</a></span>
									<span class="date">20 March 2018</span>
									<span class="pos">By <a href="#">Rich</a></span>
								</p>
								<h2><a href="blog.html">BUSINESS</a></h2>
								<p>Occupy is a beautiful, modern, organized and optimized free finance 
								website template that helps you grow your business to a new degree. </p>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="blog-entry">
							<div class="blog-img">
								<a href="blog.html"><img src="images/blog-2.jpg" class="img-responsive" alt="html5 bootstrap template"></a>
							</div>
							<div class="desc">
								<p class="meta">
									<span class="cat"><a href="#">Templates</a></span>
									<span class="date">20 March 2018</span>
									<span class="pos">By <a href="#">Rich</a></span>
								</p>
								<h2><a href="blog.html">TheVenue</a></h2>
								<p>Thanks to TheVenue, this free responsive restaurant website template will 
								help you achieve great results in the online space with its impressive and remarkable web design. </p>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="blog-entry">
							<div class="blog-slider">
								<div class="owl-carousel">
									<div class="item">
										<a href="blog.html" class="image-popup-link"><img src="images/blog-3.jpg" class="img-responsive" alt="html5 bootstrap template"></a>
									</div>
									<div class="item">
										<a href="blog.html" class="image-popup-link"><img src="images/blog-4.jpg" class="img-responsive" alt="html5 bootstrap template"></a>
									</div>
								</div>
							</div>
							<div class="desc">
								<p class="meta">
									<span class="cat"><a href="#">Templates</a></span>
									<span class="date">20 March 2018</span>
									<span class="pos">By <a href="#">Rich</a></span>
								</p>
								<h2><a href="blog.html">Welfare</a></h2>
								<p>Welfare is a free non-profit website template for charities, 
								fundraisers and other NGO organizations willing to spread the awareness of a cause.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row row-pb-md">
					<div class="col-md-4">
						<div class="blog-entry">
							<div class="blog-img">
								<a href="blog.html"><img src="images/blog-4.jpg" class="img-responsive" alt="html5 bootstrap template"></a>
							</div>
							<div class="desc">
								<p class="meta">
									<span class="cat"><a href="#">Templates</a></span>
									<span class="date">20 March 2018</span>
									<span class="pos">By <a href="#">Rich</a></span>
								</p>
								<h2><a href="blog.html">Woodrox</a></h2>
								<p>Woodrox is a modern, clean and responsive free HTML interior design website template based on Bootstrap Framework. </p>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="blog-entry">
							<div class="blog-img">
								<a href="blog.html"><img src="images/blog-5.jpg" class="img-responsive" alt="html5 bootstrap template"></a>
							</div>
							<div class="desc">
								<p class="meta">
									<span class="cat"><a href="#">Templates</a></span>
									<span class="date">20 March 2018</span>
									<span class="pos">By <a href="#">Rich</a></span>
								</p>
								<h2><a href="blog.html">aStar</a></h2>
								<p>f you are looking for a free HTML eCommerce website template with a modern and innovative feel, aStar is the one tool you need</p>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="blog-entry">
							<div class="blog-img">
								<a href="blog.html"><img src="images/blog-6.jpg" class="img-responsive" alt="html5 bootstrap template"></a>
							</div>
							<div class="desc">
								<p class="meta">
									<span class="cat"><a href="#">Templates</a></span>
									<span class="date">20 March 2018</span>
									<span class="pos">By <a href="#">Rich</a></span>
								</p>
								<h2><a href="blog.html">Opium</a></h2>
								<p>If you truly want to differentiate yourself from the masses, 
								Opium is the free HTML personal blog website template that you need. </p>
							</div>
						</div>
					</div>
				</div>
				<div class="row row-pb-md">
					<div class="col-md-8">
						<div class="blog-entry">
							<div class="blog-img">
								<div class="video colorlib-video" style="background-image: url(images/blog-8.jpg);">
									<a href="https://vimeo.com/channels/staffpicks/93951774" class="popup-vimeo"><i class="icon-play"></i></a>
									<div class="overlay"></div>
								</div>
							</div>
							<div class="desc">
								<p class="meta">
									<span class="cat"><a href="#">Watch</a></span>
									<span class="date">20 March 2018</span>
									<span class="pos">By <a href="#">Rich</a></span>
								</p>
								<h2><a href="blog.html">Watch our video how to make website</a></h2>
								<p>A small river named Duden flows by their place and supplies it with the necessary </p>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="blog-entry">
							<div class="blog-img">
								<a href="blog.html"><img src="images/blog-7.jpg" class="img-responsive" alt="html5 bootstrap template"></a>
							</div>
							<div class="desc">
								<p class="meta">
									<span class="cat"><a href="#">Templates</a></span>
									<span class="date">20 March 2018</span>
									<span class="pos">By <a href="#">Rich</a></span>
								</p>
								<h2><a href="blog.html">Occupy</a></h2>
								<p>Occupy is a beautiful, modern, organized and optimized free
								finance website template that helps you grow your business to a new degree </p>
							</div>
						</div>
					</div>
				</div>
				<div class="row row-pb-md">
					<div class="col-md-4">
						<div class="blog-entry">
							<div class="blog-img">
								<a href="blog.html"><img src="images/blog-9.jpg" class="img-responsive" alt="html5 bootstrap template"></a>
							</div>
							<div class="desc">
								<p class="meta">
									<span class="cat"><a href="#">Templates</a></span>
									<span class="date">20 March 2018</span>
									<span class="pos">By <a href="#">Rich</a></span>
								</p>
								<h2><a href="blog.html">Tough</a></h2>
								<p>No doubt, Tough is a solid free HTML interior design 
								website template that helps you push your works and services to a new degree. </p>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="blog-entry">
							<div class="blog-img">
								<a href="blog.html"><img src="images/blog-10.jpg" class="img-responsive" alt="html5 bootstrap template"></a>
							</div>
							<div class="desc">
								<p class="meta">
									<span class="cat"><a href="#">Templates</a></span>
									<span class="date">20 March 2018</span>
									<span class="pos">By <a href="#">Rich</a></span>
								</p>
								<h2><a href="blog.html">Nexus</a></h2>
								<p>Nexus is a versatile free software website template which you can use for 
								all sorts of apps, SaaS and other tech-oriented projects. </p>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="blog-entry">
							<div class="blog-img">
								<a href="blog.html"><img src="images/blog-11.jpg" class="img-responsive" alt="html5 bootstrap template"></a>
							</div>
							<div class="desc">
								<p class="meta">
									<span class="cat"><a href="#">Templates</a></span>
									<span class="date">20 March 2018</span>
									<span class="pos">By <a href="#">Rich</a></span>
								</p>
								<h2><a href="blog.html">Recipe for your site</a></h2>
								<p>A small river named Duden flows by their place and supplies it with the necessary </p>
							</div>
						</div>
					</div>
				</div>
				<div class="row row-pb-md">
					<div class="col-md-4">
						<div class="blog-entry">
							<div class="blog-img">
								<a href="blog.html"><img src="images/blog-12.jpg" class="img-responsive" alt="html5 bootstrap template"></a>
							</div>
							<div class="desc">
								<p class="meta">
									<span class="cat"><a href="#">Templates</a></span>
									<span class="date">20 March 2018</span>
									<span class="pos">By <a href="#">Rich</a></span>
								</p>
								<h2><a href="blog.html">Meetme</a></h2>
								<p>Now is the right time to set your own space on the internet with Meetme, 
								a modern and mobile-ready free personal website template. </p>
							</div>
						</div>
					</div>
					<div class="col-md-8">
						<div class="blog-entry">
							<div class="blog-img">
								<a href="blog.html"><img src="images/blog-13.jpg" class="img-responsive" alt="html5 bootstrap template"></a>
							</div>
							<div class="desc">
								<p class="meta">
									<span class="cat"><a href="#">Templates</a></span>
									<span class="date">20 March 2018</span>
									<span class="pos">By <a href="#">Rich</a></span>
								</p>
								<h2><a href="blog.html">LearnIT</a></h2>
								<p>You will experience fantastic results once you put LearnIT free college and 
								online courses website template to use and base your fresh page on it. </p>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 text-center">
						<ul class="pagination">
							<li class="disabled"><a href="#">&laquo;</a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">&raquo;</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<div id="colorlib-instagram">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 colorlib-heading text-center">
					<h2>Instagram</h2>
				</div>
			</div>
			<div class="row">
				<div class="instagram-entry">
					<a href="#" class="instagram text-center" style="background-image: url(images/gallery-1.jpg);">
					</a>
					<a href="#" class="instagram text-center" style="background-image: url(images/gallery-2.jpg);">
					</a>
					<a href="#" class="instagram text-center" style="background-image: url(images/gallery-3.jpg);">
					</a>
					<a href="#" class="instagram text-center" style="background-image: url(images/gallery-4.jpg);">
					</a>
					<a href="#" class="instagram text-center" style="background-image: url(images/gallery-5.jpg);">
					</a>
					<a href="#" class="instagram text-center" style="background-image: url(images/gallery-6.jpg);">
					</a>
					<a href="#" class="instagram text-center" style="background-image: url(images/gallery-7.jpg);">
					</a>
					<a href="#" class="instagram text-center" style="background-image: url(images/gallery-8.jpg);">
					</a>
				</div>
			</div>
		</div>
		<footer id="colorlib-footer" role="contentinfo">
			<div class="container">
				<div class="row row-pb-md">
					<div class="col-md-3">
						<h2>Navigational</h2>
						<p>
							<ul class="colorlib-footer-links">
								<li><a href="#"><i class="icon-check"></i> Home</a></li>
								<li><a href="#"><i class="icon-check"></i> About Me</a></li>
								<li><a href="#"><i class="icon-check"></i> Blog</a></li>
								<!-- <li><a href="#"><i class="icon-check"></i> Travel</a></li>
								<li><a href="#"><i class="icon-check"></i> Lifestyle</a></li>
								<li><a href="#"><i class="icon-check"></i> Fashion</a></li>
								<li><a href="#"><i class="icon-check"></i> Health</a></li> -->
							</ul>
						</p>
					</div>
					<div class="col-md-3">
						<h2>Recent Post</h2>
						<div class="f-blog">
							<a href="blog.html" class="blog-img" style="background-image: url(images/blog-1.jpg);">
							</a>
							<div class="desc">
								<h3><a href="blog.html">Be a designer</a></h3>
								<p class="admin"><span>25 March 2018</span></p>
							</div>
						</div>
						<div class="f-blog">
							<a href="blog.html" class="blog-img" style="background-image: url(images/blog-2.jpg);">
							</a>
							<div class="desc">
								<h3><a href="blog.html">How to build website</a></h3>
								<p class="admin"><span>24 March 2018</span></p>
							</div>
						</div>
						<div class="f-blog">
							<a href="blog.html" class="blog-img" style="background-image: url(images/blog-3.jpg);">
							</a>
							<div class="desc">
								<h3><a href="blog.html">Create website</a></h3>
								<p class="admin"><span>23 March 2018</span></p>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<h2>Archive</h2>
						<p>
							<ul class="colorlib-footer-links">
								<li><a href="#"><i class="icon-check"></i> February 2018</a></li>
								<li><a href="#"><i class="icon-check"></i> January 2018</a></li>
								<li><a href="#"><i class="icon-check"></i> December 2017</a></li>
								<li><a href="#"><i class="icon-check"></i> November 2017</a></li>
								<li><a href="#"><i class="icon-check"></i> October 2017</a></li>
								<li><a href="#"><i class="icon-check"></i> September 2017</a></li>
							</ul>
						</p>
					</div>
					<div class="col-md-3">
						<h2>Tags</h2>
						<p class="tags">
							<span><a href="#"><i class="icon-tag"></i> Modeling</a></span>
							<span><a href="#"><i class="icon-tag"></i> Fashion</a></span>
							<span><a href="#"><i class="icon-tag"></i> Life</a></span>
							<span><a href="#"><i class="icon-tag"></i> Blog</a></span>
							<span><a href="#"><i class="icon-tag"></i> Workout</a></span>
							<span><a href="#"><i class="icon-tag"></i> Vacation</a></span>
							<span><a href="#"><i class="icon-tag"></i> Travel</a></span>
							<span><a href="#"><i class="icon-tag"></i> Exercise</a></span>
							<span><a href="#"><i class="icon-tag"></i> Health</a></span>
							<span><a href="#"><i class="icon-tag"></i> News</a></span>
							<span><a href="#"><i class="icon-tag"></i> Model</a></span>
							<span><a href="#"><i class="icon-tag"></i> Women</a></span>
							<span><a href="#"><i class="icon-tag"></i> Animals</a></span>
							<span><a href="#"><i class="icon-tag"></i> Nature</a></span>
							<span><a href="#"><i class="icon-tag"></i> Art</a></span>
							<span><a href="#"><i class="icon-tag"></i> Sea</a></span>
							<span><a href="#"><i class="icon-tag"></i> Ocean</a></span>
							<span><a href="#"><i class="icon-tag"></i> Office</a></span>
							<span><a href="#"><i class="icon-tag"></i> Home</a></span>
						</p>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<p>
							<!-- <small class="block"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
<!-- Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a> -->
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --><!-- </small> --> 
							<!-- <small class="block">Demo Images: <a href="http://unsplash.co/" target="_blank">Unsplash</a></small>  -->
						</p>
					</div>
				</div>
			</div>
		</footer>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Owl carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>

	</body>
</html>

