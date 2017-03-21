<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<head>
	<title>Computer Store</title>
	<!-- Custom Theme files -->
	<link href="../CustomerResource/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="../CustomerResource/css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="../CustomerResource/css/fasthover.css" rel="stylesheet" type="text/css" media="all" />
	<link href="../CustomerResource/css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
	<!-- //Custom Theme files -->
	<!-- font-awesome icons -->
	<link href="../CustomerResource/css/font-awesome.css" rel="stylesheet"> 
	<!-- //font-awesome icons -->
	<!-- web fonts --> 
	<link href='http://fonts.googleapis.com/css?family=Glegoo:400,700' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
	<!-- //web fonts -->
	<!-- js -->
	<script src="../CustomerResource/js/jquery.min.js"></script>
	<!-- for bootstrap working -->
	<script type="text/javascript" src="../CustomerResource/js/bootstrap-3.1.1.min.js"></script>
	<!-- //for bootstrap working -->
	<script src="../CustomerResource/js/easyResponsiveTabs.js" type="text/javascript"></script>
	<!-- //js -->  
	<!-- start-smooth-scrolling -->
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
	</script>
	<!-- //end-smooth-scrolling --> 
</head>

<body>
	<!-- Header -->
	<jsp:include page="index-header.jsp"></jsp:include>
	<!-- /Header -->
	
	<!-- Body -->
	<jsp:include page="index-body.jsp"></jsp:include>
	<!-- /Body -->
	
	<!-- Footer -->
	<jsp:include page="index-footer.jsp"></jsp:include>
	<!-- /Footer -->
	
	<!-- Java Script -->
	<jsp:include page="customer-index-js.jsp"></jsp:include>
	<!-- /Java Script -->
	
	<!-- Base Modal -->
	<jsp:include page="../CustomerResource/template/base-modal.jsp"></jsp:include>
	<!-- /Base Modal -->
</body>