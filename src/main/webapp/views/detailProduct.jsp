<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!-- require -->
<link href="http://fonts.cdnfonts.com/css/sf-pro-display"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"
	integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
	integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
	integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!------------------ SLIDE  IMAGE --------------------->
<link rel="stylesheet"
	href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
<!------------------ CSS ---------------------->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/base.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/shared.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/shared.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/pages/setting.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/pages/detail.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/breadcrumb.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/components/footer.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/components/modal.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/components/pagination.css" />

<title>FPT-EC</title>

<meta name="description" content="" />

<!-- Favicon -->
<link rel="icon" type="image/x-icon"
	href="../imgs/logo.png" />
</head>
<body>
	<div class="preloader">
		<div class="preloader-inner">
			<div class="preloader-icon">
				<span></span> <span></span>
			</div>
		</div>
	</div>
	<div class="Employed">
		<!-- Header -->
		<header class="header-wrapper">
			<div class="header fixed-header">
				<!-- Header - top-->
				<div class="header-top">
					<div class="header-top-left">
						<i class="fas fa-home header-top-left-link"></i> <a
							class="header-top-left-link" href="#">B??n h??ng c??ng FPT</a>
						<c:choose>
							<c:when test="${sessionScope.email == null}">
							</c:when>
							<c:when test="${sessionScope.email != null}">
								<i class="fas fa-home header-top-left-link"></i>
								<a class="header-top-left-link"
									href="${pageContext.request.contextPath}/customer/registerShop">????ng
									k?? ????? tr??? th??nh ng?????i b??n</a>
							</c:when>
						</c:choose>
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
								src="./imgs/logo.png" alt="logo" />
						</a></li>
						<li class="header-bottom-item"><a href="#"> <span
								class="header-bottom-item-text text-hover active">FPT
									E-Commerce</span>
						</a></li>
						<li class="header-bottom-item"><a href="#"> <span
								class="header-bottom-item-text text-hover"></span>
						</a></li>
					</ul>
					<!-- end Header-left -->
					<!-- Header-center -->
					<ul class="header-bottom-center">
						<div class="header-center-input">
							<input type="text" placeholder="Nh???p t??? kh??a t??m ki???m " />
						</div>
					</ul>
					<!-- end Header-center -->
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
					<a class="header__prev" onclick="history.back()"
						style="cursor: pointer;"><i class="fas fa-angle-left"></i><span
						class="menu__text--back">Quay l???i</span></a>
				</div>
				<!-- ------------------------ End BREADCRUMB ------------------------------- -->
			</div>
		</header>
		<!-- end Header -->

		<!-- Slide -->

		<!-- ----------------- Begin MAIN---------------------- -->
		<main class="detail">
			<section class="mid-container" style="margin-top: 60px;">
				<section class="detail__product box">
					<div class="detail__product-img-container">
						<div class="slider__product-img">
							<div class="slider__product-img-list--left">
								<img src="${product.pathImage }" class="active" /> <img
									src="${product.pathImage1 }" /> <img
									src="${product.pathImage2 }" /> <img
									src="${product.pathImage3 }" />
							</div>
							<div class="slider__product-img-list--right">
								<span class="back"><i class="fa-solid fa-angle-left"></i></span>
								<div class="slider__product-img-wrapper">
									<img src="${product.pathImage }" /> <img
										src="${product.pathImage1 }" /> <img
										src="${product.pathImage2 }" /> <img
										src="${product.pathImage3 }" />
								</div>
								<span class="next"><i class="fa-solid fa-angle-right"></i></span>
							</div>
						</div>
					</div>
					<div class="detail__product-detail">
						<div class="product__box--detail">
							<p class="product__brand">
								Th????ng hi???u:&nbsp;<span class="text-highlight">
									${product.brand }</span>
							</p>
							<div class="product__name-wishlist">
								<p class="product__name">${product.name }</p>
								<span class="product__add-to-wishlist"><i
									class="fa-regular fa-heart"></i></span>
							</div>
						</div>
						<div class="product__box--detail">
							<div class="product__price-wrapper">
								<div class="product__price--new"></div>
								<div class="product__price--old"></div>
								<div class="product__price--discount"></div>
							</div>
							<!-- <div class="product__judge">
								<span class="product-judge__stars"> <i
									class="fas fa-star star-icon active"></i> <i
									class="fas fa-star star-icon active"></i> <i
									class="fas fa-star star-icon active"></i> <i
									class="fas fa-star star-icon"></i> <i
									class="fas fa-star star-icon"></i></span> <span
									class="product-judge__star-number">3</span> <span
									class="product-judge__dot"><i class="fa-solid fa-circle"></i></span>
								<span class="product-judge__wishlist"><i
									class="fa-regular fa-heart text-highlight"></i></span> <span
									class="product-judge__wishlist-number">0</span>
							</div> -->
						</div>
						<div class="product__box--detail">

							<input type="hidden" id="value1" value="${product.unitPrice } ??"
								disabled="disabled" /> <input type="hidden" id="value2"
								value="${product.promotionPrice }  vn??" disabled="disabled" /> <input
								type="hidden" id="discount"
								value="${product.discountEntity.percentz }" disabled="disabled" />

							<div class="product__attribute-wrapper">
								<div class="product__attribute">
									<div class="product__attribute-text">M??u s???c</div>
									<span></span>
									<div class="product__attribute-description">2 M??u s???c</div>
								</div>
								<div class="product__attribute__select" id="color-radio">
									<div class="product__attribute__select-item">
										<input class="color-input" id="color-red" type="radio"
											name="color" value="red" /> <label class="color-text"
											for="color-red"><span class="text">red</span></label>
									</div>
									<div class="product__attribute__select-item">
										<input class="color-input" id="color-green" type="radio"
											name="color" value="green" /> <label class="color-text"
											for="color-green"><span class="text">green</span></label>
									</div>
								</div>
							</div>
						</div>
						<div class="product__box--detail">
							<div class="product__attribute-wrapper">
								<div class="product__attribute">
									<div class="product__attribute-text">K??ch th?????c</div>
									<span></span>
									<div class="product__attribute-description">2 K??ch th?????c</div>
								</div>
								<div class="product__attribute__select" id="size-radio">
									<div class="product__attribute__select-item">
										<input class="size-input" id="size-1" type="radio" name="size"
											value="1" /> <label class="size-text" for="size-1"><span
											class="text">1</span></label>
									</div>
									<div class="product__attribute__select-item">
										<input class="size-input" id="size-2" type="radio" name="size"
											value="2" /> <label class="size-text" for="size-2"><span
											class="text">2</span></label>
									</div>
								</div>
							</div>
						</div>
						<div class="product__box--detail">
							<div class="product__in-store">
								<span></span>&nbsp;s???n ph???m c?? s???n
							</div>
							<div class="product__quantity-wrapper">
								<span class="minus">-</span> <span class="product__quantity">1</span>
								<span class="plus">+</span>
							</div>
							<div class="error text-highlight">S??? l?????ng b???n ch???n ???? ?????n
								m???c t???i ??a c???a s???n ph???m n??y</div>
						</div>
						<div class="product__box--detail">
							<div class="product__navigate">
								<a class="btn btn-primary"
									onclick="Product.addToCart(${product.id });"><span>Th??m
										v??o gi??? h??ng</span></a>
								<a class="btn btn-primary" onclick="Product.addToCart(${product.id });" href="${pageContext.request.contextPath}/cart">
								<span >?????n trang mua h??ng</span></a>
							</div>
						</div>
						<div class="product__box--detail">
							<div class="marketplace">
								<img src="/assets/imgs/icons/marketplace.png" alt="" srcset="" />
								<div class="marketplace__wrapper">
									<h6 class="marketplace__description">S???n ph???m ???????c ph??n
										ph???i ch??nh h??ng t???i FPT</h6>
									<div class="marketplace__policy">
										<p>T??m hi???u ch??nh s??ch</p>
										<span class="marketplace__link"><i
											class="fa-solid fa-circle-info"></i><span
											class="marketplace__popup"><strong>Ti???p th???
													li??n k???t:</strong>&nbsp;C??c th????ng hi???u ??ang h???p t??c qu???ng c??o v???i
												FPT. Ng?????i d??ng sau khi nh???n ????????t h??ng ngay??? tr??n
												FPT-Ecommerce.com s??? ???????c chuy???n ?????n trang web c???a th????ng
												hi???u ????? ho??n t???t vi???c mua h??ng. C??c ch??nh s??ch khuy???n m??i,
												thanh to??n v?? ?????i tr??? s??? ???????c ??p d???ng theo ch??nh s??ch c???a
												th????ng hi???u ????.</span></span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<section class="detail__info">
					<div class="detail-info__left">
						<div class="aside-left__follow box">
							<div class="follow__box">
								<div class="follow__left" >
									<div class="follow__img">
										<img src="${product.shopEntity.path1}" alt="brand-img" href="${pageContext.request.contextPath}/shop-detail?id=${product.shopEntity.id}" />
									</div>
									<div class="follow__text">
									<a href="${pageContext.request.contextPath}/shop-detail?id=${product.shopEntity.id}">
									<div  class="brand__title">${product.shopEntity.name}</div>
									</a>
										
										<!-- <div class="brand__products">
											<strong>12</strong>&nbsp;s???n ph???m
										</div> -->
									</div>
								</div>
								<!-- <div class="follow__right">
									<button class="btn text-highlight">
										<i class="fas fa-user-plus"></i>&nbsp;&nbsp; <span>Theo
											d??i</span>
									</button>
								</div> -->
							</div>
							<div class="statistics__box">
								<ul class="brand-item__social-list">
									<li><a href="" title="S???n ph???m">
											<article class="brand-item__social-item">
												<h6>17</h6>
												<p>
													<i class="fa-solid fa-shop"></i> <span>S???n ph???m</span>
												</p>
											</article>
									</a></li>
									<!-- <li><a href="" title="????nh gi??">
											<article class="brand-item__social-item">
												<h6>3.5/5</h6>
												<p>
													<i class="fas fa-star"></i> <span>????nh gi??</span>
												</p>
											</article>
									</a></li>
									<li><a href="" title="Th???i gian tham gia">
											<article class="brand-item__social-item">
												<h6>5 th??ng</h6>
												<p>
													<i class="fas fa-clipboard-list"></i> <span>Tham gia</span>
												</p>
											</article>
									</a></li> -->
								</ul>
							</div>
						</div>
						<div class="aside-left__info box">
							<div class="section-title">
								<h3>Th??ng tin s???n ph???m</h3>
							</div>
							<table>
								<tbody>
									<tr>
										<th>Danh m???c</th>
										<td>${product.subCategoryEntity.nameSub}</td>
									</tr>
									<tr>
										<th>Th????ng hi???u</th>
										<td>${product.brand}</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="aside-left__describe box">
							<div class="section-title">
								<h3>M?? t??? s???n ph???m</h3>
							</div>
							<div class="info-box__content">${product.description}</div>
						</div>
						<!-- <div class="aside-left__reviews box">
							<div class="section-title">
								<h3>????nh gi?? s???n ph???m</h3>
							</div>
							<div class="reviews__container">
								<div class="reviews__left">
									<div class="box-reviews__top">
										<div class="box-reviews__left">
											<h5 class="box-reviews__number">
												3.5<span class="box-reviews__description">tr??n 5</span>
											</h5>
										</div>
										<div class="box-reviews__right">
											<div class="box-reviews__stars">
												<i class="fas fa-star star-icon active"></i> <i
													class="fas fa-star star-icon active"></i> <i
													class="fas fa-star star-icon active"></i> <i
													class="fas fa-star star-icon"></i> <i
													class="fas fa-star star-icon"></i>
											</div>
											<div class="box-reviews__description">
												<strong>1</strong><span>&nbsp;????nh gi??</span>
											</div>
										</div>
									</div>
								</div>
								<div class="v-divider"></div>

								<div class="reviews__mid">
									<div class="box-reviews__bottom">
										<div class="reviews-bar">
											<div class="reviews-bar__stars">
												<span class="reviews-bar__star-number">5</span> <span
													class="reviews-bar__star"><i class="fas fa-star"></i></span>
											</div>
											<div class="reviews-bar__progress" style="-percent: 80%"></div>
											<div class="reviews-bar__percent">80%</div>
										</div>
										<div class="reviews-bar">
											<div class="reviews-bar__stars">
												<span class="reviews-bar__star-number">4</span> <span
													class="reviews-bar__star"><i class="fas fa-star"></i></span>
											</div>
											<div class="reviews-bar__progress" style="-percent: 80%"></div>
											<div class="reviews-bar__percent">100%</div>
										</div>
										<div class="reviews-bar">
											<div class="reviews-bar__stars">
												<span class="reviews-bar__star-number">3</span> <span
													class="reviews-bar__star"><i class="fas fa-star"></i></span>
											</div>
											<div class="reviews-bar__progress" style="-percent: 0%"></div>
											<div class="reviews-bar__percent">10%</div>
										</div>
										<div class="reviews-bar">
											<div class="reviews-bar__stars">
												<span class="reviews-bar__star-number">2</span> <span
													class="reviews-bar__star"><i class="fas fa-star"></i></span>
											</div>
											<div class="reviews-bar__progress" style="-percent: 10%"></div>
											<div class="reviews-bar__percent">0%</div>
										</div>
										<div class="reviews-bar">
											<div class="reviews-bar__stars">
												<span class="reviews-bar__star-number">1</span> <span
													class="reviews-bar__star"><i class="fas fa-star"></i></span>
											</div>
											<div class="reviews-bar__progress" style="-percent: 0%"></div>
											<div class="reviews-bar__percent">0%</div>
										</div>
									</div>
								</div>
								<div class="v-divider"></div>
								<div class="reviews__right">
									<div class="reviews__direct">
										<p class="reviews-direct__text">????nh gi?? s???n ph???m</p>
										<div class="review-direct__stars box">
											<i class="fas fa-star star-icon active"></i> <i
												class="fas fa-star star-icon active"></i> <i
												class="fas fa-star star-icon active"></i> <i
												class="fas fa-star star-icon"></i> <i
												class="fas fa-star star-icon"></i>
										</div>
										<div class="reviews-direct__comment">
											<p class="text-highlight">Vi???t ????nh gi??</p>
											<span><i
												class="fa-regular fa-comment-dots text-highlight"></i></span>
										</div>
									</div>
								</div>
							</div>
						</div> -->
						<div class="aside-left__reviews box">
							<!-- ------------------------ ELSE NO REVIEWS ------------------------------- -->
							<section class="no-reviews">
								<div>
									<img
										src="${pageContext.request.contextPath}/imgs/shop/no-review.webp" />
									<p>H??y l?? ng?????i ?????u ti??n ????nh gi?? s???n ph???m n??y</p>
								</div>
							</section>
							<!-- ------------------------ ENDIF ------------------------------- -->
						</div>
					</div>
					<div class="detail-info__right box">
						<div class="section-title">
							<h3>S???n ph???m t????ng t???</h3>
						</div>
						<ul class="sidebar-right__product-list">
							<li class="col py-1"><a href="#">
									<div class="card">
										<div class="card-img">
											<img src="resources/images/dosiin-teelab-teelab-messenger-bag-ac-357831357831.webp" alt="" />
										</div>
										<div class="card-text">
											<h3 class="card-title text-hover">TEELAB</h3>
											<p class="card-des truncate">T??i ??eo ch??o</p>
											<span class="card-price"> 350.000?? </span> <span
												class="card-price-discount"> -50% </span>
											<p class="card-price-cost">175.000??</p>
										</div>
									</div>
							</a></li>
							
							
						
						</ul>
						<button class="btn btn-primary" style="width: 100%">
							<span>Xem th??m</span>
						</button>
					</div>
				</section>

				<section class="detail__product-list box">
					<!-- ------------------------ Begin PRODUCT ------------------------------- -->
					<section class="page-section">
						<div class="section-title">
							<h3>S???n ph???m t????ng t???</h3>
						</div>
						<ul class="product-slider category-about row">
							<c:choose>
						<c:when
							test="${listProductDate !=null && listProductDate.size() gt 0}">
							<c:forEach items="${requestScope.listProductDate }" var="item"
								varStatus="theCount">
								<li class="col c-6 m-4 l-2-4 py-1"><a
									href="${pageContext.request.contextPath}/detailProduct?id=${item.id}">
										<div class="card">
											<div class="card-img">
												<img src="${item.pathImage }" alt="" />
											</div>
											<div class="card-text">
												<a
													href="${pageContext.request.contextPath}/shop-detail?id=${item.shopEntity.id}"><h3
														class="card-title">
														<c:out value="${item.shopEntity.name }" />
													</h3></a>
												<%--<p class="card-des truncate">${item.description }</p> --%>
												<a href="${pageContext.request.contextPath}/detailProduct?id=${item.id}">
													<p class="card-des truncate">
														${item.name }</p> <span class="card-price"> <c:out
															value="${item.unitPrice }" />
												</span> <span class="card-price-discount"> <c:out
															value="${item.discountEntity.percentz }" />%
												</span>
													<p class="card-price-cost">
														<c:out value="${item.promotionPrice }" />
														<i> ??</i>
													</p>
												</a>
											</div>
										</div>
								</a></li>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td style="color: red; text-align: center" colspan="12">Kh??ng
									c?? s???n ph???m n??o</td>
							</tr>
						</c:otherwise>
					</c:choose>
						</ul>
					</section>
					<!-- ------------------------ End PRODUCT ------------------------------- -->
				</section>
				<section class="detail__product-list box">
					<!-- ------------------------ Begin PRODUCT ------------------------------- -->
					<section class="page-section">
						<div class="section-title">
							<h3>B???n c??ng c?? th??? th??ch</h3>
						</div>
						<ul class="product-slider category-about row">
							<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
									<div class="card">
										<div class="card-img">
											<img src="resources/images/pro_AV00172_4.jpg" alt="" />
										</div>
										<div class="card-text">
											<h3 class="card-title text-hover">TEELAB</h3>
											<p class="card-des truncate">Gi??y cao c???</p>
											<span class="card-price"> 750.000?? </span> <span
												class="card-price-discount"> 10% </span>
											<p class="card-price-cost">675.000??</p>
										</div>
									</div>
							</a></li>
							<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
									<div class="card">
										<div class="card-img">
											<img src="resources/images/a1-7c97de6e-2c45-4b8b-af2d-9810cacb438a.webp" alt="" />
										</div>
										<div class="card-text">
											<h3 class="card-title text-hover">Nowsaigon</h3>
											<p class="card-des truncate">??o Thun Nowsaigon Grey Trame </p>
											<span class="card-price"> 350.000?? </span> <span
												class="card-price-discount"> -50% </span>
											<p class="card-price-cost">175.000??</p>
										</div>
									</div>
							</a></li>
							<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
									<div class="card">
										<div class="card-img">
											<img src="resources/images/dosiin-teelab-ma-wabrtl-giam-donktat-teelab-iconic-logo-socks-ac-358350358350.webp" alt="" />
										</div>
										<div class="card-text">
											<h3 class="card-title text-hover">TEELAB</h3>
											<p class="card-des truncate">T???t h???ng</p>
											<span class="card-price"> 50.000?? </span> <span
												class="card-price-discount"> -50% </span>
											<p class="card-price-cost">25.000??</p>
										</div>
									</div>
							</a></li>
							<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
									<div class="card">
										<div class="card-img">
											<img src="resources/images/dosiin-teelab-teelab-messenger-bag-ac-357832357832.webp" alt="" />
										</div>
										<div class="card-text">
											<h3 class="card-title text-hover">TEELAB</h3>
											<p class="card-des truncate">T??i ??eo ch??o</p>
											<span class="card-price"> 300.000?? </span> <span
												class="card-price-discount"> -50% </span>
											<p class="card-price-cost">150.000??</p>
										</div>
									</div>
							</a></li>
							<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
									<div class="card">
										<div class="card-img">
											<img src="resources/images/dosiin-teelab-ma-wabrtl-giam-donkmu-luoi-trai-teelab-mini-logo-caps-ac-357806357806.webp" alt="" />
										</div>
										<div class="card-text">
											<h3 class="card-title text-hover">TEELAB</h3>
											<p class="card-des truncate">M?? h???ng</p>
											<span class="card-price"> 150.000?? </span> <span
												class="card-price-discount"> -50% </span>
											<p class="card-price-cost">75.000??</p>
										</div>
									</div>
							</a></li>
						</ul>
					</section>
					<!-- ------------------------ End PRODUCT ------------------------------- -->
				</section>
			</section>
		</main>
		<!-- ----------------- End MAIN---------------------- -->

		<!-- ----------------- Begin STICKY ---------------------- -->
		<div class="sticky--checkout">
			<div class="sticky--checkout__wrapper mid-container">
				<div class="sticky-product__info">
					<img src="${product.pathImage }" />
					<div class="sticky-product__name">${product.name }</div>
				</div>
				<div class="sticky-product-one">1</div>
				<div class="sticky-product__price"></div>
				<div class="sticky-product__quantity">
					<div class="product__quantity-wrapper">
						<span class="minus">-</span> <span class="product__quantity">1</span>
						<span class="plus">+</span>
					</div>
				</div>
				<div class="sticky-product__price--current"></div>
				<div class="sticky-product__navigate">
					<a class="btn btn-primary" onclick="Product.addToCart(${product.id });" href="${pageContext.request.contextPath}/cart">
					<span>?????n trang mua h??ng</span></a>
					
				</div>
			</div>
		</div>
	</div>
	<!-- ----------------- End STICKY ---------------------- -->
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
	<!-- ----------------- End FOOTER---------------------- -->
	<script src="${pageContext.request.contextPath}/js/utils.js"></script>
	<script src="${pageContext.request.contextPath}/js/modal.js"></script>
	<script src="${pageContext.request.contextPath}/js/detail.js"></script>

	<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

	<!---------------  Slide  ---------------->
	<script type="module"
		src="${pageContext.request.contextPath}/js/slide.js"></script>



	<script src="${pageContext.request.contextPath}/js1/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js1/jquery-migrate-3.0.0.js"></script>
	<script src="${pageContext.request.contextPath}/js1/jquery-ui.min.js"></script>
	<!-- Popper JS -->
	<script src="${pageContext.request.contextPath}/js1/popper.min.js"></script>
	<!-- Bootstrap JS -->
	<script src="${pageContext.request.contextPath}/js1/bootstrap.min.js"></script>
	<!-- Color JS -->
	<script src="${pageContext.request.contextPath}/js1/colors.js"></script>
	<!-- Slicknav JS -->
	<script src="${pageContext.request.contextPath}/js1/slicknav.min.js"></script>
	<!-- Owl Carousel JS -->
	<script src="${pageContext.request.contextPath}/js1/owl-carousel.js"></script>
	<!-- Magnific Popup JS -->
	<script src="${pageContext.request.contextPath}/js1/magnific-popup.js"></script>
	<!-- Fancybox JS -->
	<script src="${pageContext.request.contextPath}/js1/facnybox.min.js"></script>
	<!-- Waypoints JS -->
	<script src="${pageContext.request.contextPath}/js1/waypoints.min.js"></script>
	<!-- Countdown JS -->
	<script
		src="${pageContext.request.contextPath}/js1/finalcountdown.min.js"></script>
	<!-- Nice Select JS -->
	<script src="${pageContext.request.contextPath}/js1/nicesellect.js"></script>
	<!-- Ytplayer JS -->
	<script src="${pageContext.request.contextPath}/js1/ytplayer.min.js"></script>
	<!-- Flex Slider JS -->
	<script src="${pageContext.request.contextPath}/js1/flex-slider.js"></script>
	<!-- ScrollUp JS -->
	<script src="${pageContext.request.contextPath}/js1/scrollup.js"></script>
	<!-- Onepage Nav JS -->
	<script src="${pageContext.request.contextPath}/js1/onepage-nav.min.js"></script>
	<!-- Easing JS -->
	<script src="${pageContext.request.contextPath}/js1/easing.js"></script>
	<!-- Active JS -->
	<script src="${pageContext.request.contextPath}/js1/active.js"></script>

	<script src="${pageContext.request.contextPath}/js/search.js"></script>


	<!---------------  Import Footer ---------------->
	<script type="module"
		src="${pageContext.request.contextPath}/newjs/importPage.js"></script>
	<script>
		function menuToggle() {
			const toggleMenu = document.querySelector(".menu");
			toggleMenu.classList.toggle("active");
		}
	</script>
</body>
</html>