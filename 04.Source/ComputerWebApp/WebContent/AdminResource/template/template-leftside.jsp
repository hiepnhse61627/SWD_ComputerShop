<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--
  BODY TAG OPTIONS:
  =================
  Apply one or more of the following classes to get the
  desired effect
  |---------------------------------------------------------|
  | SKINS         | skin-blue                               |
  |               | skin-black                              |
  |               | skin-purple                             |
  |               | skin-yellow                             |
  |               | skin-red                                |
  |               | skin-green                              |	
  |---------------------------------------------------------|
  |LAYOUT OPTIONS | fixed                                   |
  |               | layout-boxed                            |
  |               | layout-top-nav                          |
  |               | sidebar-collapse                        |
  |               | sidebar-mini                            |
  |---------------------------------------------------------|
  -->
		      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">

        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">

          <!-- Sidebar user panel (optional) -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="../AdminResource/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
              <p>Hiệp Hoàng</p>
              <!-- Status -->
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>

          <!-- Sidebar Menu -->
          <ul class="sidebar-menu">
            <!-- Optionally, you can add icons to the links -->
            <li><a href="#"><i class="fa fa-link"></i> <span>Quản lý danh mục</span></a>
            	<ul class="treeview-menu">
            		<li><a href="../Category/create-category.jsp">Tạo mới danh mục</a></li>
            		<li><a href="../Category/list-category.jsp">Danh sách danh mục</a></li>
            	</ul>
            </li>
            <li><a href="#"><i class="fa fa-link"></i> <span>Quản lý sản phẩm</span></a>
            	<ul class="treeview-menu">
            		<li><a href="../Category/create-category.jsp">Tạo mới sản phẩm</a></li>
            		<li><a href="../Category/list-category.jsp">Danh sách sản phẩm</a></li>
            	</ul>
            </li>
            <li><a href="#"><i class="fa fa-link"></i> <span>Quản lý nhà cung cấp</span></a>
            	<ul class="treeview-menu">
            		<li><a href="../Producer/create-producer.jsp">Tạo mới nhà cung cấp</a></li>
            		<li><a href="../Producer/list-producer.jsp">Danh sách nhà cung cấp</a></li>
            	</ul>
            </li>
          </ul><!-- /.sidebar-menu -->
        </section>
        <!-- /.sidebar -->
      </aside>