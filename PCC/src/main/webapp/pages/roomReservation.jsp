﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script src="http://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title>PCC - Room</title>
<!-- Standard Favicon -->
<link rel="icon" type="image/x-icon" href="../images/pcc/pcc.png" />

<!-- Library - Google Font Familys -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="../revolution/css/settings.css">


<!-- RS5.0 Layers and Navigation Styles -->
<link rel="stylesheet" type="text/css"
	href="../revolution/css/layers.css">
<link rel="stylesheet" type="text/css"
	href="../revolution/css/navigation.css">
<link rel="stylesheet" type="text/css" href="../css/shortcode.css">

<!-- Library - Bootstrap v3.3.5 -->
<link rel="stylesheet" type="text/css" href="../libraies/lib.css">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">

<!-- Custom - Common CSS -->
<link rel="stylesheet" type="text/css" href="../css/plugins.css">
<link rel="stylesheet" type="text/css" href="../css/navigation-menu.css">
<link rel="stylesheet" type="text/css" href="../css/shortcode.css">
<link rel="stylesheet" type="text/css" href="../css/style.css">

<!-- fontawesome -->
<link href="../revolution/fonts/fontawesome-all.css">

<style>
.color {
	border-style: double
}
</style>

<script>
	$(function() {
		var price
		var roomId
		var endDate
		var beginDate
		var totalPrice
		var unavailableDates

		function showPrice() {
			totalPrice = ((endDate - beginDate) * price) / (86400000)
			if (!isNaN(totalPrice)) {
				$('#totalPrice').empty().val(totalPrice)
			}
		}

		$('#beginDate').datepicker({
			numberOfMonths : 2,
			minDate : 0,
			beforeShowDay : unavailable,
			dateFormat : "yy/mm/dd",
			onSelect : function(selected) {
				$("#endDate").datepicker("option", "minDate", selected)
				beginDate = $('#beginDate').datepicker('getDate');
				showPrice()
			}
		});

		$('#endDate').datepicker({
			numberOfMonths : 2,
			minDate : 0,
			beforeShowDay : unavailable,
			dateFormat : "yy/mm/dd",
			onSelect : function(selected) {
				$("#beginDate").datepicker("option", "maxDate", selected)
				endDate = $(this).datepicker('getDate');
				showPrice()
			}
		});

		$(".image").click(function() {
			unavailableDates=[]
// 			$(".image").removeClass("color")
// 			$(this).addClass("color")
            roomId=$(this).attr("id")
            price = $(this).attr("alt")
			$("#roomId").empty().val(roomId)
			showPrice()
			
			$.get('${pageContext.request.contextPath}/showByRoomId.room','roomId='+roomId,function(data){
				$.each(data,function(i,item){
					console.log(data[i].beginDate)
					console.log(data[i].endDate)
	
					unavailableDates.push(data[i].beginDate,data[i].endDate)
					console.log(unavailableDates)
				
				})
							
			})					
		});

	

		function unavailable(date) {
			dmy = date.getFullYear() + "/" + (date.getMonth() + 1) + "/"
					+ date.getDate();
			if ($.inArray(dmy, unavailableDates) == -1) {
				return [ true, "" ];
			} else {
				return [ false, "", "Unavailable" ];
			}
		}

	});
</script>

</head>

