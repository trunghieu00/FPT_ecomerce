<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- JSTL -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!-- require -->
<link href="http://fonts.cdnfonts.com/newcss/sf-pro-display"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"
	integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/base.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
	integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- require -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/detail.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/shared.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/breadcrumb.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/footer.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}css/components/modal.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/components/pagination.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/newcss/userCart.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/newcss/detail.css" />
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/setting.css" />

<title>FPT-EC</title>

<meta name="description" content="" />

<!-- Favicon -->
<link rel="icon" type="image/x-icon"
	href="../imgs/logo.png" />
</head>
<!-- Header -->
<header class="header-wrapper">
	<div class="header fixed-header">
		<!-- Header - top-->
		<div class="header-top">
			<div class="header-top-left">
				<i class="fas fa-home header-top-left-link"></i> <a
					class="header-top-left-link" href="#">B??n h??ng c??ng FEC</a>
			</div>
			<div class="header-top-right">
				<div>
					<span class="header-top-right-link">Hotline</span> <a
						class="header-top-right-link" href="tel:0906880960">0906.880.960</a>
				</div>
				<div>
					<i class="fab fa-facebook-messenger header-top-right-link"
						style="margin-right: 3px"></i> <a class="header-top-right-link"
						href="#">B??n h??ng</a>
				</div>
			</div>
		</div>
		<!-- end Header Top -->
		<!-- Header - bottom -->
		<div class="header-bottom">
			<!-- Header-left -->
			<ul class="header-bottom-left">
				<li class="header-bottom-logo"><a
					href="${pageContext.request.contextPath}/home"> <img
						src="${pageContext.request.contextPath}/imgs/logo.png" alt="logo" />
				</a></li>
				<li class="header-bottom-item"><a href="#"> <span
						class="header-bottom-item-text text-hover active">Gi??? H??ng</span>
				</a></li>
			</ul>
			<!-- end Header-left -->
			<!-- Header-right -->
			<ul class="header-bottom-right">
				<li class="header-bottom-right-items">
					<div class="header-bottom-right-item">
						<a href="#"> <i class="far fa-bell"></i>
						</a>
					</div>
				</li>
				<li class="header-bottom-right-items">
					<div class="header-bottom-right-item">
						<a href="${pageContext.request.contextPath}/cart"> <i
							class="fas fa-shopping-bag"><span class="badge"
								id="quantity-product-in-cart"></span></i>
						</a>
					</div>
				</li>
				<li class="header-bottom-right-items user action ">
					<div class="profile" onclick="menuToggle();">
						<div class="header-bottom-right-item">
							<a href="#"> <i class="far fa-user"></i>
							</a>
						</div>
						<div class="profile-right">

							<a class="about-user" href="#"> <span class="about-user-1"></span>
								<span class="about-user-2">Xin ch??o!</span> <span
								class="about-user-1"><c:out
										value="${sessionScope.email }"></c:out></span>
							</a>
						</div>
					</div>
					<div class="menu">
						<ul>
							<c:choose>
								<c:when test="${sessionScope.email == null}">
									<li><a href="login">????ng Nh???p</a></li>
									<li class="border-top"><a href="register">????ng K??</a></li>
								</c:when>
								<c:when test="${sessionScope.email != null}">
									<li><a
										href="${pageContext.request.contextPath}/customer/updateProfile">
											Th??ng tin </a></li>
									<li><a href="logout"> ????ng xu???t </a></li>

								</c:when>

							</c:choose>
						</ul>
					</div>
				</li>
			</ul>
			<!-- end Header-right -->
		</div>
		<!-- end Header - bottom -->
		
		<!-- ------------------------ Begin BREADCRUMB ------------------------------- -->
			<div class="header__menu">	
				<a class="header__prev" onclick="history.back()" style="cursor: pointer;"><i class="fas fa-angle-left"></i><span
					class="menu__text--back">Quay l???i</span></a>
			</div>
			<!-- ------------------------ End BREADCRUMB ------------------------------- -->

	</div>

</header>
<!-- end Header -->

