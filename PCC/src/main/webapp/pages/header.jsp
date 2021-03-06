<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="<c:url value="/js/login.js"/>"></script>

<!-- jquery -->
<!-- <script src="../js/jquery.min.js"></script> -->
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

					<a href="/PCC/index.jsp" class="navbar-brand">PCC</a>
				</div>


				<!-- Menu Icon -->
				<div class="menu-icon">
					<div class="search">
						<a href="#" id="search" title="Search"><i
							class="icon icon-Search"></i></a>
					</div>

					<ul class="cart">


						<!-- 購物車開始 12/20 完成-->
						<li>
							<!-- 購物車的圖 --> <a aria-expanded="true" aria-haspopup="true"
							data-toggle="dropdown" id="cart" class="btn dropdown-toggle"
							title="Add To Cart" href="/PCC/pages/cart.jsp"> <i
								class="icon icon-ShoppingCart"></i></a> <!-- /購物車的圖 --> <!-- 拉下選單的部分 -->
							<ul class="dropdown-menu no-padding" id="dropdownCart">
								<c:forEach var="cart" items="${addToCart}">
									<li class="mini_cart_item" id="${cart.value.productId}SS">
										<!-- 刪除的X --> 
										<a title="Remove this item" class="remove" href="#">&#215;</a> 
										<!-- /刪除的X --> 
										<!-- 圖案+文字 --> 
										<a  class="shop-thumbnail"> 
											<img alt="poster_2_up" class="attachment-shop_thumbnail" src="${cart.value.pictureAscii}" width="60px" height="62px"  />
												<span class="spanCartA">${cart.value.productName}</span>
											
											<!-- 隱藏的form -->
										<form action="/PCC/productId.shopping" method="get" hidden>
												<input type="text" name="productId" value="${cart.value.productId}" hidden>
										</form>
											<!-- /隱藏的form -->	
										</a>
									 	<!-- /圖案+文字 --> 
														
									
										<span class="quantity">
										 	<!-- 數量 --> 
										 	<span class="cartSpan" id="${cart.value.productId}span">${cart.value.quantity}</span>
											&#215; 
											<!-- /數量 --> 
											<!-- 單價 --> 
											<span class="amount"><span>$</span>${cart.value.price}</span>
											<!-- 單價 -->
										</span> 
																
									</li>
									
								</c:forEach>


								<!-- item X -->
								<c:forEach var="cartItem" items="${products}">
									<li class="mini_cart_item" style="display: none"
										id="${cartItem.productId}"><a title="Remove this item"
										class="remove" href="#">&#215;</a> <a class="shop-thumbnail"> <img alt="poster_2_up"
											class="attachment-shop_thumbnail"
											src="${cartItem.pictureAscii}" width="60px" height="62px">
											<span class="spanCartA">${cartItem.productName}</span>
											
										<form  action="/PCC/productId.shopping" method="get" hidden>
											<input type="text" name="productId" value="${cartItem.productId}" hidden/>

										</form>			
											
									</a> 
									
									
									
									
									<span class="quantity"><span class="cartSpan"
											id="${cartItem.productId}span">0</span> &#215; <sapn>$</sapn><span
											class="amount"> ${cartItem.price}</span> </span></li>

											
											
								</c:forEach>
								<!-- /item X -->

								<!-- 前往購物車或結帳 -->

								<li class="button" style="display: none" id="cartButtonLi">

									<a id="toCartA" title="View Cart" href="/PCC/pages/cart.jsp">View
										Cart</a> 
<!-- 										<a title="Check Out" href="/PCC/pages/check.jsp">Check -->
<!-- 										out</a> -->


								</li>
								<!--/ 前往購物車或結帳 -->
							</ul> <!-- /拉下選單的部分 -->


						</li>
						<!-- 購物車底部 -->


						<li style="display: none"><a href="#" title="Like"><i
								class="icon icon-Heart"></i></a></li>
					</ul>
					<div class="login cart">
						<a href="#" id="member" title="User" data-toggle="modal"
							data-target="#exampleModal">
							<i id="user" class="icon icon-User"></i>
						</a>

						<ul id="login-back" class="droplogin dropdown-menu no-padding">

						<li id="who-is-login" class="button logbtn">
							<a id="log-log" href="#" data-toggle="modal"
							data-target="#exampleModal">登入</a> 
							<a id="log-reg" href="/PCC/pages/registy.jsp">註冊</a>
							<a id="log-cen" href="/PCC/pages/center.jsp">會員中心</a>
							<a id="log-out" href="#" class="change-ds">登出</a>
						</li>
						</ul>
					</div>

				</div>



				<!-- Menu Icon /- -->
				<div class="navbar-collapse collapse navbar-right" id="navbar">
					<ul class="nav navbar-nav">

						<li><a href="<c:url value="/index.jsp"/>" title="Home"
							class="dropdown-toggle" role="button" aria-haspopup="true"
							aria-expanded="false">首頁</a></li>
						<li><a href="<c:url value="/fullServantList.match"/>"
							title="Reservation">線上預約</a></li>
						<li><a href="<c:url value="/servantList.match"/>"
							title="Partner">服務夥伴</a></li>
						<li class="dropdown">
						<a title="Shop" id="shoppingMall"
							class="dropdown-toggle" role="button" aria-haspopup="true"
							aria-expanded="false">購物商城 </a> 
							
							<i
							class="ddl-switch fa fa-angle-down"></i>
							<form id="shoppingMallForm" action="/PCC/star.shopping" method="post">
								<input name="pageName" type="text" value="searchPage" hidden /> 
								<input id="startInput" type="text" value="lorded" hidden />
								<input id="startCategory" type="text" name="categoryName" value="一開始" hidden />	
							</form>
							
							<ul id="categoryUL" class="dropdown-menu">
								<!-- 12/18 修改成功..>0< -->

								<!-- 								<li class="categoryli"><a href="#" title="">藥膳</a>   -->
								<%-- 									<form action='<c:url value="/searchCatagory.shopping"/>' --%>
								<!-- 										method="get"> -->
								<!-- 										<input type="text" name="category" value="藥膳" hidden /> -->
								<!-- 									</form></li> -->
								<!-- /12/18 修改成功..>0< -->
							</ul></li>
						<li class="dropdown"><a
							href="<c:url value="/pages/showRoom.jsp"/>" title="Room"
							class="dropdown-toggle" role="button" aria-haspopup="true"
							aria-expanded="false">預約訂房</a></li>
						<li class="dropdown"><a
							href="<c:url value="/showAllClazz.clazz"/>" title="Course"
							class="dropdown-toggle" role="button" aria-haspopup="true"
							aria-expanded="false">媽咪學苑</a> <i
							class="ddl-switch fa fa-angle-down"></i></li>
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
						<li><a href="#footer-main" title="Contact Us">聯絡資訊</a></li>
						<li id="small-center"><a href="/PCC/pages/center.jsp" title="Center">會員中心</a></li>
						<li id="small-logout"><a href="#" title="logout">登出</a></li>
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