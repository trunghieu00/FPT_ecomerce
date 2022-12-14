<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Discount List</title>
<!------------ CSS core ------------ -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/core.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/theme-default.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/ProductList.css">

<!------------- Add Mutiple Image -------------->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"></script>

<!----Header---->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/sideBar.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/header.css" />
<!--------------- form ------------------------------- -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
	rel="stylesheet">



<!-- FontAwsome...Icon -->
<link rel="stylesheet"
	href="../assets/vendor/fonts/fontawesome-free-6.1.1-web/css/all.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
<!-- Helpers -->
<script src="${pageContext.request.contextPath}/newjs/helpers.js"></script>
<!---------------  Import Header JS ---------------->
<script type="module"
	src="${pageContext.request.contextPath}/newjs/importPage.js"></script>
</head>
<div class="preloader">
	<div class="preloader-inner">
		<div class="preloader-icon">
			<span></span> <span></span>
		</div>
	</div>
</div>
<header class="header-wrapper">
	<div class="header fixed-header">
		<!-- Header - bottom -->
		<div class="header-bottom">

			<!-- Header-left -->
				<ul class="header-bottom-left">
				<!-- begin SideBar toggle -->
					<div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
						<a  onclick="openNav()" class="btn btn-default openbtn"><i
							class="bx bx-menu bx-sm"></i></a>
					</div>
					<!-- emd SideBar toggle -->
					<li class="header-bottom-logo"><a
						href="${pageContext.request.contextPath}/home"> <img
							src="${pageContext.request.contextPath}/imgs/logo.png"
							alt="logo" />
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
	</div>
</header>
<aside class="nav" id="layout-menu" >
	<i class="fa-solid fa-angle-left" onclick="closeNav()"></i>
		<nav class="nav__container " id="layout-navbar">

			<div class="list-group">


				<div id="wrapper-navbar">
					<div class="nav__list">
						<div class="nav__items">
							<!-- <div class="top-nav">
                              <h3 class="nav__subtitle">Menu</h3>
                          </div> -->
							<!-- <a href="#" class="nav__link active">
                              <i class='bx bx-home nav__icon'></i>
                              <span class="nav__name">Home</span>
                          </a> -->

							<div class="nav__dropdown">
								<a class="nav__link"> <i class='bx bx-closet nav__icon'></i>
									<span class="nav__name">Qu???n l?? s???n ph???m</span>

								</a>

								<div class="nav__dropdown-collapse">
									<div class="nav__dropdown-content">
										<a href="${pageContext.request.contextPath}/shop/listProduct"
											class="nav__dropdown-item">T???t c??? s???n ph???m</a> <a
											href="${pageContext.request.contextPath}/shop/addProduct"
											class="nav__dropdown-item">Th??m s???n ph???m</a> 
											<a href="${pageContext.request.contextPath}/shop/listProductBanned"
											class="nav__dropdown-item">S???n ph???m vi ph???m</a>
									</div>
								</div>
							</div>

							<div class="nav__dropdown">
								<a class="nav__link"> <i class='bx bx-task nav__icon'></i> <span
									class="nav__name">Qu???n l?? ????n h??ng</span>

								</a>

								<div class="nav__dropdown-collapse">
									<div class="nav__dropdown-content">
										<a href="${pageContext.request.contextPath}/shop/listOrder"
											class="nav__dropdown-item">T??t c??? ????n h??ng</a> 
											<a  class="nav__dropdown-item"></a>
									</div>
								</div>
							</div>

							<a href="${pageContext.request.contextPath}/shop/listDiscount" class="nav__link"> <i
								class='bx bxs-discount nav__icon'></i> <span class="nav__name">Khuy???n m??i</span>
							</a><!--  <a href="#" class="nav__link"> <i
								class=' bx bxs-bar-chart-square nav__icon'></i> <span
								class="nav__name">Report</span> -->
							</a>
						</div>
					</div>
				</div>
			</div>
		</nav>
	</aside>
