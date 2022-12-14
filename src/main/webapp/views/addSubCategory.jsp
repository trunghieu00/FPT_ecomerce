<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

<title>FPT-EC</title>

<meta name="description" content="" />

<!-- Favicon -->
<link rel="icon" type="image/x-icon"
	href="../imgs/logo.png" />

<!-- FontAwsome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/fonts/fontawesome-free-6.1.1-web/css/all.min.css">

<!-- Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link
	href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
	rel="stylesheet" />

<!-- Icons. Uncomment required icon fonts -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/fonts/boxicons.css" />

<!-- Core CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/css/core.css"
	class="template-customizer-core-css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/css/theme-default.css"
	class="template-customizer-theme-css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/AddCategory.css" />

<!-- Vendors CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/libs/apex-charts/apex-charts.css" />

<!-- Page CSS -->

<!-- Helpers -->
<script
	src="${pageContext.request.contextPath}/assets/vendor/js/helpers.js"></script>

<!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
<!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
<script src="${pageContext.request.contextPath}/assets/js/config.js"></script>
</head>
<body>
	<!-- Layout wrapper -->
	<div class="layout-wrapper layout-content-navbar">
		<div class="layout-container">
			<!-- Menu -->

			<aside id="layout-menu"
				class="layout-menu menu-vertical menu bg-menu-theme">
				<div class="app-brand demo">
					<a href="${pageContext.request.contextPath}/home" class="app-brand-link"> <span
						class="app-brand-logo demo">  <img alt="" src="../imgs/logo.png">
					</span> <span class="app-brand-text demo menu-text fw-bolder ms-2">FPT-EC</span>
					</a> <a href="javascript:void(0);"
						class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
						<i class="bx bx-chevron-left bx-sm align-middle"></i>
					</a>
				</div>

				<div class="menu-inner-shadow"></div>

				<ul class="menu-inner py-1">
					<!-- Dashboard -->
					<li class="menu-item active"><a href=""
						class="menu-link"> <i
							class="menu-icon tf-icons bx bx-home-circle"></i>
							<div data-i18n="Analytics">B???ng ??i???u khi???n</div>
					</a></li>

					<!-- E-Commerce -->
					<li class="menu-header small text-uppercase"><span
						class="menu-header-text">E-Commerce</span></li>
					<li class="menu-item"><a href="javascript:void(0);"
						class="menu-link menu-toggle"> <i
							class="menu-icon tf-icons bx bx-dock-top"></i>
							<div data-i18n="Category">Danh m???c</div>
					</a>
						<ul class="menu-sub">
							<li class="menu-item"><a href="${pageContext.request.contextPath}/admin/listCategory"
								class="menu-link">
									<div data-i18n="CategoryList">T???t c??? danh m???c</div>
							</a></li>
							<li class="menu-item"><a href="${pageContext.request.contextPath}/admin/addCategory"
								class="menu-link">
									<div data-i18n="AddCategory">Th??m danh m???c</div>
							</a></li>

						</ul></li>



					<li class="menu-item active"><a href="javascript:void(0);"
						class="menu-link menu-toggle"> <!-- <i class="menu-icon tf-icons bx bx-dock-top"></i> -->
							<i class="menu-icon tf-icons bx bx-copy"></i>
							<div data-i18n="SubCategory">Danh m???c ph???</div>
					</a>
						<ul class="menu-sub">
							<li class="menu-item"><a href="${pageContext.request.contextPath}/admin/listSubCategory"
								class="menu-link">
									<div data-i18n="SubCategoryList">T???t c??? danh m???c ph???</div>
							</a></li>
							<li class="menu-item active"><a href="${pageContext.request.contextPath}/admin/addSubCategory"
								class="menu-link">
									<div data-i18n="AddSubCategory">Th??m danh m???c ph???</div>
							</a></li>

						</ul></li>

					<!-- <li class="menu-item">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
              <i class="menu-icon tf-icons bx bx-lock-open-alt"></i>
              <div data-i18n="SubCategory"> Sub Caregory</div>
            </a>
            <ul class="menu-sub">
              <li class="menu-item">
                <a href="./SubCategoryList.Html" class="menu-link">
                  <div data-i18n="SubCategoryList"> Sub Category List</div>
                </a>
              </li>
              <li class="menu-item">
                <a href="./AddSubCategory.html" class="menu-link">
                  <div data-i18n="AddSubCategory">Add Sub Category</div>
                </a>
              </li>

            </ul>
          </li> -->



