<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>AdminLTE 2 | Starter</title>
		<!-- Tell the browser to be responsive to screen width -->
		<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
		<!-- Bootstrap 3.3.5 -->
		<link rel="stylesheet" href="AdminResource/bootstrap/css/bootstrap.min.css">
		<!-- Font Awesome -->
		<link rel="stylesheet" href="AdminResource/bootstrap/css/font-awesome.min.css">
		<!-- Ionicons -->
		<link rel="stylesheet" href="AdminResource/bootstrap/css/ionicons.min.css">
		<!-- Theme style -->
		<link rel="stylesheet" href="AdminResource/dist/css/AdminLTE.min.css">
		<!-- AdminLTE Skins. We have chosen the skin-blue for this starter
			   page. However, you can choose any other skin. Make sure you
			   apply the skin class to the body tag so the changes take effect.
	    -->
		<link rel="stylesheet" href="AdminResource/dist/css/skins/skin-green.min.css">
		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
		<!-- REQUIRED JS SCRIPTS -->

		<!-- jQuery 2.1.4 -->
		<script src="AdminResource/plugins/jQuery/jQuery-2.1.4.min.js"></script>
		<!-- Bootstrap 3.3.5 -->
		<script src="AdminResource/bootstrap/js/bootstrap.min.js"></script>
		<!-- AdminLTE App -->
		<script src="AdminResource/dist/js/app.min.js"></script>
</head>
	
<body class="hold-transition skin-green sidebar-mini">
	<div class="page-wrapper">
		<!-- Main Header -->
		<jsp:include page="index-header.jsp"></jsp:include>
		<jsp:include page="index-leftside.jsp"></jsp:include>
		<div class="content-wrapper">
		</div>
		<jsp:include page="index-footer.jsp"></jsp:include>
	</div>
</body>