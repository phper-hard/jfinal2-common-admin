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
		<title>通用后台注册页面</title>
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
		<script src="${path}/assets/js/jquery-2.0.3.min.js"></script>
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
								<div id="signup-box" class="signup-box widget-box no-border visible">
									<div class="widget-body ">
										<div class="widget-main">
											<h4 class="header green lighter bigger">
												<i class="icon-group blue"></i>
												New User Registration
											</h4>

											<div class="space-6"></div>
											<p> Enter your details to begin: </p>
											<c:if test="${error_msg!=null}">
												<p style="color:red">${error_msg}<p>
											</c:if>
											<form action="${path}/login/register_on" method="post" onsubmit="return checkSub()">
												
											  
												<fieldset>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input name="user.username" id="username" type="text" class="form-control" placeholder="Username" />
															<i class="icon-user"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input name="user.password" id="password" type="password" class="form-control" placeholder="Password" />
															<i class="icon-lock"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" id="repassword" class="form-control" placeholder="Repeat password" />
															<i class="icon-retweet"></i>
														</span>
													</label>

													<label class="block">
														<input type="checkbox" class="ace" />
														<span class="lbl">
															I accept the
															<a href="#">User Agreement</a>
														</span>
													</label>

													<div class="space-24"></div>

													<div class="clearfix">
														<button type="reset" class="width-30 pull-left btn btn-sm">
															<i class="icon-refresh"></i>
															Reset
														</button>

														<button type="submit" class="width-65 pull-right btn btn-sm btn-success">
															Register
															<i class="icon-arrow-right icon-on-right"></i>
														</button>
													</div>
												</fieldset>
											</form>
										</div>

										<div class="toolbar center">
											<a href="${path}/login"  class="back-to-login-link">
												<i class="icon-arrow-left"></i>
												Back to login
											</a>
										</div>
									</div><!-- /widget-body -->
								</div><!-- /signup-box -->

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
			function checkSub(){
				if($("#username").val()==""){
					alert("用户名不能为空")
					return false;
				}
				if($("#password").val()==""){
					alert("密码不能为空")
					return false;
				}
				if($("#repassword").val()!=$("#password").val()){
					alert("两次密码不一致")
					return false;
				}
			}
			function show_box(id) {
			 //jQuery('.widget-box.visible').removeClass('visible');
			 //jQuery('#'+id).addClass('visible');
			}
		</script>
</body>
</html>