<li class="menu-item"><a href="javascript:void(0);"
						class="menu-link menu-toggle"> <i
							class="menu-icon tf-icons bx bx-cube-alt"></i>
							<div data-i18n="Misc">Y??u C???u</div>
					</a>
						<ul class="menu-sub">
							<li class="menu-item"><a href="${pageContext.request.contextPath}/admin/requestProduct"
								class="menu-link">
									<div data-i18n="Error">Y??u c???u s???n ph???m</div>
							</a></li>
							<li class="menu-item"><a
								href="${pageContext.request.contextPath}/admin/requestShop" class="menu-link">
									<div data-i18n="Under Maintenance">Y??u c???u tr??? th??nh Shop</div>
							</a></li>
						</ul></li>
				</ul>
			</aside>
			<!-- / Menu -->

			<!-- Layout container -->
			<div class="layout-page">
				<!-- Navbar -->
				<nav
					class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
					id="layout-navbar">
					<div
						class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
						<a class="nav-item nav-link px-0 me-xl-4"
							href="javascript:void(0)"> <i class="bx bx-menu bx-sm"></i>
						</a>
					</div>

					<div class="navbar-nav-right d-flex align-items-center"
						id="navbar-collapse">
						<!-- Search -->
						<div class="navbar-nav align-items-center">
							<div class="nav-item d-flex align-items-center">
								<i class="bx bx-search fs-4 lh-0"></i> <input type="text"
									class="form-control border-0 shadow-none"
									placeholder="Search..." aria-label="Search..." />
							</div>
						</div>
						<!-- /Search -->

						<ul class="navbar-nav flex-row align-items-center ms-auto">
							<!-- Place this tag where you want the button to render. -->
							<li class="nav-item lh-1 me-3">
								<button
									class="btn rounded-pill btn-icon btn-outline-secondary
                ">
									<i class="fa-solid fa-bell"></i>
								</button>

							</li>

							<!-- User -->
							<li class="nav-item navbar-dropdown dropdown-user dropdown">
								<a class="nav-link dropdown-toggle hide-arrow"
								href="javascript:void(0);" data-bs-toggle="dropdown">
									<div class="avatar avatar-online">
										<img src="../assets/img/avatars/1.png" alt
											class="w-px-40 h-auto rounded-circle" />
									</div>
							</a>
								<ul class="dropdown-menu dropdown-menu-end">
									<li><a class="dropdown-item" href="#">
											<div class="d-flex">
												<div class="flex-shrink-0 me-3">
													<div class="avatar avatar-online">
														<img src="../assets/img/avatars/1.png" alt
															class="w-px-40 h-auto rounded-circle" />
													</div>
												</div>
												<div class="flex-grow-1">
													<span class="fw-semibold d-block">Admin</span> <small
														class="text-muted"></small>
												</div>
											</div>
									</a></li>
									<li>
										<div class="dropdown-divider"></div>
									</li>								
									<li><a class="dropdown-item" href="${pageContext.request.contextPath}/logout">
											<i class="bx bx-power-off me-2"></i> <span
											class="align-middle">????ng xu???t</span>
									</a></li>
								</ul>
							</li>
							<!--/ User -->
						</ul>
					</div>
				</nav>

				<!-- / Navbar -->

				<!-- Content wrapper -->
				<div class="content-wrapper">
					<!-- Content -->
					<div class="col-sm-8 center-block">
						<div class="card-body">
							<div class="card mb-4 ">
								<form:form action="doAddSubCategory" id="form-addCate"
									method="post" modelAttribute="subcategory">
									<h4 class="card-header">TH??M DANH M???C PH???</h4>
									<div class="card-body ">
										<div class="add-Name-Code">
											<c:if test="${message != null }">
												<span style="color: red"><c:out value="${message }"></c:out></span>
											</c:if>
											<div class="input-group dropdown-cate">
												<label class="input-group-text" for="inputGroupSelect01">Danh m???c</label>
												<form:select cssClass="form-select" id="inputGroupSelect01"
													path="category.id">
													<form:option value="0">Ch???n danh m???c t???i ????y...</form:option>
													<c:forEach items="${category }" var="item">
														<form:option value="${item.id }">${item.name }</form:option>
													</c:forEach>
												</form:select>
												 <span   style="color: red" id="choosecate_error"></span>
											</div>
											<div class="mb-3">
												<label for="defaultInput" class="form-label">T??n danh m???c ph???</label>
												<form:input path="nameSub" id="nameSub"
													cssClass="form-control" type="text"
													placeholder="Nh???p t??n..." />
													 <span  style="color: red" id="addsubcate_error"></span>
											</div>
											<div class="mb-3">
												<label for="defaultInput" class="form-label">M?? danh m???c ph???</label>
												<form:input path="codeSub" id="codeSub"
													cssClass="form-control" type="text"
													placeholder="Nh???p m??..." />
													 <span  style="color: red" id="addcodesubcate_error"></span>
											</div>
										</div>
										<div class="btn btnArond">
											<a onclick="clearForm()">
												<button type="button" class="btn btn-warning">X??a t???t c???</button>
											</a> <a href="#">
												<button type="submit" class="btn btn-primary">X??c nh???n</button>
											</a> <a href="./CategoryList.Html">
												<button type="button" class="btn btn-danger">????ng</button>
											</a>
										</div>


									</div>
								</form:form>
							</div>

						</div>
					</div>




				</div>
				<!-- / Content -->

				<!-- Footer -->
				<footer class="content-footer footer bg-footer-theme">
					<div
						class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
						<div class="mb-2 mb-md-0">
							??
							<script>
								document.write(new Date().getFullYear());
							</script>
							, made with ?????? by <a href="#" target="_blank"
								class="footer-link fw-bolder">Group 19 - FPT University</a>
						</div>
						<div>
							<a
								href="https://github.com/themeselection/sneat-html-admin-template-free/issues"
								target="_blank" class="footer-link me-4">Support</a>
						</div>
					</div>
				</footer>
				<!-- / Footer -->

				<div class="content-backdrop fade"></div>
			</div>
			<!-- Content wrapper -->
		</div>
		<!-- / Layout page -->
	</div>

	<!-- Overlay -->
	<div class="layout-overlay layout-menu-toggle"></div>
	<!-- / Layout wrapper -->



	<!-- Core JS -->
	<!-- build:js assets/vendor/js/core.js -->
	<script
		src="${pageContext.request.contextPath}/assets/vendor/libs/jquery/jquery.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/vendor/libs/popper/popper.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/vendor/js/bootstrap.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

	<script
		src="${pageContext.request.contextPath}/assets/vendor/js/menu.js"></script>
	<!-- endbuild -->

	<!-- Vendors JS -->
	<script src="../assets/vendor/libs/apex-charts/apexcharts.js"></script>

	<!-- Main JS -->
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>

	<!-- Page JS -->
	<script
		src="${pageContext.request.contextPath}/assets/js/dashboards-analytics.js"></script>

	<!-- Clear form btn -->
	<script>
		function clearForm() {
			document.getElementById("form-addCate").reset();
		}
	</script>
	<script src="http://code.jquery.com/jquery-3.4.1.min.js" 
    integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
