<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	//app 路径	
	String path = request.getContextPath();
	request.setAttribute("path", path);
%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>通用后台登录页面</title>
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

		<!-- ace styles -->

		<link rel="stylesheet" href="${path}/assets/css/ace.min.css" />
		<link rel="stylesheet" href="${path}/assets/css/ace-rtl.min.css" />

		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="${path}/assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lt IE 9]>
		<script src="${path}/assets/js/html5shiv.js"></script>
		<script src="${path}/assets/js/respond.min.js"></script>
		<![endif]-->
	</head>

	<body class="login-layout">
		<div class="main-container">
			<div class="main-content">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-1">
						<div class="login-container">
							<div class="center">
								<h1>
									<i class="icon-leaf green"></i>
									<span class="red">通用</span>
									<span class="white">后台管理系统</span>
								</h1>
								<h4 class="blue">&copy; csdn-nuli888</h4>
							</div>

							<div class="space-6"></div>

							<div class="position-relative">
								<div id="login-box" class="login-box visible widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header blue lighter bigger">
												<i class="icon-coffee green"></i>
												Please Enter Your Information
											</h4>

											<div class="space-6"></div>

											<form action="${path}/login/login_on" method="post">
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" name="username" class="form-control" placeholder="Username" value="test" />
															<i class="icon-user"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" name="password" class="form-control" placeholder="Password" value="123456"/>
															<i class="icon-lock"></i>
														</span>
													</label>

													<div class="space"></div>

													<div class="clearfix">
														<label class="inline">
															<input type="checkbox" class="ace" />
															<span class="lbl"> Remember Me</span>
														</label>

														<button type="submit" class="width-35 pull-right btn btn-sm btn-primary">
															<i class="icon-key"></i>
															Login
														</button>
													</div>

													<div class="space-4"></div>
												</fieldset>
											</form>

										</div><!-- /widget-main -->

										<div class="toolbar clearfix">
											<div style="display:none;">
												<a href="#" onclick="show_box('forgot-box'); return false;" class="forgot-password-link">
													<i class="icon-arrow-left"></i>
													I forgot my password
												</a>
											</div>

											<div style="text-align:center;width:100%;">
												<a href="${path}/login/register" class="user-signup-link">
													I want to register
													<i class="icon-arrow-right"></i>
												</a>
											</div>
										</div>
									</div><!-- /widget-body -->
								</div><!-- ${path}/login-box -->

							</div><!-- /position-relative -->
						</div>
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div>
		</div><!-- /.main-container -->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='${path}/assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>
		<script type="text/javascript">
			function show_box(id) {
			 //jQuery('.widget-box.visible').removeClass('visible');
			 //jQuery('#'+id).addClass('visible');
			}
		</script>
</body>
</html>
