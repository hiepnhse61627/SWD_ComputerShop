<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
				<h1>Thêm nhà cung cấp</h1>
			</section>
			<section class="content">
				<!-- Horizontal Form -->
				<div class="box box-success">
					<div class="box-header with-border">
						<h3 class="box-title">Nhập thông tin nhà cung cấp</h3>
					</div><!-- /.box-header -->
					<!-- form start -->
					<form class="form-horizontal" id="add-producer-form">
						<div class="box-body">
							<div class="form-group">
								<label for="code" class="col-lg-2 control-label">Mã nhà cung cấp</label>
								<div class="col-lg-5">
									<input type="text" class="form-control" id="producerCd" name="producerCd" placeholder="Mã nhà cung cấp">
								</div>
							</div>
							<div class="form-group">
								<label for="name" class="col-lg-2 control-label">Tên nhà cung cấp</label>
								<div class="col-lg-5">
									<input type="text" class="form-control" id="producerName" name="producerName" placeholder="Tên nhà cung cấp">
								</div>
							</div>
							<div class="form-group">
								<label for="description" class="col-lg-2 control-label">Mô tả</label>
								<div class="col-lg-5">
									<input type="text" class="form-control" id="producerDescription" name="producerDescription" placeholder="Mô tả">
								</div>
							</div>
							<div class="form-group">
								<label for="email" class="col-lg-2 control-label">Email</label>
								<div class="col-lg-5">
									<input type="text" class="form-control" id="producerEmail" name="producerEmail" placeholder="Email">
								</div>
							</div>
							<div class="form-group">
								<label for="address" class="col-lg-2 control-label">Địa chỉ</label>
								<div class="col-lg-5">
									<input type="text" class="form-control" id="producerAddress" name="producerAddress" placeholder="Địa chỉ">
								</div>
							</div>
							<div class="form-group">
								<label for="phone" class="col-lg-2 control-label">Số điện thoại</label>
								<div class="col-lg-5">
									<input type="text" class="form-control" id="producerPhone" name="producerPhone" placeholder="Số điện thoại">
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
	<jsp:include page="create-producer-js.jsp"></jsp:include>
	<jsp:include page="../AdminResource/template/confirm-dialog.jsp"></jsp:include>
</body>