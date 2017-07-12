<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>single</title>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript">
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 



</script>
<!-- //Custom Theme files -->
<%@include file="/public/bootstraphead.jsp"%>
<link href="<%=request.getContextPath()%>/css/style.css" type="text/css"
	rel="stylesheet" media="all">
<script src="<%=request.getContextPath()%>/js/imagezoom.js"></script>
<!-- //js -->
<!-- FlexSlider -->
<script defer
	src="<%=request.getContextPath()%>/js/jquery.flexslider.js"></script>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/flexslider.css" type="text/css"
	media="screen" />
<script>
	// Can also be used with $(document).ready()
	$(window).load(function() {
		$('.flexslider').flexslider({
			animation : "slide",
			controlNav : "thumbnails"
		});
	});
</script>
<!--//FlexSlider -->
</head>
<body>
	<!--header-->
	<%@include file="/public/head.jsp"%>
	<%@include file="/public/findpasswordmodal.jsp"%>
	<%@include file="/public/publicmodal.jsp"%>
	<!--//header-->
	<!--//single-page-->
	<div class="single">
		<div class="container">
			<div class="single-grids">
				<div class="col-md-4 single-grid">
					<div class="flexslider">
						<ul class="slides">
							<c:forEach var="image" items="${course.image}" varStatus="idx">
								<li data-thumb="${image}">
									<div class="thumb-image">
										<img src="${image}" data-imagezoom="true"
											class="img-responsive">
									</div>
								</li>
							</c:forEach>

						</ul>
					</div>
				</div>
				<div class="col-md-4 single-grid simpleCart_shelfItem">
					<h3>${course.name}</h3>
					<p>${course.content}</p>
					<ul class="size size1">
						<h3>等级</h3>
						<li><a class="checked" href="#" title="1">初级</a></li>
						<li><a href="#" title="2">中级</a></li>
						<li><a href="#" title="3">高级</a></li>
					</ul>
					<div class="galry">
						<div class="prices">
							<h5 class="item_price" name="${course.price}">￥ ${course.price}</h5>
						</div>
						<div class="clearfix"></div>
					</div>
					<p class="qty">数量 :</p>
					<input min="1" type="number" id="quantity" name="quantity"
						value="1" class="form-control input-small">
					<div class="btn_form">
						<a href="#"
							onclick="addToCart('${course.id}','${sessionScope.username}')"
							class="add-cart item_add">加入购物车</a>
					</div>
				</div>
				<div class="col-md-4 single-grid1" >
					<h2>More</h2>
						<ul >
							<li style="text-align:center;"><a href="index">首&emsp;&emsp;页</a></li>
							<li style="text-align:center;"><a href="usermessage">我的主页</a></li>
							<li style="text-align:center;"><a href="register">用户注册</a></li>
							<li style="text-align:center;"><a href="count">在线人数</a></li><br/>
							<center><p>当前在线人数为：${onlineCount>0?onlineCount:0}</p></center><hr>
						</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
		<!-- collapse -->
	<div class="collpse tabs">
		<div class="container">
			<div class="panel-group collpse" id="accordion" role="tablist"
				aria-multiselectable="true">
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingOne">
						<h4 class="panel-title">
							<a role="button" data-toggle="collapse" data-parent="#accordion"
								href="#collapseOne" aria-expanded="true"
								aria-controls="collapseOne"> 英语学习类 </a>
						</h4>
					</div>
					<div id="collapseOne" class="panel-collapse collapse in"
						role="tabpanel" aria-labelledby="headingOne">
						<div class="panel-body">
						<a href="single?id=5">雅思王牌课程</a><br/>
						<a href="single?id=6">托福精品课程</a><br/>
						<a href="single?id=8">商务英语BEC课程</a><br/>
						<a href="single?id=9">高级英语证书CAE课程</a><br/>
						<a href="single?id=10">剑桥五级英语考试CPE课程</a><br/>
						<a href="single?id=13">四级CET-4课程</a><br/>
						<a href="single?id=14">六级CET-6课程</a><br/>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingTwo">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse"
								data-parent="#accordion" href="#collapseTwo"
								aria-expanded="false" aria-controls="collapseTwo">
								计算机学习类 </a>
						</h4>
					</div>
					<div id="collapseTwo" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="headingTwo">
						<div class="panel-body">
						<a href="single?id=11">计算机等级考试NCRE课程</a><br/>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingThree">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse"
								data-parent="#accordion" href="#collapseThree"
								aria-expanded="false" aria-controls="collapseThree">小语种学习类</a>
						</h4>
					</div>
					<div id="collapseThree" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="headingThree">
						<div class="panel-body">
						<a href="single?id=15">日语等级考试JPTL课程</a><br/>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingFour">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse"
								data-parent="#accordion" href="#collapseFour"
								aria-expanded="false" aria-controls="collapseFour">其他类 </a>
						</h4>
					</div>
					<div id="collapseFour" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="headingFour">
						<div class="panel-body">
						<a href="single?id=12">注册会计师ACCA培训课程</a><br/>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</html>