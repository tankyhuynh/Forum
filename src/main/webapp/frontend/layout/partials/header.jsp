<%@ page import="com.ltk.forum.util.SecurityUtils"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<header id="header" class="fixed-top d-flex align-items-center"
	style="padding-top: 5px; padding-bottom: 5px; background-color: white;">
	<div class="container">
		<nav class="navbar navbar-expand-lg navbar-light">
			<div class="container-fluid">
				<!-- <a href="index.html" class="navbar-brand"><img src="assets/shared/img/logo.png" alt="" class="img-fluid" style="width: 80px;height: 50px"></a> -->
				<a class="navbar-brand" href="#"
					style="text-shadow: 1px 2px 2px rgba(0, 0, 0, 0.6); font-weight: 600; font-size: 30px; color: navy;"><i>ASKUS</i></a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="<c:url value='/trang-chu' />">Trang
								chủ</a></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="<c:url value='/bai-viet' />">Bài
								viết</a></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="<c:url value='/gioi-thieu' /> ">Giới
								thiệu</a></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="<c:url value='/lien-he' />">Liên hệ</a></li>
					</ul>
					<form class="d-flex" style="margin-right: 10px;">
						<input class="form-control me-2" type="search"
							placeholder="Tìm kiếm" aria-label="Search">
						<button class="btn btn-outline-dark" type="submit">Tìm</button>
					</form>

					<security:authorize access="isAnonymous()">
						<a class="nav-link" href="<c:url value='/dang-nhap' /> ">Đăng Nhập</a>
					</security:authorize> 

					<security:authorize access="isAuthenticated()">
						<a class="nav-link active"
							style="padding-left: 0px; color: black;" aria-current="page">Chào,
							<%=SecurityUtils.getPrincipal().getFullName()%>
						</a>
						<a class="nav-link active"
							style="padding-left: 0px; color: black;" aria-current="page"
							href="<c:url value='/thoat'/> ">Thoát</a>
					</security:authorize> 

				</div>
			</div>
		</nav>
	</div>
</header>