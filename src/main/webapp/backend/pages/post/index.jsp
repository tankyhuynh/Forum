<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SB Admin 2 - Dashboard</title>
<%@ include file="../../../backend/layout/style.jsp"%>
<style >
</style>
</head>
<body id="page-top">
	<div id="wrapper">
		<%@ include file="../../../backend/layout/partials/sidebar.jsp"%>
		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>

					<form
						class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
						<div class="input-group">
							<input type="text" class="form-control bg-light border-0 small"
								placeholder="Search for..." aria-label="Search"
								aria-describedby="basic-addon2">
							<div class="input-group-append">
								<button class="btn btn-primary" type="button">
									<i class="fas fa-search fa-sm"></i>
								</button>
							</div>
						</div>
					</form>
					<div class="topbar-divider d-none d-sm-block"></div>

				</nav>
				<div class="container-fluid">
					<div class="container">
						<div
							class="d-sm-flex align-items-center justify-content-between mb-4">
							<h1 class="h3 mb-0 text-gray-800">Trang chủ bài viết</h1>
						</div>
						<a href="<c:url value='/quan-tri/them-bai-viet'/>" class="btn btn-success mb-3">Thêm bài viết</a>
						<div class="table-responsive container" >
							<table class="table table-hover">
								<thead>
									<tr style="text-align: center;">
										<th>Mã Bài Viết</th>
										<th>Mã Người Dùng</th>
										<th>Tiêu Đề</th>
										<th>Nội Dung</th>
										<th>Trạng Thái</th>
										<th>Thời Gian</th>
										<th>Hành Động</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="post" items="${postList}">
										<tr>
											<td>${post.id}</td>
											<td>${post.userId.id}</td>
											<td>${post.title}</td>
											<td>${post.content}</td>
											<td>${post.statusId.statusName}</td>
											<td>${post.time}</td>
											<td class="d-flex">
												<div style="padding-right: 10px">
													<a style="width: 100px" class="btn btn-warning"
														href="<c:url value='/quan-tri/sua-bai-viet/${post.id}'/>">Chỉnh
														sửa</a>
												</div>
												<div style="padding-right: 10px">
													<a style="width: 100px" class="btn btn-danger"
														href="<c:url value='/quan-tri/xoa-bai-viet/${post.id}'/>">Xóa</a>
												</div>
												<div>
													<a style="width: 100px" class="btn btn-success"
														href="<c:url value='/quan-tri/lich-su-bai-viet/${post.id}'/>">Lịch Sử</a>
												</div>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../../../backend/layout/partials/footer.jsp"%>
	<%@ include file="../../../backend/layout/script.jsp"%>
</body>
</html>