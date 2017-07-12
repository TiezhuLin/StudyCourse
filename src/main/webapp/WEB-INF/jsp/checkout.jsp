<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Checkout</title>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript">			
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>

<!-- //Custom Theme files -->
<%@include file="/public/bootstraphead.jsp"%>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/css/bootstrap-select.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.2/js/bootstrap-select.min.js"></script>

<script src="<%=request.getContextPath()%>/js/order.js">
	
</script>
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<!-- //js -->
</head>
<body>
	<!--header-->
	<%@include file="/public/head.jsp"%>
	<%@include file="/public/findpasswordmodal.jsp"%>
	<%@include file="/public/publicmodal.jsp"%>
	<%@include file="/public/addressmodal.jsp"%>
	<!--//header-->
	<!--cart-items-->
	<div class="cart-items">
		<div class="container">
			<h2>My Shopping Cart(3)</h2>
			<c:if test="${courses=='[]'}">购物车空空如也...</c:if>
			<c:forEach varStatus="idx" items="${courses}" var="course">

				<div class=" cart-header  cart-header${course.id}">
					<div class="close" title="${course.id}"></div>

					<div class="cart-sec simpleCart_shelfItem">

						<div class="cart-item cyc">
							<input type="checkbox" name="course" value="${course.id}" /> <img
								src="${course.image}" class="img-responsive" alt="">
						</div>
						<div class="cart-item-info">
							<h3>
								<a href="#"> ${course.name} </a><span>${course.status}</span>
							</h3>
							<ul class="qty">
								<li><p>单价:${course.price}</p></li>
								<li><p>数量:X${course.number}</p></li>
								<li><p>等级:${course.size}</p></li>
								<li><p>包邮</p></li>
							</ul>
							<div class="delivery">
								<p>折扣 : 无</p>
								<span id="sinplecartprice"
									title="${course.number*course.price*course.size}">最终价:${course.number*course.price*course.size}</span>
								<div class="clearfix"></div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</c:forEach>
			<div style="text-align: right">
				总价为￥
				<c:if test="${!empty sessionScope.totalprice}">${sessionScope.totalprice}</c:if>
			</div>
			<c:if test="${courses!='[]'}">
				<a href="#" onclick="creatOrder('${sessionScope.username}')"><img
					alt="" style="width: 15%; display: inline; float: right;"
					src="images/shopping.png"></a>
			</c:if>
		</div>
	</div>


</body>
</html>