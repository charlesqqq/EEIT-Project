<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>PCC - Shop</title>
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
<!-- css -->
<link rel="stylesheet" type="text/css" href="../css/login.css">
</head>

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
						<form action="/PCC/searchProduct.shopping" method="get"
							id="searchForm">
							<input class="form-control" id="searchText" name="searchText"
								placeholder="Search You Wants Here . . ." type="text"> <span
								id="serch-btn" class="input-group-btn">
								<button class="btn btn-default" type="button">
									<i class="icon icon-Search"></i>
								</button>
							</span>
						</form>
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
										src="../images/product-wishlist-1.jpg">Flying Ninja
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
					<h3>購物商城</h3>
					<p>our vision is to be Earth's most customer centric company</p>
				</div>
				<ol class="breadcrumb">
					<li><a href="../index.html" title="Home">首頁</a></li>
					<li class="active">購物商城</li>
				</ol>
			</div>
			<!-- Container /- -->
		</div>
		<!-- Page Banner /- --> <!-- Product Section2 -->
		<div
			class="product-section product-section1 product-section2 container-fluid no-padding">
			<!-- Container -->
			<div class="container">
				<div class="row">
					<!-- Widget Area -->
					<div
						class="col-md-4 col-sm-4 col-xs-12 widget-area no-right-padding">
						<!-- Widget Search -->
						<aside class="widget widget_search">
						<h3 class="widget-title">Search</h3>
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="Search You Wants. . ."> <span
								class="input-group-btn">
								<button class="btn btn-search" title="Search" type="button">
									<i class="icon icon-Search"></i>
								</button>
							</span>
						</div>
						</aside>
						<!-- Widget Search /- -->
						<!-- Widget Categories -->
						<aside class="widget widget_categories">
						<h3 class="widget-title">Categories</h3>
						<ul>
							<li><a href="#" title="Beautiful Chairs">Beautiful
									Chairs <span>(5)</span>
							</a></li>
							<li><a href="#" title="Creative Designs">Creative
									Designs <span>(6)</span>
							</a></li>
							<li><a href="#" title="Trendy Products">Trendy Products
									<span>(4)</span>
							</a></li>
							<li><a href="#" title="Interior Products">Interior
									Products <span>(2)</span>
							</a></li>
							<li><a href="#" title="Popular Products">Popular
									Products <span>(8)</span>
							</a></li>
							<li><a href="#" title="Casual Shirts">Casual Shirts <span>(7)</span></a></li>
						</ul>
						</aside>
						<!-- Widget Categories /-  -->
						<!-- Widget Price -->
						<aside class="widget widget_price_filter">
						<h3 class="widget-title">filter by price</h3>
						<div class="price-filter">
							<div id="slider-range"></div>
							<div class="price-input">
								<span id="amount"></span> <span id="amount2"></span>
							</div>
							<a href="#" title="filter">Filter</a>
						</div>
						</aside>
						<!-- Widget Price /- -->
						<!-- Widget Latest Post -->
						<aside class="widget widget_latest_post">
						<h3 class="widget-title">recent posts</h3>
						<div class="latest-box">
							<div class="post-box">
								<a href="#"><img src="../images/latest-post-1.jpg"
									alt="Post"></a>
								<h5>
									<a href="#" title="need max shop.">I Phone 6s sales on</a>
								</h5>
								<div class="star-rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star-o"></i>
								</div>
								<span class="price"><del>$955</del>$789</span>
							</div>
						</div>
						<div class="latest-box">
							<div class="post-box">
								<a href="#"><img src="../images/latest-post-2.jpg"
									alt="Post"></a>
								<h5>
									<a href="#" title="need max shop.">mens casual footwear</a>
								</h5>
								<div class="star-rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star-o"></i>
								</div>
								<span class="price"><del>$185</del>$120</span>
							</div>
						</div>
						<div class="latest-box">
							<div class="post-box">
								<a href="#"><img src="../images/latest-post-3.jpg"
									alt="Post"></a>
								<h5>
									<a href="#" title="need max shop.">running shoes</a>
								</h5>
								<div class="star-rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star-o"></i>
								</div>
								<span class="price"><del>$150</del>$85</span>
							</div>
						</div>
						</aside>
						<!-- Widget Latest Post /- -->
						<!-- Widget Tags -->
						<aside class="widget widget_tags">
						<h3 class="widget-title">popular tags</h3>
						<div class="tags-box">
							<a href="#" title="Chairs">Chairs</a> <a href="#"
								title="Modern Designs">Modern Designs</a> <a href="#"
								title="Watches">Watches</a> <a href="#" title="Future">Future</a>
							<a href="#" title="Popular Products">Popular Products</a> <a
								href="#" title="Trendy">Trendy</a> <a href="#" title="Interier">Interier</a>
							<a href="#" title="Modern">Modern</a>
						</div>
						</aside>
						<!-- Widget Tags -->
					</div>
					<!-- Widget Area /- -->

					<!-- Content Area -->

					<div
						class="col-md-8 col-sm-7 col-xs-12 content-area product-section2 no-left-padding">
						<div>
							<h1>
								<span itemprop="name">【五折價$295】糖罐子坑條短版針織衫→預購【E46546】</span> <span><img
									alt="預購"
									src="https://s.yimg.com/f/i/tw/mall/yps/ico_preorder.gif"
									align="absmiddle" /></span>
							</h1>
							<p>
								<span itemprop="description">1024
									短版設計坑條針織搭配窄管寧褲化身韓妞STYLE~</span>
							</p>

						</div>
						<table class="infolist">
							<colgroup>
								<col width="19%"></col>
								<col width="81%"></col>
							</colgroup>

							<tr class="webprice">
								<th scope="row">原價</th>
								<td><span class="price">500元</span></td>
							</tr>
							<tr class="cp_promo">
								<th scope="row">特價</th>
								<td><span class="price">295元</span></td>
							</tr>

							<tr class="js-cccart">
								<th scope="row">付款方式</th>
								<td>
									<ul class="list paytypes clearfix">
										<li>
											<div class="paytype">
												信用卡 <img
													src="https://s.yimg.com/f/i/tw/mall/yps/ico_credi_201008.png"
													alt="接受信用卡刷卡">
											</div>
										</li>
										<li>
											<div class="paytype">
												ATM轉帳 <img
													src="https://s.yimg.com/f/i/tw/mall/yps/ico_atm_0109.gif"
													alt="接受ATM轉帳付款">
											</div>
										</li>
										<li class="familymart">
											<div class="paytype">
												全家付款取貨 <img
													src="https://s.yimg.com/qs/mall/yps/ico_famimart.gif"
													alt="全家付款取貨">
											</div>
										</li>
										<li class="sevenmart">
											<div class="paytype">
												7-11付款取貨 <img
													src="https://s.yimg.com/f/i/tw/mall/yps/ico_711.gif"
													alt="接受超商付款取貨">
											</div>
										</li>
									</ul>
								</td>
							</tr>
							<tr>

								<th scope="row">交貨方式</th>
								<td>
									<ul>
										<li><a href="#" title="貨運 / 宅配" class="trans"
											hpp="r_shipfee">貨運 / 宅配 (購物滿599元免運費) </a>、 <a href="#"
											title="7-11取貨付款" class="trans" hpp="r_shipfee">7-11取貨付款
												(購物滿599元免運費) </a>、 <a href="#" title="全家取貨付款" class="trans"
											hpp="r_shipfee">全家取貨付款 (購物滿599元免運費) </a></li>
									</ul>
								</td>
							</tr>

							<tr>
								<th scope="row">尺寸與規格</th>
								<td><select name="spec_id">
										<option selected>請選擇</option> pt
								</select></td>
							</tr>

						</table>


						<div>
							<button class="button button-default"
								data-ylk="sec:buyinfo;slk:立即購買;" id="e2e-item-checkout-top"
								hpp="add_cart_top" OnClick="ywaAddToCart('p0000145205549');"
								type="submit" value="我要購買">立即購買</button>
							<button class="button button-white"
								data-ylk="sec:buyinfo;slk:加入購物車;" id="e2e-item-add2cart-top"
								type="button">
								<span class="sprite sprite-cart-default"></span> <span>加入購物車</span>
							</button>
						</div>


						<!-- [WD] inc/ps_item_tab.html//-->
						<div id="ypsitb" class="ypsmodule ypstab">
							<div class="hd"></div>
							<div class="bd clearfix">
								<ul>
									<li class="on"><span>商品詳細說明</span> <em></em></li>
								</ul>
							</div>
							<div class="ft"></div>
						</div>
						<!-- [WD] inc/ps_item_tab.html//-->
						<!-- [WD] inc/ps_item_des.html//-->
						<div id="ypsid" class="ypsmodule">
							<div class="hd">
								<a name="ypsid"></a>
							</div>
							<div class="bd clearfix">
								<div class="pic">
									<img
										src="https://s.yimg.com/ut/api/res/1.2/J5mLoUO33x6tp04Oy4Q2bw--~B/YXBwaWQ9eXR3bWFsbDtoPTYwMDtxPTgxO3c9NjAw/http://imgcld.zenfs.com:80/ps_image_prod/item/p0000145205549-item-2756xf3x0600x0600-m.jpg" />
									<img
										src="https://s.yimg.com/ut/api/res/1.2/LdJRYADhc0L8048kvIUc9Q--~B/YXBwaWQ9eXR3bWFsbDtoPTYwMDtxPTgxO3c9NjAw/http://imgcld.zenfs.com:80/ps_image_prod/item/p0000145205549-item-7335xf3x0600x0600-m.jpg" />
									<img
										src="https://s.yimg.com/ut/api/res/1.2/RzTJWjQN2piRWETc7tnKlg--~B/YXBwaWQ9eXR3bWFsbDtoPTYwMDtxPTgxO3c9NjAw/http://imgcld.zenfs.com:80/ps_image_prod/item/p0000145205549-item-0100xf3x0600x0600-m.jpg"
										class="bigpic" />
								</div>
							</div>


							<div id="ypsudes">
								<div class="hd"></div>

								<div class="bd">

									<div class="desc">

										<!-- LONGDESC -->
										<style type="text/css">
