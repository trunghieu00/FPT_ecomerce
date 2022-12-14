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
	href="${pageContext.request.contextPath}/newcss/base.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/shared.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/shared.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/pages/setting.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/breadcrumb.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/components/footer.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/components/modal.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/components/pagination.css" />
<style type="text/css">
.error {
	color: red;
}
</style>
<title>Setting</title>
</head>
<body>
	<div class="preloader">
		<div class="preloader-inner">
			<div class="preloader-icon">
				<span></span> <span></span>
			</div>
		</div>
	</div>
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
							class="header-bottom-item-text text-hover active">FPT E-Commerce</span>
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
				<a class="header__prev" onclick="history.back()" style="cursor: pointer;"><i class="fas fa-angle-left"></i><span
					class="menu__text--back">Quay l???i</span></a>				
			</div>
			<!-- ------------------------ End BREADCRUMB ------------------------------- -->
		</div>
	</header>
	<!-- end Header -->

	<!-- ----------------- Begin MAIN: SETTING ---------------------- -->
	<div class="mid-container">
		<div class="setting">
			<div class="setting__left">
				<nav class="sidebar" id="sidebar">
					<div class="aside__user">
						<div class="aside__user-img">
							<img
								src="${pageContext.request.contextPath}/${sessionScope.path }" />
						</div>
						<div class="aside__user-name">Name Of User</div>
					</div>
					<ul class="nav">
						<li class="nav-item active" data-tab-select="user-information">
							<a class="nav-link" href="#"> <span class="menu-icon">
									<i class="fas fa-user"></i>
							</span> <span class="menu-title">T??i kho???n c???a t??i</span>
						</a>
							<ul class="nav-child">
								<li class="nav-child-item" data-tab-select="user-information">
									<a class="nav-child-link"
									href="${pageContext.request.contextPath}/customer/updateProfile">
										<span class="menu-child-title">H??? s??</span>
								</a>
								</li>
								<li class="nav-child-item active"
									data-tab-select="change-password"><a
									class="nav-child-link" href="#"> <span
										class="menu-child-title">?????i m???t kh???u</span>
								</a></li>
							</ul>
						</li>
						<li class="nav-item" data-tab-select="user-order"><a
							class="nav-link" href="#"> <span class="menu-icon"> <i
									class="fab fa-shopify"></i>
							</span> <span class="menu-title">????n mua</span>
						</a></li>
					</ul>
				</nav>
			</div>
			<div class="setting__right">
				<div class="user-info box" id="change-password">
					<div class="user-info-wrapper">
						<div class="user-info-title">?????i m???t kh???u</div>
						<div class="user-info-description">????? ?????m b???o b???o m???t t??i
							kho???n, vui l??ng kh??ng chia s??? m???t kh???u v???i ng?????i kh??c</div>
						<div class="divider"></div>
						<div class="user-info-form">

							<c:if test="${message1 != null }">
								<span class="error"><c:out value="${message1 }"></c:out></span>
							</c:if>
							<c:if test="${message2 != null }">
								<span class="error"><c:out value="${message2 }"></c:out></span>
							</c:if>
							<c:if test="${message3 != null }">
								<span class="error"><c:out value="${message3 }"></c:out></span>
							</c:if>
							<c:if test="${message != null }">
								<span class="error"><c:out value="${message }"></c:out></span>
							</c:if>
							<form:form action="doUpdatePassword" method="post" id="form-changepass"
								cssClass="form" autocomplete="off" modelAttribute="user">
								<div class="err">
									<!-- err show -> Add show to the err if you want it to display -->
									<p>
										<span>L???i: </span> <span>N???i dung l???i</span>
									</p>
								</div>
								<!-- pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$" -> M???t kh???u g???m ??t nh???t 6 k?? t???, ??t nh???t 1 ch???, 1 s??? -->
								<div class="form-group password">
									<label>M???t kh???u c??</label> <input type="password"
										class="form-input"  autocomplete="off"
										name="passwordOld" placeholder="Nh???p m???t kh???u c??" id="oldpass" /> <i
										class="fas fa-eye"></i>
									<!-- <i class="fas fa-eye-slash"></i> -->
								</div>
								<span  style="color: red; padding-left:190px" id="oldpass_error"></span>
								<form:hidden path="id" readonly="true" />
								<form:hidden path="username" readonly="true" />
								<form:hidden path="email" readonly="true" />
								<form:hidden path="createTime" readonly="true" />
								<form:hidden path="birthDay" readonly="true" />
								<form:hidden path="address" readonly="true" />
								<form:hidden path="gender" readonly="true" />
								<form:hidden path="path" readonly="true" />
								<%-- <form:input path="password" readonly="true" />
								<form:input path="confirmPassword" readonly="true" /> --%>
								<div class="form-group password">
									<label>M???t kh???u m???i</label> <input type="password"
										class="form-input"  name="password" autocomplete="off"
										placeholder="Nh???p m???t kh???u m???i"  id="newpass"/> <i class="fas fa-eye"></i>


								</div>
								<span  style="color: red; padding-left:190px" id="newpass_error"></span>
								<div class="form-group password">
									<label>X??c nh???n m???t kh???u</label> <input type="password"
										class="form-input"  name="confirmPassword"
										autocomplete="off" placeholder="X??c nh???n m???t kh???u" id="newpass2" /> <i
										class="fas fa-eye"></i>
								</div>
								<span  style="color: red; padding-left:190px" id="newpass2_error"></span>
								<div class="form-button">
									<button type="submit" class="btn btn-primary">
										<span>X??c nh???n</span>
									</button>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ----------------- End MAIN: SETTING  ---------------------- -->
	<!-- ----------------- Begin FOOTER---------------------- -->
	<footer class="footer">
		<div class="footer_top">
			<div class="footer_top-item">
				<div class="block_wrapper">
					<ul class="block_list">
						<li class="block_item logo"><a href="/"><img
								src="${pageContext.request.contextPath}/imgs/logo-white.png"
								alt="logo-white" /></a></li>
						<li class="block_item"><a class="block_link"
							href="tel:0906.880.960" title="Hotline: 0906.880.960">Hotline:
								0906.880.960</a></li>
						<li class="block_item"><a class="block_link" href="/"
							title="9h-18h t??? Th??? 2 ?????n Th??? 6">(9h-18h t??? Th??? 2 ?????n Th??? 6)</a></li>
						<li class="block_item"><a class="block_link"
							href="email:customer@dosiinvn.com"
							title="Email: customer@dosiinvn.com">Email:
								customer@fpt.edu.vn</a></li>
					</ul>
					<h5 class="block_heading">K???t n???i v???i ch??ng t??i</h5>
					<ul class="block-app-list">
						<li class="block-app-item"><a
							href="https://www.instagram.com/dosiin.magz/" title="Instagram"><i
								class="fab fa-instagram-square"></i></a></li>
						<li class="block-app-item"><a
							href="https://www.facebook.com/dosiinvietnam/" title="Facebook"><i
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
								s??ch ?????i tr??? h??ng</a></li>
						<li class="block_item"><a class="block_link" href="#">Ch??nh
								s??ch thanh to??n</a></li>
						<li class="block_item"><a class="block_link" href="#">Ch??nh
								s??ch b???o m???t thanh to??n</a></li>
						<li class="block_item"><a class="block_link" href="#">Ch??nh
								s??ch d??nh cho kh??ch h??ng</a></li>
						<li class="block_item"><a class="block_link" href="#">Ch??nh
								s??ch b???o h??nh s???n ph???m</a></li>
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
												alt="Ti???n m???t" title="Ti???n m???t" />
										</div>
										<div class="card-item_text">Ti???n m???t</div>
									</div>
								</a><a class="block_link" href="/" title="Momo">
									<div class="card-item_box">
										<div class="card-item_icon">
											<img
												src="${pageContext.request.contextPath}/imgs/social/momo.png"
												alt="Momo" title="Momo" />
										</div>
										<div class="card-item_text">Momo</div>
									</div>
								</a>
							</div>
						</li>
						<li class="block_card-item">
							<div class="card-item_list">
								<a class="block_link" href="/" title="VISA, MASTER, JCB">
									<div class="card-item_box">
										<div class="card-item_icon">
											<img
												src="${pageContext.request.contextPath}/imgs/social/credit-card.png"
												alt="VISA, MASTER, JCB" title="VISA, MASTER, JCB" />
										</div>
										<div class="card-item_text">VISA, MASTER, JCB</div>
									</div>
								</a>
							</div>
						</li>
						<li class="block_card-item">
							<div class="card-item_list">
								<a class="block_link" href="/" title="Internet Banking">
									<div class="card-item_box">
										<div class="card-item_icon">
											<img src="/assets/imgs/social/credit-card.png"
												alt="Internet Banking" title="Internet Banking" />
										</div>
										<div class="card-item_text">Internet Banking</div>
									</div>
								</a>
							</div>
						</li>
					</ul>
					<h5 class="block_heading">?????i t??c v???n chuy???n</h5>
					<ul class="block_delivery-list">
						<li class="block_delivery-item"><a class="delivery-item_link"
							href="/" title="Giao h??ng nhanh">
								<div class="delivery-item_icon">
									<img
										src="${pageContext.request.contextPath}/imgs/social/ghn.webp"
										alt="Giao h??ng nhanh" />
								</div>
						</a></li>
						<li class="block_delivery-item"><a class="delivery-item_link"
							href="/" title="Giao h??ng ti???t ki???m">
								<div class="delivery-item_icon">
									<img
										src="${pageContext.request.contextPath}/imgs/social/ghtk.png"
										alt="Giao h??ng ti???t ki???m" />
								</div>
						</a></li>
					</ul>
				</div>
				<div class="block_wrapper">
					<h5 class="block_heading">N???n t???ng kh??c</h5>
					<ul class="block_application-list">
						<li class="block_application-item"><a
							class="application-item_link" href="/" title="Google Play"><img
								src="${pageContext.request.contextPath}/imgs/app/android.png"
								alt="Google Play" width="130" height="40" /></a></li>
						<li class="block_application-item"><a
							class="application-item_link" href="/" title="App Store"><img
								src="${pageContext.request.contextPath}/imgs/app/ios.png"
								alt="App Store" width="130" height="40" /></a></li>
					</ul>
					<div class="block_subscribe">
						<h5 class="block_heading">????ng k?? nh???n tin</h5>
						<form class="block_subscribe-wrapper" action="">
							<input type="text" name="subscribe_email" id="subscribe_email"
								size="20" placeholder="Email" class="input-subscribe-email" />
							<div class="divider_wrapper">
								<div class="v-divider"></div>
							</div>
							<div class="block_subscribe-submit">
								<button type="submit"
									class="btn text-highlight block_subscribe-button">
									<span>????ng k??</span>
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="divider"></div>
			<div class="footer_top-info">
				<div class="footer_top-left">
					<p>C??ng ty c??? ph???n DOSI GROUP</p>
					<p>68/21 Ho??ng Di???u, Ph?????ng 12, Qu???n 4. Th??nh ph??? H??? Ch?? Minh</p>
				</div>
				<div class="footer_top-right">
					<div class="footer_top-right-info">
						<p>GP??KKD: 0314119937 do S??? KH v?? ??T TPHCM c???p ng??y 30/01/2019</p>
						<p>????ng k?? thay ?????i l???n th??? 7, ng??y 07 th??ng 06 n??m 2021</p>
					</div>
					<div class="footer_top-approve">
						<img
							src="${pageContext.request.contextPath}/imgs/social/bo-cong-thuong.png"
							alt="B??? c??ng th????ng" sizes="" srcset="" />
					</div>
				</div>
			</div>
		</div>
		<div class="footer_bot">Copyright 2015-2021 &copy; C??ng ty c???
			ph???n DOSI GROUP</div>
	</footer>
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
	<!-- ----------------- End FOOTER---------------------- -->
	<script src="${pageContext.request.contextPath}/js/togglePassword.js"></script>
	<script src="${pageContext.request.contextPath}/newjs/popup.js"></script>
	
		<script src="http://code.jquery.com/jquery-3.4.1.min.js" 
    integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
