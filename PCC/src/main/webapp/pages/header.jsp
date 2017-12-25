<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="<c:url value="/js/login.js"/>"></script>

<!-- jquery -->
<script src="../js/jquery.min.js"></script>
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
										<!-- 刪除的X --> <a title="Remove this item" class="remove"
										href="#">&#215;</a> <!-- /刪除的X --> <!-- 圖案+文字 --> <a href="#"
										class="shop-thumbnail">
										 <img alt="poster_2_up" class="attachment-shop_thumbnail"											 
											src="/PCC/images/product-wishlist-2.jpg"  />
											${cart.value.productName}
									</a> <!-- /圖案+文字 --> <span class="quantity"> <!-- 數量 --> <span
											class="cartSpan" id="${cart.value.productId}span">${cart.value.quantity}</span>
											&#215; <!-- /數量 --> <!-- 單價 --> <span class="amount">Rs.
												${cart.value.price}</span> <!-- 單價 -->
									</span> <!-- /圖案+文字 -->
									</li>
								</c:forEach>


								<!-- item X -->
								<c:forEach var="cartItem" items="${products}">
									<li class="mini_cart_item" style="display: none"
										id="${cartItem.productId}"><a title="Remove this item"
										class="remove" href="#">&#215;</a> <a href="#"
										class="shop-thumbnail"> <img alt="poster_2_up"
											class="attachment-shop_thumbnail"
											src="../images/product-wishlist-1.jpg">
											${cartItem.productName}
									</a> <span class="quantity"><span class="cartSpan"
											id="${cartItem.productId}span">0</span> &#215; <span
											class="amount">Rs. ${cartItem.price}</span> </span></li>
								</c:forEach>
								<!-- /item X -->

								<!-- 前往購物車或結帳 -->

								<li class="button" style="display: none" id="cartButtonLi">

									<a id="toCartA" title="View Cart" href="/PCC/pages/cart.jsp">View
										Cart</a> <a title="Check Out" href="/PCC/pages/check.jsp">Check out</a>


								</li>
								<!--/ 前往購物車或結帳 -->
							</ul> <!-- /拉下選單的部分 -->


						</li>
						<!-- 購物車底部 -->


						<li style="display: none"><a href="#" title="Like"><i
								class="icon icon-Heart"></i></a></li>
						<li style="display: none"><a href="#" title="User"><i
								class="icon icon-User"></i></a></li>
					</ul>




					<div class="login">
						<a href="#" id="member" title="User" data-toggle="modal"
							data-target="#exampleModal" onclick="login();"> <i
							class="icon icon-User"></i>
						</a>
						<!-- 						<ul class="dropdown-menu no-padding dropdown-login "> -->
						<!-- 							<li class="button"><a href="#" title="Login">登入</a></li> -->
						<!-- 							<li class="button"><a href="#" title="Registy">註冊</a></li> -->
						<!-- 						</ul> -->
					</div>
				</div>

				<!-- User Login Modal -->
				<div class="modal fade" id="exampleModal" tabindex="-1"
					role="dialog" aria-labelledby="exampleModalLabel"
					aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">登入</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<form id="formid">
									<div class="form-group">
										<label for="memberId" class="col-form-label">帳號:</label> <input
											type="text" class="login-pop" id="memberId" name="memberId">
										<div id="memberId-error"></div>
									</div>
									<div class="form-group">
										<label for="password" class="col-form-label">密碼:</label> <input
											type="password" class="form-control login-pop" id="password"
											name="password">
										<div id="password-error"></div>
										<!-- 												<textarea class="form-control" id="message-text"></textarea> -->
									</div>
								</form>
							</div>

							<!-- google -->
							<div class="g-signin2" data-onsuccess="onSignIn"></div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">取消</button>
								<button type="button" id="sub" class="btn btn-primary">登入</button>
							</div>
						</div>
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
						<li class="dropdown"><a href="/PCC/pages/shop-2.jsp" title="Shop"
							class="dropdown-toggle" role="button" aria-haspopup="true"
							aria-expanded="false">購物商城 </a> <i
							class="ddl-switch fa fa-angle-down"></i>
							<ul class="dropdown-menu">
								<!-- 12/18 修改成功..>0< -->
								<c:forEach var="category" items="${categorys}">
								
									<li class="categoryli">
																		
									<a href="#" title="">${category.categoryName}</a>
									<form action='<c:url value="/searchCatagory.shopping"/>' method="get">
									<input type="text" name="category" value="${category.categoryName}" hidden />
									</form>
			
									</li>
								
								</c:forEach>
								<!-- /12/18 修改成功..>0< -->
							</ul></li>
						<li class="dropdown"><a href="pages/room.html" title="Room"
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


<script type="text/javascript">
	$(document).ready(function() {

		// 按下X除去購物車物件
		$(".remove").click(function() {
			var parent = $(this).parent(".mini_cart_item");
			var parentId = parent.attr("id").split("SS")[0];
			console.log("點到啦"+parentId);

		
			$.ajax({
				url : "/PCC/eliminate.shopping",
				type : "POST",
				data : {"productId":parentId} ,
				success : function(data) {
					$("#"+parentId+"span").text("0");
					console.log($("#"+parentId+"span").text());
					ViewCart();
					parent.css("display", "none");
			
				}
			});
		
		});

	});

	function ViewCart() {
		var sum = 0;
		$(".cartSpan").each(function() {
			var number = parseInt($(this).text());
			console.log(number);
			sum = sum + number;
		});
		if (sum == 0) {
			$("#cartButtonLi").css("display", "none");

		} else {
			$("#cartButtonLi").css("display", "");
		}

	}
</script>

