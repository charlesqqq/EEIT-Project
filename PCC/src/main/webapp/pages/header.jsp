<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Header -->
<header class="header-section container-fluid no-padding">
	<!-- Menu Block -->
	<div class="container-fluid no-padding menu-block">
		<!-- Container -->
		<div class="container">
			<!-- nav -->
			<nav class="navbar navbar-default ow-navigation">
				<div class="navbar-header">
					<button aria-controls="navbar" aria-expanded="false"
						data-target="#navbar" data-toggle="collapse"
						class="navbar-toggle collapsed" type="button">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a href="index.html" class="navbar-brand">PCC</a>
				</div>
				<!-- Menu Icon -->
				<div class="menu-icon">
					<div class="search">
						<a href="#" id="search" title="Search"><i
							class="icon icon-Search"></i></a>
					</div>
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
										src="images/product-wishlist-2.jpg">Flying Ninja
								</a> <span class="quantity">2 &#215; <span class="amount">Rs.12.00</span></span>
								</li>
								<li class="mini_cart_item"><a title="Remove this item"
									class="remove" href="#">&#215;</a> <a href="#"
									class="shop-thumbnail"> <img alt="poster_2_up"
										class="attachment-shop_thumbnail"
										src="images/product-wishlist-2.jpg">Flying Ninja
								</a> <span class="quantity">2 &#215; <span class="amount">Rs.12.00</span></span>
								</li>
								<li class="button"><a href="#" title="View Cart">View
										Cart</a> <a href="#" title="Check Out">Check out</a></li>
							</ul></li>
						<li><a href="#" title="Like"><i class="icon icon-Heart"></i></a></li>
					</ul>
					<div class="login cart">
						<a href="#" id="member" title="User" data-toggle="modal"
							data-target="#exampleModal" onclick="login();">
							<i id="user" class="icon icon-User"></i>
						</a>
						
						<ul class="droplogin dropdown-menu no-padding">
						<li id="who-is-login" class="button logbtn">
							<a id="log-log" href="#" data-toggle="modal"
							data-target="#exampleModal" onclick="login();">登入</a> 
							<a id="log-reg" href="/PCC/pages/registy.jsp">註冊</a>
							<a id="log-cen" onclick="" href="/PCC/pages/center.jsp" style="display:none;">會員中心</a>
							<a id="log-out" onclick="" href="#" style="display:none;">登出</a>
						</li>
						</ul>
<!-- 						<ul class="dropdown-menu no-padding droplogin "> -->
<!-- 							<li class="button"><a href="#" title="Login">登入</a></li> -->
<!-- 							<li class="button"><a href="#" title="Registy">註冊</a></li> -->
<!-- 						</ul> -->


					</div>
				</div>



				<!-- Menu Icon /- -->
				<div class="navbar-collapse collapse navbar-right" id="navbar">
					<ul class="nav navbar-nav">

						<li><a href="<c:url value="/index.jsp"/>" title="Home"
							class="dropdown-toggle" role="button" aria-haspopup="true"
							aria-expanded="false">首頁</a></li>
						<li><a href="pages/reservation.html" title="Reservation">線上預約</a></li>
						<li><a href="pages/partner.html" title="Partner">服務夥伴</a></li>
						<li class="dropdown"><a href="pages/shop.html" title="Shop"
							class="dropdown-toggle" role="button" aria-haspopup="true"
							aria-expanded="false">購物商城 </a> <i
							class="ddl-switch fa fa-angle-down"></i>
							<ul class="dropdown-menu">
								<li><a href="#" title="">商品類</a></li>
								<li><a href="#" title="">商品類</a></li>
								<li><a href="#" title="">商品類</a></li>
							</ul></li>
						<li class="dropdown"><a href="pages/room.html" title="Room"
							class="dropdown-toggle" role="button" aria-haspopup="true"
							aria-expanded="false">預約訂房</a></li>
						<li class="dropdown"><a
							href="<c:url value="/pages/course.jsp"/>" title="Course"
							class="dropdown-toggle" role="button" aria-haspopup="true"
							aria-expanded="false">媽咪教室</a> <i
							class="ddl-switch fa fa-angle-down"></i>
							<ul class="dropdown-menu">
								<li><a href="<c:url value="/pages/startClass.jsp"/>">我要開課</a></li>
								<li><a href="#">Baby課程</a></li>
								<li><a href="#">親子課程</a></li>
								<li><a href="#">產後課程</a></li>
							</ul></li>
						<li class="dropdown"><a
							href="<c:url value="/showByOrder.forum?order=date"/>"
							title="Forum" class="dropdown-toggle" role="button"
							aria-haspopup="true" aria-expanded="false">文章/討論</a> <i
							class="ddl-switch fa fa-angle-down"></i>
							<ul class="dropdown-menu">
								<li><a
									href="<c:url value="/showByOrder.forum?order=likes"/>">熱門文章</a></li>
								<li><a href="<c:url value="/showAll.forum?category=懷孕討論"/>">懷孕討論</a></li>
								<li><a href="<c:url value="/showAll.forum?category=育兒討論"/>">育兒討論</a></li>
								<li><a href="<c:url value="/showAll.forum?category=心情分享"/>">心情分享</a></li>
							</ul></li>
						<li><a href="pages/contact-us.html" title="Contact Us">聯絡資訊</a></li>
					</ul>
				</div>


				<!--/.nav-collapse -->
			</nav>
			<!-- nav /- -->
			<!-- Search Box -->
			<div class="search-box">
				<span><i class="icon_close"></i></span>
				<form>
					<input type="text" class="form-control" placeholder="請輸入關鍵字..." />
				</form>
			</div>
			<!-- Search Box /- -->
		</div>
		<!-- Container /- -->
	</div>
	<!-- Menu Block /- -->
</header>
<!-- Header /- -->