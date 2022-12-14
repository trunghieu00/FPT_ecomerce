<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
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
	href="${pageContext.request.contextPath}/css/pages/setting.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/breadcrumb.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/components/footer.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/components/modal.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/components/pagination.css" />
<title>User Information</title>
</head>
<body>
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
										<li><a href="${pageContext.request.contextPath}/logout"> ????ng xu???t </a></li>

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
				<a class="header__prev"  onclick="history.back()"><i class="fas fa-angle-left"></i><span
					class="menu__text--back">Quay l???i</span></a>
			</div>
			<!-- ------------------------ End BREADCRUMB ------------------------------- -->
		</div>
	</header>
	<!-- end Header -->

	<!-- ----------------- Begin MAIN: SETTING ---------------------- -->
	<div class="mid-container" style="margin-top: 20px;">
		<div class="setting">
			<div class="setting__left">
				<nav class="sidebar" id="sidebar">
					<div class="aside__user">
						<div class="aside__user-img">
							<img
								src="${pageContext.request.contextPath}/${sessionScope.path }" />
						</div>
						<div class="aside__user-name">
							<c:out value="${sessionScope.username }"></c:out>
						</div>
					</div>
					<ul class="nav">
						<li class="nav-item active" data-tab-select="user-information">
							<a class="nav-link" href="${pageContext.request.contextPath}/customer/updateProfile"> <span
								class="menu-icon"> <i class="fas fa-user"></i>
							</span> <span class="menu-title">T??i kho???n c???a t??i</span>
						</a>
							<ul class="nav-child">
								<li class="nav-child-item active"
									data-tab-select="user-information"><a
									class="nav-child-link" href="#"> <span
										class="menu-child-title">H??? s??</span>
								</a></li>
								<li class="nav-child-item" data-tab-select="change-password">
									<a class="nav-child-link"
									href="${pageContext.request.contextPath}/customer/updatePassword">
										<span class="menu-child-title">?????i m???t kh???u</span>
								</a>
								</li>
							</ul>
						</li>
						<li class="nav-item" data-tab-select="user-order"><a
							class="nav-link"
							href="${pageContext.request.contextPath}/customer/order/list/1">
								<span class="menu-icon"> <i class="fab fa-shopify"></i>
							</span> <span class="menu-title">????n mua</span>
						</a></li>
					</ul>
				</nav>
			</div>
			<div class="setting__right">
				<div class="user-info box" id="user-information">
					<div class="user-info-wrapper">
						<div class="user-info-title">H??? s?? c???a t??i</div>
						<div class="user-info-description">Qu???n l?? h??? s?? ????? b???o m???t
							t??i kho???n</div>
						<div class="divider"></div>
						<div class="user-info-form">
							<form:form class="form" autocomplete="no-thanks"
								enctype="multipart/form-data"
								action="${pageContext.request.contextPath}/customer/doUpdateProfile"
								modelAttribute="user" method="post" id="form-userinfo">
								<div class="form__wrapper">
									<div class="form__left">
										<div class="err">
											<!-- err show -> Add show to the err if you want it to display -->
										</div>
										<form:hidden path="id" readonly="true" />
										<form:hidden path="password" readonly="true" />
										<div class="form-group">
											<label>Email</label>
											<form:input type="text" cssClass="form-input"
												placeholder="T??n ????ng nh???p" readonly="true" path="email" />
										</div>
										<div class="form-group">
											<label>T??n</label>
											<form:input type="text" cssClass="form-input"
												placeholder="T??n c???a b???n" path="username" id="username"/>
												
										</div>
										
										<div class="form-group">
											<label>S??? ??i???n tho???i</label>
											<form:input type="tel" cssClass="form-input"
												placeholder="S??? ??i???n tho???i" path="phoneNumber"  id="phonenumber"/>
										</div>
										<span  style="color: red; padding-left:130px" id="phonenumber_error"></span>
										<div class="form-group">
											<label>?????a ch???</label>
											<form:input type="text" cssClass="form-input"
												placeholder="?????a ch???" path="address" id="useraddress"/>
										</div>
										<span  style="color: red; padding-left:130px" id="useraddress_error"></span>
										<div class="form-group group__gender">
											<label for="gender">Gi???i t??nh</label>
											<div class="gender__item-list">
												<span class="gender__item"> <form:radiobutton
														id="male" name="gender" value="0" path="gender" /> <label
													for="male">Nam</label>
												</span> <span class="gender__item"> <form:radiobutton
														id="female" name="gender" value="1" path="gender" /> <label
													for="female">N???</label>
												</span> <span class="gender__item"> <form:radiobutton
														id="neutral" name="gender" value="2" path="gender" /> <label
													for="neutral">Kh??c</label>
												</span>
											</div>
										</div>
										<div class="form-group group__birth">
											<label for="birth">Ng??y sinh</label>
											<form:input id="birth" name="birth" type="date"
												cssClass="form-input" placeholder="Ch???n ng??y sinh c???a b???n"
												path="birthDay" />
											
										</div>
											<span  style="color: red; padding-left:130px" id="birth_error"></span>
										<div class="form-button">
											<button type="submit" class="btn btn-primary">
												<span>X??c nh???n</span>
											</button>
										</div>
									</div>
									<div class="v-divider"></div>
									<div class="form__right">
										<div class="user__image">
											<div class="user__image-upload">
												<img
													src="${pageContext.request.contextPath}/${sessionScope.path }"
													alt="avatar" /> <label
													class="upload__button btn btn-badge-border" for="avatar">
													<div class="btn-inner">
														<span>Ch???n ???nh</span>
													</div>
												</label><input type="file" id="avatar" name="multipartFile"
													accept="image/png, image/jpeg" />
											</div>
										</div>
										<div class="user__image-description">Dung l?????ng file t???i
											??a 1 MB, ?????nh d???ng .png, .jpg, .jpeg</div>
									</div>
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
							href="email:customer@fecvn.com"
							title="Email: customer@fecvn.com">Email:
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
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script src="${pageContext.request.contextPath}/newjs/popup.js"></script>
	
		<script src="http://code.jquery.com/jquery-3.4.1.min.js" 
    integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
<script type="text/javascript"
    src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.1/dist/jquery.validate.js"></script>
	
	<script type="text/javascript">
	$(document).ready(function()
			{
			    $('#form-userinfo').submit(function(){
			 
			        // B?????C 1: L???y d??? li???u t??? form
			        var useraddress   = $.trim($('#useraddress').val());
			        var phonenumber   = $.trim($('#phonenumber').val());
			        var birth = $.trim($('#birth').val());
				     
			     
			 
			      
			        var flag = true;
			 
			        
			        if (useraddress == '' ){
			            $('#useraddress_error').text('Vui l??ng nh???p ?????a ch??? !');
			            flag = false;
			        }
			        else{
			            $('#useraddress_error').text('');
			        }
			        // subcategory
			        if (phonenumber == '' ){
			            $('#phonenumber_error').text('Vui l??ng nh???p s??? ??i???n tho???i !');
			            flag = false;
			        }
			        else{
			            $('#phonenumber_error').text('');
			        }
			        // codesubcategory
			        if (birth == '' ){
			            $('#birth_error').text('Vui l??ng nh???p  ng??y sinh !');
			            flag = false;
			        }
			        else{
			            $('#birth_error').text('');
			        }
			 
			 
			    
			 
			     
			 
			        return flag;
			    });
			});
    </script>
</body>
</html>