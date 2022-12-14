<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
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
	href="${pageContext.request.contextPath}/css/base.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
	integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- require -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/shared.css" />
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
<title>Product Detail</title>
</head>
<body>
	<!-- ------------------------ Begin LOADER ------------------------------- -->

	<div class="loader" style="display: none">
		<div class="loader-inner"></div>
	</div>
	<!-- ------------------------ End LOADER ------------------------------- -->

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
							src="/assets/imgs/logo.svg" alt="logo" />
					</a></li>
					<li class="header-bottom-item"><a href="#"> <span
							class="header-bottom-item-text text-hover active">Shopping</span>
					</a></li>
					<li class="header-bottom-item"><a href="#"> <span
							class="header-bottom-item-text text-hover">Style</span>
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
			<ul class="category">
				<li class="category-item text-hover"><a href="#">S???n ph???m</a></li>
				<li class="category-item text-hover"><a href="#">Nam</a></li>
				<li class="category-item text-hover"><a href="#">N???</a></li>
				<li class="category-item text-hover"><a href="#">Ph??? ki???n</a></li>
				<li class="category-item text-hover"><a href="#">Th????ng
						hi???u</a></li>
				<li class="category-item text-hover"><a href="#">X???p h???ng</a></li>
				<li class="category-item text-hover"><a href="#">M???i nh???t </a>
				</li>
				<li class="category-item text-hover"><a href="#">Gi?? s???c </a></li>
				<li class="category-item text-hover"><a href="#">S??? ki???n </a></li>
			</ul>
			<!-- ------------------------ End BREADCRUMB ------------------------------- -->
		</div>
	</header>
	<!-- end Header -->

	<!-- ----------------- Begin MAIN---------------------- -->
	<main class="detail">
		<section class="mid-container">
			<section class="detail__product box">
				<div class="detail__product-img-container">
					<div class="slider__product-img">
						<div class="slider__product-img-list--left">
							<img src="/assets/imgs/shop/shop-banner.webp" class="active" />
							<img src="/assets/imgs/card1.webp" /> <img
								src="/assets/imgs/card2.webp" /> <img
								src="/assets/imgs/shop/shop-banner.webp" /> <img
								src="/assets/imgs/card3.jpeg" /> <img
								src="/assets/imgs/card5.webp" />
						</div>
						<div class="slider__product-img-list--right">
							<span class="back"><i class="fa-solid fa-angle-left"></i></span>
							<div class="slider__product-img-wrapper">
								<img src="/assets/imgs/shop/shop-banner.webp" /> <img
									src="/assets/imgs/card1.webp" /> <img
									src="/assets/imgs/card2.webp" /> <img
									src="/assets/imgs/shop/shop-banner.webp" /> <img
									src="/assets/imgs/card3.jpeg" /> <img
									src="/assets/imgs/card5.webp" />
							</div>
							<span class="next"><i class="fa-solid fa-angle-right"></i></span>
						</div>
					</div>
				</div>
				<div class="detail__product-detail">
					<div class="product__box--detail">
						<p class="product__brand">
							Th????ng hi???u:&nbsp;<span class="text-highlight">acm?? de la
								vie (ADLV)</span>
						</p>
						<div class="product__name-wishlist">
							<p class="product__name">??o thun ng???n tay c??? tr??n ADLV Basic
								Pink H???ng ADLV Unisex</p>
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
						<div class="product__judge">
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
						</div>
					</div>
					<div class="product__box--detail">
						<div class="product__attribute-wrapper">
							<div class="product__attribute">
								<div class="product__attribute-text">M??u s???c</div>
								<span></span>
								<div class="product__attribute-description">2 M??u s???c</div>
							</div>
							<div class="product__attribute__select">
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
							<div class="product__attribute__select">
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
							<a class="btn btn-primary"><span>Th??m v??o gi??? h??ng</span></a><a
								class="btn btn-primary"><span>?????n trang mua h??ng</span></a>
						</div>
						<p class="product__is-origin">S???n ph???m kh??ng b??n tr???c ti???p
							tr??n FEC</p>
					</div>
					<div class="product__box--detail">
						<div class="marketplace">
							<img src="/assets/imgs/icons/marketplace.png" alt="" srcset="" />
							<div class="marketplace__wrapper">
								<h6 class="marketplace__description">S???n ph???m kh??ng ???????c
									ph??n ph???i ch??nh h??ng t???i FEC</h6>
								<div class="marketplace__policy">
									<p>T??m hi???u ch??nh s??ch</p>
									<span class="marketplace__link"><i
										class="fa-solid fa-circle-info"></i><span
										class="marketplace__popup"><strong>Ti???p th???
												li??n k???t:</strong>&nbsp;C??c th????ng hi???u ??ang h???p t??c qu???ng c??o v???i
											FEC. Ng?????i d??ng sau khi nh???n ????????t h??ng ngay??? tr??n
											FEC.com s??? ???????c chuy???n ?????n trang web c???a th????ng hi???u ?????
											ho??n t???t vi???c mua h??ng. C??c ch??nh s??ch khuy???n m??i, thanh to??n
											v?? ?????i tr??? s??? ???????c ??p d???ng theo ch??nh s??ch c???a th????ng hi???u
											????.</span></span>
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
							<div class="follow__left">
								<div class="follow__img">
									<img src="../assets/imgs/shop/shop-logo.webp" alt="brand-img" />
								</div>
								<div class="follow__text">
									<div class="brand__title">Saigonmon</div>
									<div class="brand__followers">
										<strong>12</strong>&nbsp;ng?????i theo d??i
									</div>
									<div class="brand__products">
										<strong>12</strong>&nbsp;s???n ph???m
									</div>
								</div>
							</div>
							<div class="follow__right">
								<button class="btn text-highlight">
									<i class="fas fa-user-plus"></i>&nbsp;&nbsp; <span>Theo
										d??i</span>
								</button>
							</div>
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
								<li><a href="" title="????nh gi??">
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
								</a></li>
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
									<td>??o thun tay ng???n</td>
								</tr>
								<tr>
									<th>Th????ng hi???u</th>
									<td>SLY</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="aside-left__describe box">
						<div class="section-title">
							<h3>M?? t??? s???n ph???m</h3>
						</div>
						<div class="info-box__content">
							<p>??o Thun Sly Simple m??u v??ng</p>
							<p>??? Ch???t li???u: 100% Cotton Ch??nh Ph???m 4 chi???u.</p>
							<p>??? H???a ti???t: Th??u</p>
							<p>??? Ki???u d??ng: Form su??ng hi???n ?????i ph?? h???p cho c??? Nam l???n
								N???.</p>
							<p></p>
							<p>H?????NG D???N B???O QU???N</p>
							<p>??? H???n ch??? gi???t m??y, n??n gi???t tay</p>
							<p>??? L???n tr??i khi gi???t, n??n ph??i n??i n???ng nh???, tr??nh ??nh n???ng
								tr???c ti???p.</p>
							<p></p>
							<p>- Ch??nh s??ch v?? ??i???u ki???n ?????i tr??? c???a SLY CLOTHING:</p>
							<p>+ Cam k???t ???????c ?????i tr??? h??ng trong v??ng 7 ng??y (t??nh t???
								ng??y nh???n h??ng).</p>
							<p>+ Cam k???t ch???t l?????ng v?? m???u m?? s???n ph???m gi???ng v???i h??nh
								???nh.</p>
							<p>+ H??ng ph???i c??n m???i, ch??a qua s??? d???ng v?? c??n tag.</p>
							<p>+ S???n ph???m b??? l???i do v???n chuy???n v?? do nh?? s???n xu???t.</p>
							<p></p>
							<p>?????? L??U ??:</p>
							<p>- Khi b???n g???p b???t k?? v???n ????? g?? v??? s???n ph???m ?????ng v???i ????nh
								gi?? m?? h??y li??n h??? qua k??nh chat ho???c g???i ngay v??o Hotline ?????
								???????c SLY h??? tr??? qu?? kh??ch t???t nh???t nh??.</p>
							<p>- Qu?? kh??ch vui l??ng quay video unbox s???n ph???m. N???u s???n
								ph???m c?? Sai x??t, l???i c???a nh?? s???n xu???t, thi???u s???n ph???m SLY s??? d???a
								tr??n video m?? b???n cung c???p ????? gi???i quy???t ????n h??ng c???a b???n.</p>
							<p>???? Chat qua fanpage: http://m.me/slyclothing.saigon</p>
							<p>???? Hotline: 0902788994</p>
							<p></p>
							<p>#sly #slyclothing #freeship #follow</p>
							<p>#unisex #streetwear #teen #friends #oversized #fashion
								#xuhuongthoitrang</p>
							<p>#aothun #simple #aothunsly #aosly</p>
						</div>
					</div>
					<div class="aside-left__reviews box">
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
					</div>
					<div class="aside-left__reviews box">
						<!-- ------------------------ ELSE NO REVIEWS ------------------------------- -->
						<section class="no-reviews">
							<div>
								<img src="/assets/imgs/shop/no-review.webp" />
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
										<img src="/assets/imgs/card1.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">??o Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000?? </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000??</p>
									</div>
								</div>
						</a></li>
						<li class="col py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card2.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">??o Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000?? </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000??</p>
									</div>
								</div>
						</a></li>
						<li class="col py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card3.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">??o Thun Teelab Grey Trame
											TS049</p>
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
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card1.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">??o Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000?? </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000??</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card2.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">??o Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000?? </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000??</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card3.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">??o Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000?? </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000??</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card4.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">??o Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000?? </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000??</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card5.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">??o Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000?? </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000??</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card2.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">??o Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000?? </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000??</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card1.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">??o Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000?? </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000??</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card1.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">??o Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000?? </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000??</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card1.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">??o Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000?? </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000??</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card1.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">??o Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000?? </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000??</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card1.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">??o Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000?? </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000??</p>
									</div>
								</div>
						</a></li>
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
										<img src="${pageContext.request.contextPath}/imgs/card1.webp"
											alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">??o Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000?? </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000??</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="${pageContext.request.contextPath}/imgs/card2.webp"
											alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">??o Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000?? </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000??</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card3.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">??o Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000?? </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000??</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card4.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">??o Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000?? </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000??</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card5.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">??o Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000?? </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000??</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card2.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">??o Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000?? </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000??</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card1.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">??o Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000?? </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000??</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card1.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">??o Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000?? </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000??</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card1.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">??o Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000?? </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000??</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card1.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">??o Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000?? </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000??</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card1.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">??o Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000?? </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000??</p>
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
				<img src="/assets/imgs/shop/shop-banner.webp" />
				<div class="sticky-product__name">??o thun ng???n tay c??? tr??n
					ADLV Basic Pink H???ng ADLV Unisex</div>
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
				<a class="btn btn-primary"><span>?????n trang mua h??ng</span></a>
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
						<li class="block_item logo">
						<a href="/"><img
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
	<script src="${pageContext.request.contextPath}/newjs/popup.js"></script>
</body>
</html>