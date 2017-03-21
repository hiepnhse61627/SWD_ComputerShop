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
		<!-- Data Tables-->
		<link rel="stylesheet" href="../AdminResource/plugins/datatables/dataTables.bootstrap.css">
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
		<!-- DataTables -->
		<script src="../AdminResource/plugins/datatables/jquery.dataTables.min.js"></script>
		<script src="../AdminResource/plugins/datatables/dataTables.bootstrap.min.js"></script>
</head>

<body class="hold-transition skin-green sidebar-mini">
	<div class="page-wrapper">
		<!-- Main Header -->
		<jsp:include page="../AdminResource/template/template-header.jsp"></jsp:include>
		<jsp:include page="../AdminResource/template/template-leftside.jsp"></jsp:include>
		<div class="content-wrapper">
			<section class="content-header">
				<h1>Danh sách danh mục</h1>
			</section>
			<section class="content">
				<div class="box box-success">
					<div class="box-body">
						<table id="list-category"
							class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>Mã danh mục</th>
									<th>Tên danh mục</th>
									<th>Mô tả</th>
									<th></th>
									<th></th>
									<th></th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<th>Mã danh mục</th>
									<th>Tên danh mục</th>
									<th>Mô tả</th>
									<th></th>
									<th></th>
									<th></th>
								</tr>
							</tfoot>
						</table>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
			</section>
		</div>
		<jsp:include page="../AdminResource/template/template-footer.jsp"></jsp:include>
	</div>
	<jsp:include page="list-category-js.jsp"></jsp:include>
	<jsp:include page="../AdminResource/template/confirm-dialog.jsp"></jsp:include>
</body>