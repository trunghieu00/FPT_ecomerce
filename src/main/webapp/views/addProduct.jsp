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
<title>Add Product</title>
<!------------ CSS core ------------ -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/core.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/theme-default.css">
<!--========== CSS ==========-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/sideBar.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/header.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/AddProduct.css">
<!------------- Add Mutiple Image -------------->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> -->

<!--------------- form ------------------------------- -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
	rel="stylesheet">
<!--========== BOX ICONS ==========-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
<!-- FontAwsome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/fonts/fontawesome-free-6.1.1-web/css/all.min.css">
<!-------------- SummerNote ------------>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<link
	href="${pageContext.request.contextPath}/assets/vendor/summernote/summernote-bs4.min.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/assets/vendor/summernote/summernote-bs4.min.js"></script>

</head>

<body>

	<!-- Header -->
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
											href="${pageContext.request.contextPath}/shop/updateShopInfo">
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
		</div>
	</header>
	<!-- end Header -->
	<!--========== NAV ==========-->
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
											<a href=""
											class="nav__dropdown-item"></a> 
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
	<div class="layout-page">
		<div class="content-wrapper">
			<div class="col-sm-12 flex-grow-1">
				<div class="row">
					<div class="center-block col-xxl">
						<form:form id="form-addProduct" class="card mb-3 mb-lg-5"
							action="${pageContext.request.contextPath}/shop/doAddProduct"
							method="post" modelAttribute="product"
							enctype="multipart/form-data">
							<!-- Header -->
							<div class="card-header">
								<h4 class="card-header-title">Th??ng tin s???n ph???m</h4>
							</div>
							<!-- End Header -->

							<!-- Body -->
							<div class="card-body">
								<!-- Form Group -->
								<div class="row">
									<div class="col-sm-6">
										<div class="form-group">
											<label for="productNameLabel" class="input-label">T??n
												SP <i class="tio-help-outlined text-body ml-1"
												data-toggle="tooltip" data-placement="top"
												title="Products are the goods or services you sell."></i>
											</label>

											<form:input type="text" cssClass="form-control"
												name="productName" id="productNameLabel"
												placeholder="??o, qu???n..." aria-label="Shirt, t-shirts, etc."
												path="name" />

										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label for="productNameLabel" class="input-label">M??
												SP <i class="tio-help-outlined text-body ml-1"
												data-toggle="tooltip" data-placement="top"
												title="Products are the goods or services you sell."></i>
											</label>

											<form:input type="text" cssClass="form-control"
												name="productName" id="productNameLabel" path="code" />

										</div>
									</div>
								</div>
								<!-- End Form Group -->

								<div class="row">
									<div class="col-sm-6">
										<div class="form-group">
											<label for="productPrice" class="input-label">Gi??</label>
											<div class="input-group input-group-merge">
												<span class="input-group-text">VND</span>
												<form:input type="text" id="productPrice"
													cssClass="form-control" placeholder="100"
													aria-label="Amount (to the nearest dollar)"
													path="unitPrice" />
												<!-- <span class="input-group-text">.00</span>-->
											</div>
										</div>
									</div>

									<div class="col-sm-6">
										<div class="form-group">
											<div class="mb-3 form-group">
												<label for="productGender" class="input-label">Gi???i
													t??nh</label>
												<form:select id="productGender" cssClass="form-select"
													path="productDetailsEntity.gender">
													<form:option value="0">Ch???n gi???i t??nh</form:option>
													<form:option value="1">Nam</form:option>
													<form:option value="2">N???</form:option>
													<form:option value="3">Gi???i t??nh kh??c</form:option>
												</form:select>
											</div>
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-6">
										<!-- Form Group -->
										<div class="form-group">
											<label for="productQuantity" class="input-label">M??u</label>
											<form:input type="text" cssClass="form-control" name="Color"
												id="productColor" placeholder="?????, xanh, t??m, v??ng..."
												path="productDetailsEntity.color" />
										</div>
										<!-- End Form Group -->
									</div>
									<div class="col-sm-6">
										<!-- Form Group -->
										<div class="form-group">
											<label for="productMaterial" class="input-label">Th????ng
												hi???u</label>
											<form:input type="text" cssClass="form-control" name="Brand"
												id="productBrand" placeholder="Nike, Adidas, Inc"
												aria-label="eg. 348121032" path="brand" />
										</div>
										<!-- End Form Group -->
									</div>
								</div>

								<div class="row">
									<div class="col-sm-6">
										<!-- Form Group -->
										<div class="form-group">
											<label for="productMaterial" class="input-label">Ch???t
												li???u</label>
											<form:input type="text" cssClass="form-control"
												name="Material" id="productMaterial"
												aria-label="eg. 348121032"
												path="productDetailsEntity.material" />
										</div>
										<!-- End Form Group -->

									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label for="productMaterial" class="input-label">M??
												Khuy???n M??i</label>
											<form:input type="text" cssClass="form-control"
												name="Material" id="productMaterial"
												aria-label="eg. 348121032" path="discountEntity.code" />
										</div>
									</div>
								</div>


								<div class="row">
									<div class="col-sm-6">
										<div class="mb-3 form-group">
											<label for="productSubCategory" class="input-label">Danh
												m???c ph???</label>
											<form:select id="productSubCategory" cssClass="form-select"
												path="subCategoryEntity.id">
												<form:option value="0">Ch???n danh m???c ph???</form:option>
												<c:forEach items="${subcategory }" var="item">
													<form:option value="${item.id }">${item.nameSub }</form:option>
												</c:forEach>
											</form:select>
										</div>
									</div>
									<div class="col-sm-6">

										<div class="form-group">
											<label for="productMaterial" class="input-label">Ph???n
												tr??m khuy???n m??i</label>
											<form:input type="text" cssClass="form-control"
												name="Material" id="productMaterial"
												aria-label="eg. 348121032" path="discountEntity.percentz" />
										</div>

									</div>

								</div>

								<div class="row">
									<div class="col-sm-6">
										<!-- Form Group -->
										<div class="form-group">
											<label for="productQuantity" class="input-label">Ng??y
												b???t ?????u KM</label>
											<form:input type="date" cssClass="form-control" name="Color"
												id="productColor" path="discountEntity.startDateDiscount" />
										</div>
										<!-- End Form Group -->
									</div>
									<div class="col-sm-6">
										<!-- Form Group -->
										<div class="form-group">
											<label for="productMaterial" class="input-label">Ng??y
												k???t th??c KM</label>
											<form:input type="date" cssClass="form-control" name="Brand"
												id="productBrand" path="discountEntity.endDateDiscount" />
										</div>
										<!-- End Form Group -->
									</div>
								</div>

								<div class="row">
									<div class="col-sm-12">
										<div class="form-group ">
											<label class="input-label d-block">Size</label>
											<div class="checkbox-size">

												<div class="size-left">
													<div class="size-wrap ">
														<div class="size-tile">
															<form:checkbox
																cssClass="form-check-input check-inline  check item"
																id="sizexs" path="productDetailsEntity.size" value="XS" />
															<span>XS</span>
														</div>
														<div class="">
															<div class=" cost-box">
																<div class="">
																	<form:input cssClass="form-control sizexs"
																		placeholder="Nh???p s??? l?????ng" path="quantity" />
																</div>
															</div>
														</div>
													</div>
													<div class="size-wrap">
														<div class="size-tile tile-right">
															<form:checkbox id="sizes" value="S"
																path="productDetailsEntity.size"
																cssClass="form-check-input check-inline  check item" />
															<span>S</span>
														</div>
														<div class="">
															<div class=" cost-box">
																<div class="">
																	<form:input class="form-control sizes"
																		placeholder="Nh???p s??? l?????ng" path="quantity" />
																</div>
															</div>
														</div>
													</div>
												</div>

												<div class="size-center">
													<div class="size-wrap ">
														<div class="size-tile">
															<form:checkbox id="sizem" value="M"
																cssClass="form-check-input check-inline  check item"
																path="productDetailsEntity.size" />
															<span>M</span>
														</div>
														<div class="">
															<div class=" cost-box">
																<div class="">
																	<form:input cssClass="form-control sizem"
																		placeholder="Nh???p s??? l?????ng" path="quantity" />

																</div>
															</div>
														</div>
													</div>
													<div class="size-wrap ">
														<div class="size-tile tile-right">
															<form:checkbox id="sizel" value="L"
																cssClass="form-check-input check-inline  check item"
																path="productDetailsEntity.size" />
															<span>L</span>
														</div>
														<div class="">
															<div class=" cost-box">
																<div class="">
																	<form:input cssClass="form-control sizel"
																		placeholder="Nh???p s??? l?????ng" path="quantity" />

																</div>
															</div>
														</div>
													</div>
												</div>

												<div class="size-right">
													<div class="size-wrap ">
														<div class="size-tile ">
															<form:checkbox id="sizexl" value="XL"
																cssClass="form-check-input check-inline  check item"
																path="productDetailsEntity.size" />
															<span>XL</span>
														</div>
														<div class="">
															<div class=" cost-box">
																<div class="">
																	<form:input class="sizexl form-control"
																		placeholder="Nh???p s??? l?????ng" path="quantity" />
																</div>
															</div>
														</div>
													</div>

													<div class="size-wrap ">
														<div class="size-tile tile-right">
															<form:checkbox id="sizexxl" value="XXL"
																class="form-check-input check-inline  check item"
																path="productDetailsEntity.size" />
															<span>XXL</span>
														</div>
														<div class="">
															<div class=" cost-box">
																<div class="">
																	<form:input class="sizexxl form-control"
																		placeholder="Nh???p s??? l?????ng" path="quantity" />
																</div>
															</div>
														</div>
													</div>


												</div>

											</div>
										</div>
									</div>

									<div class="">
										<div class="form-group">
											<label for="productDescription" class="input-label">M??
												t??? s???n ph???m</label>
											<form:textarea id="productDescription" path="description"></form:textarea>
										</div>
									</div>

									<div class="row">
										<label class="input-label">???nh s???n ph???m</label>
										<div class="col-sm-3">
											<div class="upload__box">
												<div class="upload__btn-box">
													<label class="upload__btn">
														<p>T???i l??n ???nh 1</p> <input type="file" name="multipartFile"
														class="upload__inputfile">
													</label>
												</div>
												<div class="upload__img-wrap"></div>
											</div>
										</div>
										<div class="col-sm-3">
											<div class="upload__box">
												<div class="upload__btn-box">
													<label class="upload__btn">
														<p>T???i l??n ???nh 2</p> <input type="file" name="multipartFile1"
														class="upload__inputfile">
													</label>
												</div>
												<div class="upload__img-wrap"></div>
											</div>
										</div>
										<div class="col-sm-3">
											<div class="upload__box">
												<div class="upload__btn-box">
													<label class="upload__btn">
														<p>T???i l??n ???nh 3</p> <input type="file" name="multipartFile2"
														class="upload__inputfile">
													</label>
												</div>
												<div class="upload__img-wrap"></div>
											</div>
										</div>
										<div class="col-sm-3">
											<div class="upload__box">
												<div class="upload__btn-box">
													<label class="upload__btn">
														<p>T???i l??n ???nh 4</p> <input type="file" name="multipartFile3"
														class="upload__inputfile">
													</label>
												</div>
												<div class="upload__img-wrap"></div>
											</div>
										</div>

									</div>

									<div class="btn btnArond">
										<a onclick="clearForm()">
											<button type="button" class="btn btn-warning">X??a t???t c???</button>
										</a> <a href="#">
											<button type="submit" class="btn button primary">
												<span>X??c Nh???n</span>
											</button>
										</a> <a href="${pageContext.request.contextPath}/shop/listProduct">
											<button type="button" class="btn btn-danger">H???y</button>
										</a>
									</div>

								</div>
								<!-- Body -->
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="${pageContext.request.contextPath}/newjs/AddProduct.js"></script>
	<script src="${pageContext.request.contextPath}/newjs/popup.js"></script>
</body>

</html>