#ypsudes {
	background-color: #ffffff;
}

#ypsudes {
	float: right;
}

#ypsudes {
	width: 1000px;
}

.style2 {
	border-collapse: collapse;
}

.style3 {
	text-align: center;
}

.style9 {
	color: #000000;
}

.style10 {
	font-size: x-small;
}

.style11 {
	text-align: left;
}

.style12 {
	text-align: center;
	font-size: x-small;
}

.ms-grid1-1000-main {
	border-left: .75pt solid black;
	border-right-style: none;
	border-top: .75pt solid black;
	border-bottom: .75pt solid black;
}

.style26 {
	text-align: center;
	color: #767676;
	border-left-style: none;
	border-right: .75pt solid black;
	border-top-style: none;
	border-bottom-style: none;
	background-color: #F8F5F5;
}

.style27 {
	text-align: center;
	color: #767676;
	border-left-style: none;
	border-right: .75pt solid black;
	border-top: .75pt solid black;
	border-bottom-style: none;
	background-color: #F8F5F5;
}

.style25 {
	text-align: center;
	color: #767676;
	border-left-style: none;
	border-right: .75pt solid black;
	border-top: .75pt solid black;
	border-bottom-style: none;
}
</style>
										<div align="center">
											<center id="yui_3_12_0_2_1511160630654_38">
												<br id="yui_3_12_0_2_1511160630654_43">-co

												<table height="1" class="style2" style="width: 100%;"
													cellpadding="0">
													br> 54_
													<tbody id="yui_3_12_0_2_1511160630654_39">
														<tr id="yui_3_12_0_2_1511160630654_40">
														</tr>
													</tbody>

													<tbody>
														<tr>
															<td class="style26" style="height: 25px;" colspan="8">試穿報告</td>
														</tr>
														<tr>
															<td class="style27" style="width: 173px; height: 25px;">身高</td>
															<td class="style27" style="width: 174px; height: 25px;">體重</td>
															<td class="style27" style="width: 174px; height: 25px;">胸圍</td>
															<td class="style27" style="width: 174px; height: 25px;">腰圍</td>
															<td class="style27" style="width: 174px; height: 25px;">臀圍</td>
															<td class="style27" style="width: 174px; height: 25px;">肩寬</td>
															<td class="style27" style="width: 174px; height: 25px;">建議尺寸</td>
															<td class="style27" style="width: 174px; height: 25px;">穿著感</td>
														</tr>
														<tr>
															<td class="style25" style="width: 173px;" rowspan="2">155-160</td>
															<td class="style25" style="width: 174px; height: 20px;">44</td>
															<td class="style25" style="width: 174px; height: 20px;">70(30吋)</td>
															<td class="style25" style="height: 20px;">61(24吋)</td>
															<td class="style25" style="width: 174px; height: 20px;">86.5(34吋)</td>
															<td class="style25" style="height: 20px;">39</td>
															<td class="style25" style="width: 174px; height: 20px;">
																F</td>
															<td class="style25" style="width: 174px; height: 20px;">舒適</td>
														</tr>
														<tr>
															<td class="style25" style="width: 174px; height: 20px;">53</td>
															<td class="style25" style="width: 174px; height: 20px;">86(34吋)</td>
															<td class="style25" style="height: 20px;">70(27.5吋)</td>
															<td class="style25" style="width: 174px; height: 20px;">97(38吋)</td>
															<td class="style25" style="height: 20px;">38</td>
															<td class="style25" style="width: 174px; height: 20px;">
																F</td>
															<td class="style25" style="width: 174px; height: 20px;">舒適</td>
														</tr>
														<tr>
															<td class="style25" style="width: 173px;" rowspan="4">161-165</td>
															<td class="style25" style="width: 174px; height: 21px;">48</td>
															<td class="style25" style="width: 174px; height: 21px;">81(32吋)</td>
															<td class="style25" style="height: 21px;">62(24.5吋)</td>
															<td class="style25" style="width: 174px; height: 21px;">88(35吋)</td>
															<td class="style25" style="height: 21px;">39</td>
															<td class="style25" style="width: 174px; height: 21px;">
																F</td>
															<td class="style25" style="width: 174px; height: 21px;">舒適</td>
														</tr>
														<tr>
															<td class="style25" style="width: 174px; height: 21px;">55</td>
															<td class="style25" style="width: 174px; height: 21px;">85(33.5吋)</td>
															<td class="style25" style="height: 21px;">67.5(26.5吋)</td>
															<td class="style25" style="width: 174px; height: 21px;">94(37吋)</td>
															<td class="style25" style="height: 21px;">40</td>
															<td class="style25" style="width: 174px; height: 21px;">
																F</td>
															<td class="style25" style="width: 174px; height: 21px;">舒適</td>
														</tr>
														<tr>
															<td class="style25" style="width: 174px; height: 21px;">58</td>
															<td class="style25" style="width: 174px; height: 21px;">91(36吋)</td>
															<td class="style25" style="height: 21px;">74(29吋)</td>
															<td class="style25" style="width: 174px; height: 21px;">97(38吋)</td>
															<td class="style25" style="height: 21px;">37</td>
															<td class="style25" style="width: 174px; height: 21px;">
																F</td>
															<td class="style25" style="width: 174px; height: 21px;">舒適</td>
														</tr>
														<tr>
															<td class="style25" style="width: 174px; height: 21px;">70</td>
															<td class="style25" style="width: 174px; height: 21px;">96(38吋)</td>
															<td class="style25" style="height: 21px;">89(35吋)</td>
															<td class="style25" style="width: 174px; height: 21px;">107(42吋)</td>
															<td class="style25" style="width: 174px; height: 21px;">41</td>
															<td class="style25" style="width: 174px; height: 21px;">
																F</td>
															<td class="style25" style="width: 174px; height: 21px;">舒適</td>
														</tr>
														<tr>
															<td class="style25" style="width: 173px; height: 21px;">166-170</td>
															<td class="style25" style="width: 174px; height: 21px;">65</td>
															<td class="style25" style="width: 174px; height: 21px;">87(34吋)</td>
															<td class="style25" style="height: 21px;">74(29吋)</td>
															<td class="style25" style="width: 174px; height: 21px;">101(40吋)</td>
															<td class="style25" style="width: 174px; height: 21px;">41</td>
															<td class="style25" style="width: 174px; height: 21px;">
																F</td>
															<td class="style25" style="width: 174px; height: 21px;">舒適</td>
														</tr>
													</tbody>
												</table>

												<p align="center">
													<font size="2">＊新品上市＊</font>
												</p>
												<font size="2">
													<p align="center">短版設計坑條針織搭配窄管寧褲化身韓妞STYLE~</p>
													<p class="style3">若有彩妝、香水等沾染或吊牌一經拆除後視同缺件，</p>
													<p class="style3">恕無法接受退換貨服務喔！</p>
												</font> </a>
												<p align="center">
													<a rel="nofollow"><font color="#767676" size="2"></font></a>
													<font color="#767676" size="2"><a rel="nofollow">
															<strong><span class="style9">ＰＳ</span></strong><span
															class="style9">：麻豆的項鍊及配件是另外搭配的唷～</span>
													</a></font>
												</p>
												<div class="style11">
													<div class="style11">
														<font color="#ff6666" size="2"> </font> <font size="2">商品狀況：現貨＋預購
														</font>
													</div>
													<p class="style11">
														<font size="2"> 商品材質：針織＋聚酯纖維(彈性不錯)</font>
													</p>
													<p class="style11">
														<font size="2"> 尺寸描述：</font> <font color="#5b5b5b"
															size="2"> </font>
													</p>
												</div>
												<table height="1" style="width: 100%;">
													<tbody>
														<tr>
															<td height="30" align="middle" class="style12"
																style="width: 178px;" bgcolor="#f8f5f5">肩寬</td>
															<td height="30" align="middle" class="style12"
																style="width: 179px;" bgcolor="#f8f5f5">袖長</td>
															<td height="30" align="middle" class="style12"
																style="width: 179px;" bgcolor="#f8f5f5">袖圍</td>
															<td height="30" align="middle" class="style12"
																style="width: 179px;" bgcolor="#f8f5f5">袖口</td>
															<td height="30" align="middle" class="style12"
																style="width: 179px;" bgcolor="#f8f5f5">胸寬</td>
															<td height="30" align="middle" class="style12"
																style="width: 179px;" bgcolor="#f8f5f5">衣長</td>
															<td height="30" align="middle" class="style12"
																style="width: 179px;" bgcolor="#f8f5f5">下襬</td>
														</tr>
														<tr>
															<td height="30" align="middle" class="style10"
																style="width: 178px;" bgcolor="#ffffff">無</td>
															<td height="30" align="middle" class="style10"
																style="width: 179px;" bgcolor="#ffffff">領至袖口55</td>
															<td height="30" align="middle" class="style10"
																style="width: 179px;" bgcolor="#ffffff">29</td>
															<td height="30" align="middle" class="style10"
																style="width: 179px;" bgcolor="#ffffff">6</td>
															<td height="30" align="middle" class="style10"
																style="width: 179px;" bgcolor="#ffffff">56</td>
															<td height="30" align="middle" class="style10"
																id="yui_3_12_0_2_1511160630654_41" style="width: 179px;"
																bgcolor="#ffffff">48</td>
															<td height="30" align="middle" class="style10"
																style="width: 179px;" bgcolor="#ffffff">42</td>
														</tr>
														<tr>
															<td height="30" align="middle" class="style10"
																style="width: 475px;" bgcolor="#f8f5f5" colspan="3">
																內裡</td>
															<td height="30" align="middle" class="style10"
																style="width: 634px;" bgcolor="#f8f5f5" colspan="4">
																顏色</td>
														</tr>
														<tr>
															<td height="30" align="middle" class="style10"
																style="width: 475px;" bgcolor="#ffffff" colspan="3">
																無</td>
															<td height="30" align="middle" class="style10"
																style="width: 634px;" bgcolor="#ffffff" colspan="4">
																磚橘／淺灰／黑</td>
														</tr>
													</tbody>
												</table>
												<p align="right">
													<font size="2">單位：公分 （以上為未撐開平量尺寸）</font>
												</p>
												<p class="style3">
													<font size="2">關於尺寸部分 我們已努力為水水準確測量~
														但因每批到貨商品尺寸顏色會略有落差 約在正負2cm為正常範圍唷~</font>
												</p>
												<p class="style3"></p>
												<p>
													<img
														src="https://ec.yimg.com/ec?url=http%3A%2F%2Fwww.jacky5318.com%2Fpic%2Fzgoods%2Fnotice12.jpg&t=1513309800&ttl=400&mas=600&sig=yhHPF.jUnMwIieV8RG2D9w--~D"
														border="0">
												</p>
											</center>
										</div>
										<p align="center">
											<font color="#767676" size="2"><a rel="nofollow">
													<strong><span class="style6"> </span></strong>
											</a></font>
										</p>
										<font color="#767676" size="2"><a rel="nofollow"><strong>
											</strong></a></font> <font color="#767676" size="2"><a rel="nofollow"><strong>
											</strong></a></font> <font color="#767676" size="2"><a rel="nofollow"><strong>
											</strong></a></font>
										<!-- LONGDESC -->
									</div>
								</div>
								<div class="ft"></div>
							</div>
							<!-- Container /- -->
						</div>
					</div>
					<!-- Product Section2 /- -->
		</main>
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
	<!-- login  -->
	<!-- 	<script type="text/javascript" src="../js/login.js"></script> -->
	<script type="text/javascript">
		$(document).ready(function() {
			$('#serch-btn').click(function() {
				alert("已點");
				var searchText = $('#searchText').val();
				alert(searchText);
				if (searchText.trim().length == 0) {
					alert('請輸入搜尋條件');
					$('#filter').val('').focus();
				} else {
					$('#searchForm').submit();
				}
			})

		})
	</script>
</body>
</html>