<script type="text/javascript"
    src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.1/dist/jquery.validate.js"></script>
	
	<script type="text/javascript">
	$(document).ready(function()
			{
			    $('#form-addCate').submit(function(){
			 
			        // B?????C 1: L???y d??? li???u t??? form
			        var nameSub   = $.trim($('#nameSub').val());
			        var codesub   = $.trim($('#codesub').val());
			        var inputGroupSelect01  = $.trim($('#inputGroupSelect01').val());
				     
			     
			 
			      
			        var flag = true;
			 
			        
			        if (inputGroupSelect01 == '' ){
			            $('#choosecate_error').text('Vui l??ng ch???n danh m???c !');
			            flag = false;
			        }
			        else{
			            $('#choosecate_error').text('');
			        }
			        // subcategory
			        if (nameSub == '' ){
			            $('#addsubcate_error').text('Vui l??ng nh???p t??n danh m???c ph??? !');
			            flag = false;
			        }
			        else{
			            $('#addsubcate_error').text('');
			        }
			        // codesubcategory
			        if (codesub == '' ){
			            $('#addcodesubcate_error').text('Vui l??ng nh???p  m?? danh m???c ph??? !');
			            flag = false;
			        }
			        else{
			            $('#addcodesubcate_error').text('');
			        }
			 
			 
			    
			 
			     
			 
			        return flag;
			    });
			});
    </script>

</body>
</html>