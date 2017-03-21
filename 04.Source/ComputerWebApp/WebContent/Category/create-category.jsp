<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:setLocale value="vi_VN"/>
<fmt:setBundle basename="com.resource.i18n.messages" var="resourceBundle" scope="session"/>

<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>AdminLTE 2 | Starter</title>
		<!-- Tell the browser to be responsive to screen width -->
		<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
		<!-- Bootstrap 3.3.5 -->
		<link rel="stylesheet" href="../AdminResource/bootstrap/css/bootstrap.min.css">
		<!-- Font Awesome -->
		<link rel="stylesheet" href="../AdminResource/bootstrap/css/font-awesome.min.css">
		<!-- Ionicons -->
		<link rel="stylesheet" href="../AdminResource/bootstrap/css/ionicons.min.css">
		<!-- Theme style -->
		<link rel="stylesheet" href="../AdminResource/dist/css/AdminLTE.min.css">
		<!-- AdminLTE Skins. We have chosen the skin-blue for this starter
			   page. However, you can choose any other skin. Make sure you
			   apply the skin class to the body tag so the changes take effect.
	    -->
		<link rel="stylesheet" href="../AdminResource/dist/css/skins/skin-green.min.css">
		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
		<!-- REQUIRED JS SCRIPTS -->

		<!-- jQuery 2.1.4 -->
		<script src="../AdminResource/plugins/jQuery/jQuery-2.1.4.min.js"></script>
		<!-- Bootstrap 3.3.5 -->
		<script src="../AdminResource/bootstrap/js/bootstrap.min.js"></script>
		<!-- AdminLTE App -->
		<script src="../AdminResource/dist/js/app.min.js"></script>
</head>
	
<body class="hold-transition skin-green sidebar-mini">
	<div class="page-wrapper">
		<!-- Main Header -->
		<jsp:include page="../AdminResource/template/template-header.jsp"></jsp:include>
		<jsp:include page="../AdminResource/template/template-leftside.jsp"></jsp:include>
		<div class="content-wrapper">
			<section class="content-header">
				<h1>Thêm danh mục</h1>
			</section>
			<section class="content">
				<!-- Horizontal Form -->
				<div class="box box-success">
					<div class="box-header with-border">
						<h3 class="box-title">Nhập thông tin danh mục</h3>
					</div><!-- /.box-header -->
					<!-- form start -->
					<form class="form-horizontal" id="add-category-form">
						<div class="box-body">
							<div class="form-group">
								<label for="code" class="col-lg-2 control-label"><fmt:message key="category_code" bundle="${resourceBundle}"/></label>
								<div class="col-lg-5">
									<input type="text" class="form-control" id="cd" name="cd" placeholder="Mã danh mục">
								</div>
							</div>
							<div class="form-group">
								<label for="name" class="col-lg-2 control-label">Tên danh mục</label>
								<div class="col-lg-5">
									<input type="text" class="form-control" id="name" name="name" placeholder="Tên danh mục">
								</div>
							</div>
							<div class="form-group">
								<label for="description" class="col-lg-2 control-label">Mô tả</label>
								<div class="col-lg-5">
									<input type="text" class="form-control" id="description" name="description" placeholder="Mô tả">
								</div>
							</div>
						</div><!-- /.box-body -->
						<div class="box-footer">
							<button id="btnSubmit" type="submit" class="btn btn-success pull-left">Lưu</button>
						</div><!-- /.box-footer -->
					</form>
				</div>
			</section>
		</div>
		<jsp:include page="../AdminResource/template/template-footer.jsp"></jsp:include>
	</div>
	<jsp:include page="create-category-js.jsp"></jsp:include>
	<jsp:include page="../AdminResource/template/confirm-dialog.jsp"></jsp:include>
</body>