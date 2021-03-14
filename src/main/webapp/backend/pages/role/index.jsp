<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SB Admin 2 - Dashboard</title>
<%@ include file="../../../backend/layout/style.jsp"%>
</head>
<body id="page-top">
	<div id="wrapper">
		<%@ include file="../../../backend/layout/partials/sidebar.jsp"%>
		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

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
							<h1 class="h3 mb-0 text-gray-800">Trang chủ vai trò</h1>
						</div>
						<a href="#"
							class="btn btn-success mb-3">Thêm vai trò</a>
						<div class="table-responsive-md container">
							<table class="table table-hover">
								<thead>
									<tr>
										<th>Mã Vai Trò</th>
										<th>Mã Tóm Tắt</th>
										<th>Tên Vai Trò</th>
									</tr>
								</thead>
								<%-- <tbody>
									<c:forEach var="item" items="${model}">
										<tr>
											<td>${}</td>
											<td>${}</td>
											<td>${}</td>
											<td>${}</td>
											<td>${}</td>
											<td>${}</td>
											<td class="d-flex">
												<div style="padding-right: 20px;">
													<a class="btn btn-warning"
														href="id=${}">Chỉnh
														sửa</a>
												</div>
												<div>
													<a class="btn btn-danger"
														href="id=${}">Xóa</a>
												</div>
											</td>
										</tr>
									</c:forEach>
								</tbody> --%>
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