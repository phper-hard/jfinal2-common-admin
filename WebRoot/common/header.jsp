<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	//app 路径	
	String path = request.getContextPath();
	request.setAttribute("path", path);
%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>通用后台管理平台1.0</title>
		<meta name="keywords" content="通用后台" />
		<meta name="description" content="通用后台" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<!-- basic styles -->
		<link href="${path}/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="${path}/assets/css/font-awesome.min.css" />

		<!--[if IE 7]>
		  <link rel="stylesheet" href="${path}/assets/css/font-awesome-ie7.min.css" />
		<![endif]-->

		<!-- page specific plugin styles -->

		<!-- fonts -->

		

		<!-- ace styles -->

		<link rel="stylesheet" href="${path}/assets/css/ace.min.css" />
		<link rel="stylesheet" href="${path}/assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="${path}/assets/css/ace-skins.min.css" />

		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="${path}/assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->

		<script src="${path}/assets/js/ace-extra.min.js"></script>

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lt IE 9]>
		<script src="${path}/assets/js/html5shiv.js"></script>
		<script src="${path}/assets/js/respond.min.js"></script>
		<![endif]-->
		
		<script src="${path}/assets/js/jquery-2.0.3.min.js"></script>
	</head>

	<body>
		<div class="navbar navbar-default" id="navbar">
			<script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>

			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand">
						<small>
							<i class="icon-leaf"></i>
							通用后台管理系统 powered by jfinal2.0
						</small>
					</a><!-- /.brand -->
				</div><!-- /.navbar-header -->

				<div class="navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">
						
						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="${path}/assets/avatars/user.jpg" alt="Jason's Photo" />
								<span class="user-info">
									<c:if test="${sessionScope.username!=null}">
										<small>欢迎光临,</small>
										${sessionScope.username}
									</c:if>
									
									<c:if test="${sessionScope.username==null}">
										<a href='${path}/login'>请登录</a>
										<span></span><a href='/user/register.jsp'>注册</a>
									</c:if>
								</span>

								<i class="icon-caret-down"></i>
							</a>

							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li>
									<a href="#">
										<i class="icon-cog"></i>
										设置
									</a>
								</li>

								<li>
									<a href="#">
										<i class="icon-user"></i>
										个人资料
									</a>
								</li>

								<li class="divider"></li>

								<li>
									<a href="${path}/login/logout">
										<i class="icon-off"></i>
										退出
									</a>
								</li>
							</ul>
						</li>
					</ul><!-- /.ace-nav -->
				</div><!-- /.navbar-header -->
			</div><!-- /.container -->
		</div>

		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>

				<div class="sidebar" id="sidebar">
					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
					</script>

					<ul class="nav nav-list">
						<li class="active">
							<a href="${path}">
								<i class="icon-dashboard"></i>
								<span class="menu-text"> 返回首页 </span>
							</a>
						</li>

						<li class="open">
							<a href="#" class="dropdown-toggle">
								<i class="icon-desktop"></i>
								<span class="menu-text"> 菜谱管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu" style="display: block;">
								<li>
									<a href="${path}/caipu">
										<i class="icon-double-angle-right"></i>
										菜谱列表
									</a>
								</li>

								<li>
									<a href="${path}/caipu/add">
										<i class="icon-double-angle-right"></i>
										添加菜谱
									</a>
								</li>
							</ul>
						</li>

						<li class="open" style="display:none;">
							<a href="#" class="dropdown-toggle">
								<i class="icon-desktop"></i>
								<span class="menu-text"> 食材管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu" style="display: block;">
								<li>
									<a href="${path}/food">
										<i class="icon-double-angle-right"></i>
										食材列表
									</a>
								</li>

								<li>
									<a href="${path}/food/add">
										<i class="icon-double-angle-right"></i>
										添加食材
									</a>
								</li>
							</ul>
						</li>
						<li class="open">
							<a href="#" class="dropdown-toggle">
								<i class="icon-desktop"></i>
								<span class="menu-text"> 厨师管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu" style="display: block;">
								<li>
									<a href="${path}/member">
										<i class="icon-double-angle-right"></i>
										厨师列表
									</a>
								</li>
								<li>
									<a href="${path}/member/add">
										<i class="icon-double-angle-right"></i>
										添加厨师
									</a>
								</li>
							</ul>
						</li>
						<li class="open">
							<a href="#" class="dropdown-toggle">
								<i class="icon-desktop"></i>
								<span class="menu-text"> 餐厅管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu" style="display: block;">
								<li>
									<a href="${path}/canting">
										<i class="icon-double-angle-right"></i>
										餐厅列表
									</a>
								</li>
								<li>
									<a href="${path}/canting/add">
										<i class="icon-double-angle-right"></i>
										添加餐厅
									</a>
								</li>
							</ul>
						</li>
					</ul><!-- /.nav-list -->
					<div class="sidebar-collapse" id="sidebar-collapse">
						<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
					</div>

					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
					</script>
				</div>