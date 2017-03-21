<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- Start total header --> 
	<div id="header">
		<!-- Login form -->
		<div class="modal fade" id="myModal88" tabindex="-1" role="dialog" aria-labelledby="myModal88"
			aria-hidden="true">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
							&times;</button>
						<h4 class="modal-title" id="myModalLabel">Don't Wait, Login now!</h4>
					</div>
					<div class="modal-body modal-body-sub">
						<div class="row">
							<div class="col-md-8 modal_body_left modal_body_left1" style="border-right: 1px dotted #C2C2C2;padding-right:3em;">
								<div class="sap_tabs">	
									<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
										<ul>
											<li class="resp-tab-item" aria-controls="tab_item-0"><span>Sign in</span></li>
											<li class="resp-tab-item" aria-controls="tab_item-1"><span>Sign up</span></li>
										</ul>		
										<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
											<div class="facts">
												<div class="register">
													<form action="#" method="post">			
														<input name="Email" placeholder="Email Address" type="text" required="">						
														<input name="Password" placeholder="Password" type="password" required="">										
														<div class="sign-up">
															<input type="submit" value="Sign in"/>
														</div>
													</form>
												</div>
											</div> 
										</div>	 
										<div class="tab-2 resp-tab-content" aria-labelledby="tab_item-1">
											<div class="facts">
												<div class="register">
													<form action="#" method="post">			
														<input placeholder="Name" name="Name" type="text" required="">
														<input placeholder="Email Address" name="Email" type="email" required="">	
														<input placeholder="Password" name="Password" type="password" required="">	
														<input placeholder="Confirm Password" name="Password" type="password" required="">
														<div class="sign-up">
															<input type="submit" value="Create Account"/>
														</div>
													</form>
												</div>
											</div>
										</div> 			        					            	      
									</div>	
								</div>
								<script type="text/javascript">
									$(document).ready(function () {
										$('#horizontalTab').easyResponsiveTabs({
											type: 'default', //Types: default, vertical, accordion           
											width: 'auto', //auto or any width like 600px
											fit: true   // 100% fit in a container
										});
									});
								</script>
								<div id="OR" class="hidden-xs">OR</div>
							</div>
							<div class="col-md-4 modal_body_right modal_body_right1">
								<div class="row text-center sign-with">
									<div class="col-md-12">
										<h3 class="other-nw">Sign in with</h3>
									</div>
									<div class="col-md-12">
										<ul class="social">
											<li class="social_facebook"><a href="#" class="entypo-facebook"></a></li>
											<li class="social_dribbble"><a href="#" class="entypo-dribbble"></a></li>
											<li class="social_twitter"><a href="#" class="entypo-twitter"></a></li>
											<li class="social_behance"><a href="#" class="entypo-behance"></a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Login form -->
		<!-- header -->
		<div class="header" id="home1">
			<div class="container">
				<div class="w3l_login">
					<a href="#" data-toggle="modal" data-target="#myModal88"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
				</div>
				<div class="w3l_logo">
					<h1><a href="index.html">Computer Store<span>Your stores. Your place.</span></a></h1>
				</div>
				<div class="cart cart box_1"> 
					<form action="#" method="post" class="last"> 
						<input type="hidden" name="cmd" value="_cart" />
						<input type="hidden" name="display" value="1" />
						<button class="w3view-cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
					</form>   
				</div>  
			</div>
		</div>
		<!-- //header -->
		<!-- navigation -->
		<div class="navigation">
			<div class="container">
				<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header nav_2">
						<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div> 
					<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
						<ul class="nav navbar-nav">
							<li><a href="#" class="act">Home</a></li>	
							<!-- Mega Menu -->
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Category<b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<div class="row">
<!-- 										<div class="col-sm-4"> -->
<!-- 											<ul class="multi-column-dropdown"> -->
<!-- 												<h6>Mobiles</h6> -->
<!-- 												<li><a href="products.html">Mobile Phones</a></li> -->
<!-- 												<li><a href="products.html">Mp3 Players <span>New</span></a></li>  -->
<!-- 												<li><a href="products.html">Popular Models</a></li> -->
<!-- 												<li><a href="products.html">All Tablets<span>New</span></a></li> -->
<!-- 											</ul> -->
<!-- 										</div> -->
<!-- 										<div class="col-sm-4"> -->
<!-- 											<ul class="multi-column-dropdown"> -->
<!-- 												<h6>Accessories</h6> -->
<!-- 												<li><a href="products1.html">Laptop</a></li> -->
<!-- 												<li><a href="products1.html">Desktop</a></li> -->
<!-- 												<li><a href="products1.html">Wearables <span>New</span></a></li> -->
<!-- 											</ul> -->
<!-- 										</div> -->
<!-- 										<div class="col-sm-4"> -->
<!-- 											<ul class="multi-column-dropdown"> -->
<!-- 												<h6>Home</h6> -->
<!-- 												<li><a href="products2.html">Tv</a></li> -->
<!-- 												<li><a href="products2.html">Camera</a></li> -->
<!-- 												<li><a href="products2.html">AC</a></li> -->
<!-- 												<li><a href="products2.html">Grinders</a></li> -->
<!-- 											</ul> -->
<!-- 										</div> -->
										<div class="clearfix"></div>
									</div>
								</ul>
							</li>
							<li><a href="about.html">About Us</a></li> 
							<li class="w3pages"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="icons.html">Web Icons</a></li>
									<li><a href="codes.html">Short Codes</a></li>     
								</ul>
							</li>  
							<li><a href="mail.html">Mail Us</a></li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
		<!-- //navigation -->
		<!-- banner -->
		<div class="banner">
			<div class="container">
				<h3>Computer Store, <span>Special Offers</span></h3>
			</div>
		</div>
		<!-- banner --> 
	</div>
	<!-- End total header -->