<script type="text/javascript"
    src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.1/dist/jquery.validate.js"></script>
	
	<script type="text/javascript">
	$(document).ready(function()
			{
			    $('#form-changepass').submit(function(){
			 
			        // B?????C 1: L???y d??? li???u t??? form
			        var oldpass   = $.trim($('#oldpass').val());
			        var newpass   = $.trim($('#newpass').val());
			        var newpass2 = $.trim($('#newpass2').val());
				     
			     
			 
			      
			        var flag = true;
			 
			        
			        if (oldpass == '' ){
			            $('#oldpass_error').text('Vui l??ng nh???p m???t kh???u c?? !');
			            flag = false;
			        }
			        else{
			            $('#oldpass_error').text('');
			        }
			        // subcategory
			        if (newpass == '' ){
			            $('#newpass_error').text('Vui l??ng nh???p m???t kh???u m???i !');
			            flag = false;
			        }
			        else{
			            $('#newpass_error').text('');
			        }
			        // codesubcategory
			        if (newpass2 == '' ){
			            $('#newpass2_error').text('Vui l??ng nh???p l???i m???t kh???u m???i !');
			            flag = false;
			        }
			        else{
			            $('#newpass2_error').text('');
			        }
			 
			 
			    
			 
			     
			 
			        return flag;
			    });
			});
    </script>
</body>
</html>