<body data-offset="200" data-spy="scroll" data-target=".ow-navigation">
	<div class="main-container">
		<!-- Loader -->
		<div id="site-loader" class="load-complete">
			<div class="loader">
				<div class="loader-inner ball-clip-rotate">
					<div></div>
				</div>
			</div>
		</div>
		<!-- Loader /- -->

		<!-- Header -->
		<header
			class="header-section header-section-1 container-fluid no-padding">

		<!-- Middel Header -->
		<div class="middel-header">
			<!-- Container -->
			<div class="container">
				<!-- Logo Block -->
				<div class="col-md-4 col-sm-6 col-xs-12 logo-block">
					<a href="index.html" class="navbar-brand">PCC <span>logo</span></a>
				</div>
				<!-- Logo Block /- -->
				<!-- Search Block -->
				<div class="col-md-5 col-sm-6 col-xs-6 search-block">
					<div class="input-group">
						<input class="form-control"
							placeholder="Search You Wants Here . . ." type="text"> <span
							class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="icon icon-Search"></i>
							</button>
						</span>
					</div>
				</div>
				<!-- Search Block /- -->
				<!-- Menu Icon -->
				<div class="col-md-3 col-sm-6 col-xs-6 menu-icon">
					<ul class="cart">
						<li><a aria-expanded="true" aria-haspopup="true"
							data-toggle="dropdown" id="cart" class="btn dropdown-toggle"
							title="Add To Cart" href="#"><i
								class="icon icon-ShoppingCart"></i></a>
							<ul class="dropdown-menu no-padding">
								<li class="mini_cart_item"><a title="Remove this item"
									class="remove" href="#">&#215;</a> <a href="#"
									class="shop-thumbnail"> <img alt="poster_2_up"
										class="attachment-shop_thumbnail"
										src="images/product-wishlist-1.jpg">Flying Ninja
								</a> <span class="quantity">2 &#215; <span class="amount">Rs.12.00</span></span>
								</li>
								<li class="mini_cart_item"><a title="Remove this item"
									class="remove" href="#">&#215;</a> <a href="#"
									class="shop-thumbnail"> <img alt="poster_2_up"
										class="attachment-shop_thumbnail"
										src="../images/product-wishlist-2.jpg">Flying Ninja
								</a> <span class="quantity">2 &#215; <span class="amount">Rs.12.00</span></span>
								</li>
								<li class="button"><a href="#" title="View Cart">View
										Cart</a> <a href="#" title="Check Out">Check out</a></li>
							</ul></li>
						<li><a href="#" title="Like"><i class="icon icon-Heart"></i></a></li>
						<li><a href="#" title="User"><i class="icon icon-User"></i></a></li>
					</ul>
				</div>
				<!-- Menu Icon /- -->
			</div>
			<!-- Container /- -->
		</div>
		<!-- Middel Header /- --> <!-- Menu Block -->
		<div class="container-fluid no-padding menu-block">
			<!-- Container -->
			<div class="container">
				<!-- nav -->
				<nav class="navbar navbar-default ow-navigation">
				<div class="navbar-collapse collapse" id="navbar">
					<ul class="nav navbar-nav">
						<li class="dropdown"><a href="../index.html" title="Home"
							class="dropdown-toggle" role="button" aria-haspopup="true"
							aria-expanded="false">首頁</a></li>
						<li><a href="../pages/reservation.html" title="Reservation">線上預約</a></li>
						<li><a href="../pages/partner.html" title="Partner">服務夥伴</a></li>
						<li class="dropdown"><a href="../pages/shop.html"
							title="Shop" class="dropdown-toggle" role="button"
							aria-haspopup="true" aria-expanded="false">購物商城 </a> <i
							class="ddl-switch fa fa-angle-down"></i>
							<ul class="dropdown-menu">
								<li><a href="#" title="">商品類</a></li>
								<li><a href="#" title="">商品類</a></li>
								<li><a href="#" title="">商品類</a></li>
							</ul></li>
						<li class="dropdown"><a href="../pages/room.html"
							title="Room" class="dropdown-toggle" role="button"
							aria-haspopup="true" aria-expanded="false">預約訂房</a></li>
						<li class="dropdown"><a href="../pages/course.html"
							title="Course" class="dropdown-toggle" role="button"
							aria-haspopup="true" aria-expanded="false">線上課程</a> <i
							class="ddl-switch fa fa-angle-down"></i>
							<ul class="dropdown-menu">
								<li><a href="#" title="">教學類</a></li>
								<li><a href="#" title="">教學類</a></li>
							</ul></li>
						<li class="dropdown"><a href="../pages/article.html"
							title="Forum" class="dropdown-toggle" role="button"
							aria-haspopup="true" aria-expanded="false">文章/討論</a> <i
							class="ddl-switch fa fa-angle-down"></i>
							<ul class="dropdown-menu">
								<li><a href="#" title="">討論區</a></li>
								<li><a href="#" title="">討論區</a></li>
							</ul></li>
						<li><a href="../pages/contact-us.html" title="Contact Us">聯絡資訊</a></li>
					</ul>
				</div>
				<!--/.nav-collapse --> </nav>
				<!-- nav /- -->
			</div>
			<!-- Container /- -->
		</div>
		<!-- Menu Block /- --> </header>
		<!-- Header /- -->
		<!--	內容開始	-->
		<main> <!-- Page Banner -->

		<div class="page-banner container-fluid no-padding">
			<!-- Container -->
			<div class="container">
				<div class="banner-content">
					<h3>預約訂房</h3>
					<p>our vision is to be Earth's most customer centric company</p>
				</div>
				<ol class="breadcrumb">
					<li><a href="../index.html" title="Home">首頁</a></li>
					<li class="active">預約訂房</li>
				</ol>
			</div>
			<!-- Container /- -->
		</div>
		<!-- Page Banner /- --> <!-- Clients --> <!-- Container --> <c:forEach
			var="room" items="${listOfRooms}">
			<div class="container">
				<!-- Content Area -->
				<div class="content-area blog-section col-md-8 col-sm-8 col-xs-12">
					<div class="type-post">
						<div class="col-md-5 col-sm-12 col-xs-12 no-padding entry-cover">


							<a><img
								src="<c:url value="../images/room/${room.roomImage}.jpg"/>"
								class="image" alt="${room.price}" id="${room.roomId}"></a> <span
								class="post-date"><a href="#"><i
									class="fa fa-calendar-o"></i>July 16</a></span>
						</div>
						<div class="col-md-7 col-sm-12 col-xs-12 blog-content">
							<h3 class="entry-title">
								<a title="new Collectios are imported In Our shop."
									href="blog-post.html">${room.roomId} </a>
							</h3>
							<div class="entry-meta">
								<span class="post-like"><a href="#" title="224 Likes"><i
										class="fa fa-heart-o"></i>${room.roomType}</a></span> <span
									class="post-admin"><i class="fa fa-user"></i>${room.price}<a
									href="#" title="Max">Max</a></span>
							</div>
							<div class="entry-content">
								<p>The weather started getting rough - the tiny ship was
									tossed. If not for the courage of the fearless If not for the
									courage of the Minnow would be lost.</p>
								<a href="blog-post.html" title="Read More" class="read-more">Read
									More<i class="fa fa-long-arrow-right"></i>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>




		<div
			class="container-fluid no-left-padding no-right-padding woocommerce-checkout">
			<!-- Container -->
			<div class="container">

				<!-- Billing -->
				<div class="checkout-form">

					<div class="col-md-12 col-sm-12 col-xs-12">
						<h3>訂房填表</h3>
						<form action="<c:url value="/reserve.room"/>" method="post">
							<div class="billing-field">

								<div class="col-md-4 form-group">
									<label>入住人</label> <input class="form-control" type="text"
										name="name" value="${member.name}">
								</div>
								<div class="col-md-4 form-group">
									<label>email</label> <input class="form-control" type="text"
										name="email" value="${member.email}">
								</div>
								<div class="col-md-4 form-group">
									<label>電話</label> <input class="form-control" type="text"
										name="phone" value="${member.phone}">
								</div>

								<div class="col-md-4 form-group">
									<label>房間ID(暫)</label> <input class="form-control" type="text"
										name="roomId" id="roomId" readonly="readonly">
								</div>
								<div class="col-md-4 form-group">
									<label>入住日</label> <input class="form-control" type="text"
										name="beginDate" id="beginDate">
								</div>
								<div class="col-md-4 form-group">
									<label>退房日</label> <input class="form-control" type="text"
										name="endDate" id="endDate">
								</div>
								<div class="col-md-5 form-group">
									<label>總價</label> <input class="form-control" type="text"
										name="totalPrice" id="totalPrice" readonly="readonly">
								</div>
								<div class="col-md-5 form-group">
									<label>&#160;</label> <input class="form-control" type="submit"
										name="RoomReservation" value="送出訂單">
								</div>
							</div>
						</form>
					</div>

				</div>
				<!-- Billing /- -->
			</div>
			<!-- Container /- -->
		</div>





		<!-- Content Area /- --> <!-- Clients /- --> </main>
		<!--	內容結束	-->
		<!-- Footer Main 1 -->
		<footer id="footer-main"
			class="footer-main footer-main-1 services-section container-fluid">
		<!-- Container -->
		<div class="container">
			<div class="row">
				<div class="section-header">
					<h3>聯絡我們</h3>
					<p>Contact-us</p>
				</div>
				<!-- Widget About -->
				<aside class="col-md-6 col-sm-6 col-xs-12 ftr-widget widget_about">

				<a href="index.html" title="Max Shop">P<span>ostnatal</span> C<span>are</span>
					C<span>enter</span></a>
				<div class="info">
					<p>
						<i class="icon icon-Pointer"></i>106台北市大安區復興南路一段390號 2樓
					</p>
					<p>
						<i class="icon icon-Phone2"></i><a href="tel:(11)1234567890"
							title="Phone" class="phone">(02) 6631 6666</a>
					</p>
					<p>
						<i class="icon icon-Imbox"></i><a href="mailto:info@maxshop.com"
							title="info@maxshop.com">eeit98team05@outlook.com</a>
					</p>
				</div>

				</aside>
				<!-- Widget About /- -->
				<!-- Widget Newsletter -->
				<form action="#" method="post" name="contact-form"
					class="col-md-6 col-sm-6 col-xs-12" id="main-contact-form ">
					<div class="form-group">
						<input type="email" required="" placeholder="Email"
							class="form-control" name="email">
					</div>
					<div class="form-group">
						<textarea required="" placeholder="Message" rows="8"
							class="form-control" name="message"></textarea>
					</div>
					<button class="btn btn-default form-control footer-send "
						type="button">
						<i class="fa fa-paper-plane-o"></i> 送出
					</button>
				</form>
				<div class="copyright-section">
					<div class="coyright-content">
						<p>© PCC. all rights reserved</p>
					</div>
					<ul>
						<li><a href="#" title="Facebook"><i
								class="fa fa-facebook"></i></a></li>
						<li><a href="#" title="Twitter"><i class="fa fa-twitter"></i></a></li>

					</ul>
				</div>
				<!-- Widget Newsletter /- -->
			</div>
		</div>
		<!-- Container /- --> </footer>
		<!-- Footer Main 1 -->

	</div>

	<!-- JQuery v1.12.4 -->
	<script src="../js/jquery.min.js"></script>

	<!-- Library - Js -->
	<script src="../libraies/lib.js"></script>
	<script src="../libraies/jquery.countdown.min.js"></script>

	<!-- RS5.0 Core JS Files -->
	<script type="text/javascript"
		src="../revolution/js/jquery.themepunch.tools.min.js"></script>
	<script type="text/javascript"
		src="../revolution/js/jquery.themepunch.revolution.min.js"></script>
	<script type="text/javascript"
		src="../revolution/js/extensoins/revolution.extension.video.min.js"></script>
	<script type="text/javascript"
		src="../revolution/js/extensoins/revolution.extension.slideanims.min.js"></script>
	<script type="text/javascript"
		src="../revolution/js/extensoins/revolution.extension.layeranimation.min.js"></script>
	<script type="text/javascript"
		src="../revolution/js/extensoins/revolution.extension.navigation.min.js"></script>
	<script type="text/javascript"
		src="../revolution/js/extensoins/revolution.extension.actions.min.js"></script>

	<!-- Library - Google Map API -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDW40y4kdsjsz714OVTvrw7woVCpD8EbLE"></script>

	<!-- Library - Theme JS -->
	<script src="../js/functions.js"></script>

</body>
</html>

