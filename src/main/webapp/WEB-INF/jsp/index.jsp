<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
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


</head>
<body>
	<!--header-->
	<%@include file="/public/head.jsp"%>
		<%@include file="/public/publicmodal.jsp"%>
	<%@include file="/public/findpasswordmodal.jsp"%>
	<!--banner-->
	<div class="banner">
		<div class="container">
			<h2 class="hdng">
				考试培训 <span>课程</span>
			</h2>
			<p>各大考试培训课程，教师一对一讲授，通过率98.2%。</p>
			<a href="#">Buy Now</a>
			<div class="banner-text">
				<img src="images/2.png" alt="" />
			</div>
		</div>
	</div>
	<div class="gallery">
		<div class="container">
			<div class="gallery-grids">
				<c:forEach var="course" begin="0" end="9" items="${courses}"
					varStatus="idx">
					<div
						class=" <c:choose>
			        				<c:when test="${idx.index==0}">col-md-8 glry-two</c:when>
			        				<c:when test="${idx.index==1}">glry-two col-md-4</c:when>
			        				<c:otherwise>col-md-3</c:otherwise>
								</c:choose> gallery-grid ">
								<a href="single?id=${course.id}"><img src="${course.image}" class="img-responsive" alt="" />
								<div class="gallery-info">
								<p>
									<span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
									view
								</p>
								<a class="shop  collect" onclick="collect(${course.id})" href="#">收藏</a>
								<a class="shop" href="single?id=${course.id}">立即购买</a>
								<div class="clearfix"></div>
							</div> </a>
						<div class="galy-info">
							<p>${course.name}</p>
							<div class="galry">
								<div class="prices">
									<h5 class="item_price">￥${course.presentprice}</h5>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</c:forEach>

			</div>
		</div>
	</div>
	<!--//gallery-->
	<!--subscribe-->
	<div class="subscribe">
		<div class="container">
			<h3>Please give me a higer score, thank you!</h3>
			<form>
				<input type="text" class="text" value="Email"
					onFocus="this.value = '';"
					onBlur="if (this.value == '') {this.value = 'Email';}"> <input
					type="submit" value="Subscribe">
			</form>
		</div>
	</div>
	<!--//subscribe-->
	
</body>
</html>