<body>
	<!-- ----------------- Begin MAIN: SETTING ---------------------- -->
	<div class="mid-container">
		<div class="setting">

			<div class="setting__right-cart" style="width: 100%;">
				<div class="user-info" id="user-order">
					<ul class="tab-list-cart">
						<li class="tab-item text-hover"><a href="#">S???n Ph???m</a></li>
						<li class="tab-item text-hover"><a href="#">S??? L?????ng</a></li>
						<li class="tab-item text-hover"><a href="#">S??? ti???n</a></li>
					</ul>
					<div class="order-box-list">
						<c:set var="total" value="${0}" />
						<div class="order-box box">
							<c:forEach items="${CART.productInCarts}" var="item"
								varStatus="loop">
								<div class="order-box__top">
									<div class="order__user-info">

										<span class="order__user-info__brand">${item.shopName}</span>
										<a class="btn btn-badge-border" href="${pageContext.request.contextPath}/shop-detail?id=${item.shopId}">
											<div class="btn-inner">
												<i class="fa-solid fa-store"></i> <span
													class="order__chat-text">Xem shop</span>
											</div>
										</a>
									</div>

								</div>
								<div class="divider"></div>
								<div class="order-box__mid">
									<div class="order-box__mid-left">
										<div class="order-box__product">
											<div class="order-product__img">
												<img src="${pageContext.request.contextPath}/${item.pathImage}" width="85px" height="85px" />
											</div>
											<div class="order-product__detail">
												<div class="order-product__name">${item.name}</div>
												<div class="order-product__description">
													Size: <span class="text-highlight"
														style="font-weight: bold;">${item.size }</span>
												</div>
												<div class="order-product__description">
													Color: <span class="text-highlight"
														style="font-weight: bold;">${item.color}</span>
												</div>

											</div>
										</div>
									</div>

									<div class="order-box__mid-midle">
										<div class="product__quantity-wrapper button-container">
											<span class="minus"
												onclick="Product.changeAmountMinus(${item.id}, ${item.promotionPrice}, this);">-</span>
											<span class="product__quantity qty" id="${item.id}">${item.quantity}</span>
											<span class="plus"
												onclick="Product.changeAmountAdd(${item.id}, ${item.promotionPrice}, this)">+</span>

										</div>
									</div>

									<div class="order-box__mid-right">
										<div class="order-product__price--old">${item.unitPrice}</div>
										<div class="discountPercent">
											<i>-</i>${item.percentz}<i>%</i>
										</div>
										<div class="order-product__price--new text-highlight price"
											id="promotion-price">${item.promotionPrice}</div>
									</div>
									<button class="btn btn-badge-border"
										onclick="location.href='${pageContext.request.contextPath}/remove-product-in-cart/${item.id}'">
										<div class="btn-inner">
											<span>X??a</span>
										</div>
									</button>
								</div>

								<c:set var="total"
									value="${total + item.quantity * item.promotionPrice}" />
							</c:forEach>
							<div class="order-box__bot">
								<div class="order-box__total">
									<span class="order-box__icon-right"><i
										class="fas fa-shield-alt text-highlight"></i></span> <span
										class="order-box__total-text">T???ng s??? ti???n:</span> <span
										class="order-box__total-price text-highlight total" id="total"><fmt:formatNumber
											type="number" maxIntegerDigits="13" value="${total }" />  vn??</span>
								</div>
								<div class="order-box__next-actions">
									<div class="order-box__next-actions__text"></div>
									<div class="order-box__next-actions__button-list">
										<a class="btn btn-badge"
											href="${pageContext.request.contextPath}/customer/check-out">
											<span>Mua Ngay</span>
										</a>
									</div>
								</div>
							</div>
						</div>

					</div>
					<!-- <div id="site-footer">
                  <div class="container clearfix">

                    <div class="left">
                      <h2 class="subtotal">Subtotal: <span>163.96</span>???</h2>
                      <h3 class="tax">Taxes (5%): <span>8.2</span>???</h3>
                      <h3 class="shipping">Shipping: <span>5.00</span>???</h3>
                    </div>

                    <div class="right">
                      <h1 class="total">Total: <span>177.16</span>???</h1>
                      <a class="btn btn-primary">
                        <span>Checkout</span>
                        </a>
                    </div>

                  </div>
                </div> -->


				</div>
			</div>
		</div>
	</div>
	<!-- ----------------- End MAIN: SETTING  ---------------------- -->


	<!-- ----------------- End FOOTER---------------------- -->

	<!-- <script src="${pageContext.request.contextPath}/js/changeOrderTabs.js"></script> -->
	<script src="${pageContext.request.contextPath}/js/utils.js"></script>
	<script src="${pageContext.request.contextPath}/js/modal.js"></script>
	<!-- <script src="${pageContext.request.contextPath}/js/detail.js"></script> -->
	<script src="${pageContext.request.contextPath}/js/user-cart.js"></script>
	<script src="${pageContext.request.contextPath}/js/search.js"></script>
	<script src="${pageContext.request.contextPath}/newjs/popup.js"></script>
