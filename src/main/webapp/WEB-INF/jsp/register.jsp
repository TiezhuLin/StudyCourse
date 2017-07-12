<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>注册</title>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<%@include file="/public/bootstraphead.jsp"%>
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<!-- js -->
<script src="js/user.js"></script>
<!-- cart -->
</head>
<body>
	<!--header-->
	<%@include file="/public/head.jsp"%>
	<%@include file="/public/findpasswordmodal.jsp"%>
	<!--account-->
	<div class="account">
		<div class="container">
			<div class="register">
				<form>
					<div class="register-top-grid">
						<h3>注册</h3>
						<div class="input">
							<span>邮箱地址<label>*</label></span> <input id="newemail"
								type="text">
							<div class="alert alert-warning" id="newemailwarnings"
								style="display: none" role="alert">
								<a href="#" id="emailcontent" class="alert-link"></a>
							</div>
						</div>
						<div class="input">
							<span>请输入密码<label>*</label></span> <input id="newpassword"
								type="password">
						</div>
						<div class="input">
							<span>再次确认密码<label>*</label></span> <input id="newpassword1"
								type="password">
						</div>
						<div class="alert alert-warning" id="newpasswordwarning"
							style="display: none" role="alert">
							<a href="#" class="alert-link">密码为空或两次密码不相等</a>
						</div>
						<a class="news-letter" href="#"> <label class="checkbox"><input
								type="checkbox" name="checkbox" checked=""><i> </i>接受服务条款</label>
						</a>
						<div class="clearfix"></div>
					</div>
				</form>
				<div class="clearfix"></div>
				<div class="register-but">

					<input id="register" type="submit" value="注册">
					<div class="clearfix"></div>

				</div>
			</div>
		</div>
	</div>
	<!--//account-->

</body>
</html>