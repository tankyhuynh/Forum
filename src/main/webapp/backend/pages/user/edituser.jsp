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
							<h1 class="h3 mb-0 text-gray-800">Sửa người dùng</h1>
						</div>
						<form action="<c:url value='/quan-tri/sua-nguoi-dung/${user.id}'/>" method="post"
							style="width: 100%; margin-left: auto; margin-right: auto;">
							<div style="padding: 20px;">
								<div class="mb-3">
									<label for="fullName" class="form-label">Họ Tên</label> <input
										type="text" class="form-control" id="fullName" name="fullName" value="${user.fullName}">
								</div>
								<div class="mb-3">
									<label for="username" class="form-label">Tài Khoản
									</label> <input type="text" class="form-control" id="username"
										name="username" value="${user.username}">
								</div>
																<div class="mb-3">
									<label for="password" class="form-label">Mật Khẩu</label> <input
										type="text" class="form-control" id="password" name="password"
										value="${user.password}">
								</div>

								<div class="mb-3">
									<label for="email" class="form-label">Email</label> <input
										type="text" class="form-control" id="email"
										name="email"
										value="${user.email}">
								</div>

								<div class="mb-3">
									<label for="role" class="form-label">Vai Trò</label>
									 <select
										class="form-select form-control"
										aria-label="Default select example"
										name="roleId"
										id="roleId">
										<c:forEach var="role" items="${roleList}">
										<option value="${role.id}">${role.roleName}</option>
										</c:forEach>
									</select>
								</div>
								<div class="mb-3">
									<label for="gender" class="form-label">Giới Tính</label>
									<div>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio"
												name="gender" id="gender1" value="0">
											<label class="form-check-label" for="gender1">Nam</label>
										</div>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio"
												name="gender" id="gender2" value="1">
											<label class="form-check-label" for="gender2">Nữ</label>
										</div>
									</div>
								</div>
								<div>
									<button class="btn btn-primary" style="width: 100%;"
										type="submit" id="btnAddUser">Sửa
										Người Dùng</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../../../backend/layout/partials/footer.jsp"%>
	<%@ include file="../../../backend/layout/script.jsp"%>
</body>
</html>