</body>
<!-- ----------------- Begin FOOTER---------------------- -->
<footer class="footer">
	<div class="footer_top">
		<div class="footer_top-item">
			<div class="block_wrapper">
				<ul class="block_list">
					<li class="block_item logo"><a href="/"><img
							src="${pageContext.request.contextPath}/imgs/logo.png"
							alt="logo-white" /></a></li>
					<li class="block_item"><a class="block_link"
						href="tel:0906.880.960" title="Hotline: 0906.880.960">Hotline:
							0933.932.517</a></li>
					<li class="block_item"><a class="block_link" href="/"
						title="9h-18h t??? Th??? 2 ?????n Th??? 6">(9h-18h t??? Th??? 2 ?????n Th??? 6)</a>
					</li>
					<li class="block_item"><a class="block_link"
						href="email:customer@dosiinvn.com"
						title="Email: customer@dosiinvn.com">Email:
							Trongldde140257@fpt.edu.vn</a></li>
				</ul>
				<h5 class="block_heading">K???t n???i v???i ch??ng t??i</h5>
				<ul class="block-app-list">
					<li class="block-app-item"><a
						href="https://www.instagram.com/" title="Instagram"><i
							class="fab fa-instagram-square"></i></a></li>
					<li class="block-app-item"><a class="dosiin_d-block"
						href="https://www.facebook.com/daihocfptdanang" title="Facebook"><i
							class="fab fa-facebook"></i></a></li>
				</ul>
			</div>
			<div class="block_wrapper">
				<h5 class="block_heading">V??? FEC</h5>

				<ul class="block_list">
					<li class="block_item"><a class="block_link" href="#">C??c
							??i???u kho???n kh??c</a></li>
					<li class="block_item"><a class="block_link" href="#">H???p
							t??c</a></li>
					<li class="block_item"><a class="block_link" href="#">H???i
							v?? ????p</a></li>
					<li class="block_item"><a class="block_link" href="#">H???n
							ch??? v???i th???i gian v?? qu???n l??</a></li>
					<li class="block_item"><a class="block_link" href="#">Ngh??a
							v??? c???a ng?????i b??n</a></li>
					<li class="block_item"><a class="block_link" href="#">Ngh??a
							v??? c???a kh??ch h??ng</a></li>
					<li class="block_item"><a class="block_link" href="#">Ch??nh
							s??ch v???n chuy???n</a></li>
					<li class="block_item"><a class="block_link" href="#">V???
							ch??ng t??i</a></li>
				</ul>
			</div>
			<div class="block_wrapper">
				<h5 class="block_heading">N???i dung ch??nh s??ch</h5>
				<ul class="block_list">
					<li class="block_item"><a class="block_link" href="#">Ch??nh
							s??ch b???o m???t</a></li>
					<li class="block_item"><a class="block_link" href="#">??i???u
							kho???n d???ch v???</a></li>
					<li class="block_item"><a class="block_link" href="#">Ch??nh
							s??ch th??nh vi??n</a></li>
					<li class="block_item"><a class="block_link" href="#">Ch??nh
							s??ch thanh to??n</a></li>
					<li class="block_item"><a class="block_link" href="#">Ch??nh
							s??ch b???o m???t thanh to??n</a></li>
					<li class="block_item"><a class="block_link" href="#">Ch??nh
							s??ch d??nh cho kh??ch h??ng</a></li>
				</ul>
			</div>
			<div class="block_wrapper">
				<h5 class="block_heading">C??ch th???c thanh to??n</h5>
				<ul class="block_card-list">
					<li class="block_card-item">
						<div class="card-item_list">
							<a class="block_link" href="/" title="COD Ti???n m???t">
								<div class="card-item_box">
									<div class="card-item_icon">
										<img
											src="${pageContext.request.contextPath}/imgs/social/cod.webp"
											alt="Ti???n m???t" title="Ti???n m???t">
									</div>
									<div class="card-item_text">Ti???n m???t</div>
								</div>
							</a>
							<%-- <a class="block_link" href="/" title="Momo">
									<div class="card-item_box">
										<div class="card-item_icon">
											<img
												src="${pageContext.request.contextPath}/imgs/social/momo.png"
												alt="Momo" title="Momo" />
										</div>
										<div class="card-item_text">Momo</div>
									</div>
								</a> --%>
						</div>
					</li>

					<%-- <li class="block_card-item">
							<div class="card-item_list">
								<a class="block_link" href="/" title="Internet Banking">
									<div class="card-item_box">
										<div class="card-item_icon">
											<img
												src="${pageContext.request.contextPath}/imgs/social/credit-card.png"
												alt="Internet Banking" title="Internet Banking" />
										</div>
										<div class="card-item_text">Internet Banking</div>
									</div>
								</a>
							</div>
						</li> --%>
				</ul>
			</div>
		</div>
	</div>
	<div class="footer_bot">Copyright 2022 &copy; FPT University
		DaNang</div>
</footer>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"
	type="text/javascript"></script>
<script>
</script>
</html>