<body>

	<div class="">
		<!-- Content wrapper -->
		<div class="content-wrapper">
			<!-- Content -->
			<div class=" flex-grow-1 container-p-y">
				<div class="row">
					<div class="col-xxl col-sm-12">
						<form:form
							action="${pageContext.request.contextPath}/shop/doSearchDiscount"
							method="get">

							<div class="card mb-4 ">
								<div class="col-md-12">
									<div class="form-group">
										<label for="categoryName" class=""></label> <input
											type="text" class="form-control" name="keyword"
											id="categoryName"
											placeholder="Nh???p t??n ho???c code c???a m?? khuy???n m??i"> <input
											type="hidden" class="form-control" name="idShop"
											id="categoryName" value="${sessionScope.idShop }">
									</div>

								</div>
								<div class="row">
									<div class="btn-group">
										<a href="#">
											<button type="submit" class="button btn primary">
												<span>t??m ki???m</span>
											</button>
										</a> <a href="#">
											<button type="button"
												class="btn btn-outline-secondary btn-clear">
												<span>X??a</span>
											</button>
										</a>
									</div>
								</div>
							</div>

						</form:form>
					</div>


					<div class="card mb-4 ">
						<div class="header-table">
							<h4 class="card-header">Danh s??ch khuy???n m??i</h4>
							<div class="btnArond">
								<a href="${pageContext.request.contextPath}/shop/addDiscount">
									<button type="button" class="button btn primary">
										<i class="fas fa-plus icon-fas"></i> <span>Th??m khuy???n m??i</span>
									</button>

								</a>
								<!-- <button type="button" class="btn btn-primary"><i class="fas fa-plus icon-fas"></i>Add Sub-Category</button> -->
							</div>
						</div>
						<div class=" table-responsive text-nowrap">
							<table class="table table-hover">
								<thead class="table-light">
									<tr>
										<th>STT</th>
										
										<th>M?? gi???m gi??</th>
										<th>Ph???n tr??m khuy???n m??i</th>
										<th>Ng??y b???t ?????u</th>
										<th>Ng??y k???t th??c</th>
										<th>Actions</th>

									</tr>
								</thead>
								<tbody class=" table-border-bottom-0">
									<c:choose>
										<c:when
											test="${listDiscount !=null && listDiscount.size() gt 0}">
											<c:forEach items="${requestScope.listDiscount }" var="item"
												varStatus="theCount">

												<tr>
													<th scope="row"><c:out value="${theCount.count}"></c:out></th>
													<%-- <td><c:out value="${item.name }"></c:out></td> --%>
													<td><c:out value="${item.code }"></c:out></td>
													<td><c:out value="${item.percentz }"></c:out></td>
													<td><c:out value="${item.startDateDiscount }"></c:out></td>

													<td><c:out value="${item.endDateDiscount }"></c:out></td>

													<td>
														<div class="dropdown">
															<button type="button"
																class="btn p-0 dropdown-toggle hide-arrow"
																data-bs-toggle="dropdown">
																<i class="bx bx-dots-vertical-rounded"></i>
															</button>
															<div class="dropdown-menu">
																<a class="dropdown-item"
																	href="${pageContext.request.contextPath}/shop/updateDiscount?id=${item.id }"><i
																	class="bx bx-edit-alt me-1"></i> Ch???nh s???a</a> <a
																	class="dropdown-item" href="#"
																	onclick="showMess(${item.id})"><i
																	class="bx bx-trash me-1"></i> X??a</a>
															</div>
														</div>
													</td>
												</tr>
											</c:forEach>
											<tr>
												<td colspan="12"><c:import url="common/paging.jsp" />
												</td>
											</tr>
										</c:when>
										<c:otherwise>
											<tr>
												<td style="color: red; text-align: center" colspan="12">No
													data found</td>
											</tr>
										</c:otherwise>
									</c:choose>
								</tbody>
							</table>
						</div>
					</div>

				</div>
			</div>
		</div>

	</div>

	<!-- / Content -->
	</div>


	<!-- build:js assets/vendor/js/core.js -->
	<script src="${pageContext.request.contextPath}/jquery/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/newjs/popper.js"></script>
	<script src="${pageContext.request.contextPath}/newjs/bootstrap.js"></script>
	<script src="${pageContext.request.contextPath}/newjs/menu.js"></script>
	<script src="${pageContext.request.contextPath}/newjs/main.js"></script>

	<script
		src="${pageContext.request.contextPath}/newjs/perfect-scrollbar.js"></script>

	<!-- ================= Upload Mutilple Image ===================== -->
	<script>
		jQuery(document).ready(function() {
			ImgUpload();
		});

		function ImgUpload() {
			var imgWrap = "";
			var imgArray = [];

			$('.upload__inputfile')
					.each(
							function() {
								$(this)
										.on(
												'change',
												function(e) {
													imgWrap = $(this)
															.closest(
																	'.upload__box')
															.find(
																	'.upload__img-wrap');
													var maxLength = $(this)
															.attr(
																	'data-max_length');

													var files = e.target.files;
													var filesArr = Array.prototype.slice
															.call(files);
													var iterator = 0;
													filesArr
															.forEach(function(
																	f, index) {

																if (!f.type
																		.match('image.*')) {
																	return;
																}

																if (imgArray.length > maxLength) {
																	return false
																} else {
																	var len = 0;
																	for (var i = 0; i < imgArray.length; i++) {
																		if (imgArray[i] !== undefined) {
																			len++;
																		}
																	}
																	if (len > maxLength) {
																		return false;
																	} else {
																		imgArray
																				.push(f);

																		var reader = new FileReader();
																		reader.onload = function(
																				e) {
																			var html = "<div class='upload__img-box'><div style='background-image: url("
																					+ e.target.result
																					+ ")' data-number='"
																					+ $(".upload__img-close").length
																					+ "' data-file='"
																					+ f.name
																					+ "' class='img-bg'><div class='upload__img-close'></div></div></div>";
																			imgWrap
																					.append(html);
																			iterator++;
																		}
																		reader
																				.readAsDataURL(f);
																	}
																}
															});
												});
							});

			$('body').on('click', ".upload__img-close", function(e) {
				var file = $(this).parent().data("file");
				for (var i = 0; i < imgArray.length; i++) {
					if (imgArray[i].name === file) {
						imgArray.splice(i, 1);
						break;
					}
				}
				$(this).parent().parent().remove();
			});
		}
	</script>


	<!----------------All Checked -------------------->
	<script src="${pageContext.request.contextPath}/newjs/checkAll.js"></script>

	<!-- ============= Clear Button ============== -->
	<script>
		function clearForm() {
			document.getElementById("form-addProduct").reset();
		}
	</script>

	<script>
		var e = document.getElementById("ddlViewBy");
		function show() {
			var as = document.forms[0].ddlViewBy.value;
			var strUser = e.options[e.selectedIndex].value;
			console.log(as, strUser);
		}
		e.onchange = show;
		show();
	</script>
	<script>
		function showMess(id) {
			var option = confirm('Are you sure to delete');
			if(option === true) {
				window.location.href = 'deleteDiscount?id=' + id;
			}
		}
	</script>
	<!-- Nice Select JS -->
	<script src="${pageContext.request.contextPath}/js1/nicesellect.js"></script>
	<!-- Active JS -->
	<script src="${pageContext.request.contextPath}/js1/active.js"></script>
	<script src="${pageContext.request.contextPath}/newjs/popup.js"></script>
</body>

</html>