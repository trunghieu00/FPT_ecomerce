<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>RegisShop</title>
<!------------ CSS core ------------ -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/core.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/header.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/sideBar.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/theme-default.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/components/footer.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/RegisShop.css">
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
<!--------------- form ------------------------------- -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
	rel="stylesheet">
<!-- FontAwsome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/all.min.css">
<!---------------  Import footer JS ---------------->
<script type="module"
	src="${pageContext.request.contextPath}/newjs/importPage.js"></script>
</head>
<body>
	<header>
		<div class="header fixed-header">
			<!-- Header - bottom -->
			<div class="header-bottom">

				<!-- Header-left -->
				<ul class="header-bottom-left">
					<li class="header-bottom-logo"><a href="#"> <img
							src="/assets/img/logo.svg" alt="logo" />
					</a></li>
				</ul>
				<!-- end Header-left -->
				<!-- Header-right -->
				<ul class="header-bottom-right">
					
					<li class="header-bottom-right-items user">
						<div class="header-bottom-right-item">
							<a href="#"> <i class="far fa-user"></i>
							</a>
						</div>
					</li>
				</ul>
				<!-- end Header-right -->
			</div>
		</div>
	</header>
<%-- 	<h1>
		<c:out value="${sessionScope.id }"></c:out>
	</h1>
	<h1>
		<c:out value="${sessionScope.email }"></c:out>
	</h1> --%>
	<!-- Content wrapper -->
	<div class="content-wrapper">
		<!-- Content -->
		<div class="vendor_block1">
			<div class="intro">
				<span>sao h??? ch???n FPT E-Commerce?</span>
			</div>
			<div class="row intro-group">
				<div class="intro-item">
					<i class="fa-solid fa-magnifying-glass-dollar"></i>
					<h4>?????NH V??? V?? N??NG T???M TH????NG HI???U</h4>
					<p>Dosiin l?? s??n th????ng m???i ??i???n t??? d??nh cho gi???i tr??? ?????u ti??n
						l???n nh???t ??? Vi???t Nam, v???i g???n 300 th????ng hi???u ??ang h???p t??c.</p>
				</div>
				<div class="intro-item">
					<i class="fa-solid fa-user-tie"></i>
					<h4>QU???N L?? B??N H??NG CHUY??N NGHI???P</h4>
					<p>Trang qu???n l?? c???p nh???t s???n ph???m, kho h??ng v?? ????n h??ng, theo
						d??i doanh thu tr???c ti???p, giao di???n d??? thao t??c v?? nhanh ch??ng, ?????i
						so??t li??n t???c, li??n k???t v???i giao h??ng chuy??n nghi???p v???i GHTK.</p>
				</div>
				<div class="intro-item">
					<i class="fa-solid fa-users"></i>
					<h4>TI???P C???N T???P KH??CH H??NG KH???NG L???</h4>
					<p>Website v???i h??n 2 tri???u l?????t truy c???p m???i th??ng, h??? sinh
						th??i Media t????ng t??c cao v???i Fanpage Facebook l??n ?????n n???a tri???u
						l?????t like. H?????ng th???ng m???c ti??u ?????n ?????i t?????ng gi???i tr???, 90% ??? ?????
						tu???i t??? 16-24.</p>
				</div>
				<div class="intro-item">
					<i class="fa-solid fa-chart-line"></i>
					<h4>CH????NG TR??NH MARKETING D??NH RI??NG CHO B???N</h4>
					<p>T??ng doanh thu v?? ????? ph??? s??ng th????ng hi???u v???i c??c ch????ng
						tr??nh Marketing thi???t k??? ri??ng cho t???ng th????ng hi???u. C?? h???i ???????c
						g??p m???t trong c??c s??? ki???n v?? t???p ch?? xu???t b???n v???i l?????t ?????c gi???
						online l??n ?????n n???a tri???u.</p>
				</div>
			</div>
		</div>
		<div class="vendor_block3">
			<div class="intro">
				<span>Tr??? th??nh ?????i t??c c???a FPT E-Commerce</span>
			</div>
			<div class="co-operate">
				<div class="co__video">
					<video class="story" controls="" muted="" autoplay=""
						poster="https://static.dosi-in.com/images/brand_page/hoptac/bg-video.png">
						<source
							src="https://static.dosi-in.com/images/brand_page/hoptac/dosiin.mp4"
							type="video/mp4">
					</video>
				</div>
				<div class="co__form">
					<div class="circle1"></div>
					<div class="circle2"></div>
					<div class="form">
						<h3>WELCOME TO FPT E-Commerce</h3>
						<form:form id="frm_contact"
							action="${pageContext.request.contextPath}/customer/doRegisterShop"
							class="cm-processed-form" method="post" modelAttribute="shop">
<%-- 							<div class="form-group">
								<label class="cm-email cm-required" for="email">?????a ch???
									Email</label>
								<form:input id="email" path="email" name="email" type="text" />
								<div class="error"></div>
							</div> --%>
							<div class="form-group">
								<label class="cm-phone cm-required" for="phone">S??? ??i???n
									tho???i</label>
								<form:input id="phone" name="phone" type="number" path="phone" />
								<div class="error"></div>
							</div>
							<div class="form-group">
								<label class="cm-required" for="name">T??n c???a h??ng</label>
								<form:input id="name" name="name" type="text" path="name" />
								<div class="error"></div>
							</div>
							<button class="btn primary button" type="submit">
								<span>G???i</span>
							</button>
						</form:form>

					</div>

				</div>
			</div>
		</div>
		<!-- / vendor2 -->
		<!-- <div class="vendor_block4">
      <div class="intro">
        <span>CONTACT</span>
      </div>
      <div class="contact">
        <a class="contact-user mail" href="mailto:Trongldde140257@fpt.edu.vn">
          <div class="contact-icon">
            <i class="fa-solid fa-envelope"></i>
          </div>
          <span>Trongldde140257@fpt.edu.vn</span>
        </a>
        <a class="contact-user phone" href="http://zalo.me/0908449577">
          <div class="contact-icon">
            <i class="fa-solid fa-phone"></i>
          </div>
          <span>0933932517</span>
        </a>
      </div>
    </div> -->
	</div>
	<!-- / Content -->


	<!-- build:js assets/vendor/js/core.js -->
	<script src="${pageContext.request.contextPath}/jquery/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/newjs/popper.js"></script>
	<script src="${pageContext.request.contextPath}/newjs/bootstrap.js"></script>
	<script
		src="${pageContext.request.contextPath}/newjs/perfect-scrollbar.js"></script>

	<script src="${pageContext.request.contextPath}/newjs/menu.js"></script>

	<!-- Vendors JS -->
	<script src="${pageContext.request.contextPath}/newjs/apexcharts.js"></script>

	<!-- Main JS -->
	<script src="${pageContext.request.contextPath}/newjs/main.js"></script>

</body>
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
							customer@dosiinvn.com</a></li>
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
				<h5 class="block_heading">V??? Dosiin</h5>

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
										<img
											src="${pageContext.request.contextPath}/imgs/social/credit-card.png"
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

</html>