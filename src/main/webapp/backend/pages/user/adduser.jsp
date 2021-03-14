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
							<h1 class="h3 mb-0 text-gray-800">Thêm người dùng</h1>
						</div>
						<form action="#" method="post"
							style="width: 100%; margin-left: auto; margin-right: auto;">
							<div style="padding: 20px;">
								<div class="mb-3">
									<label for="txtMaBan" class="form-label">Họ Tên</label> <input
										type="text" class="form-control" id="txtMaBan" name="txtMaBan">
								</div>
								<div class="mb-3">
									<label for="txtSoLuongCho" class="form-label">Tài Khoản
									</label> <input type="text" class="form-control" id="txtSoLuongCho"
										name="txtSoLuongCho">
								</div>
																<div class="mb-3">
									<label for="txtViTri" class="form-label">Mật Khẩu</label> <input
										type="text" class="form-control" id="txtViTri" name="txtViTri">
								</div>

								<div class="mb-3">
									<label for="txtTrangThai" class="form-label">Email</label> <input
										type="text" class="form-control" id="txtTrangThai"
										name="txtTrangThai">
								</div>

								<div class="mb-3">
									<label for="txtTrangThai" class="form-label">Vai Trò</label> <select
										class="form-select form-control"
										aria-label="Default select example">
										<option value="1">One</option>
										<option value="2">Two</option>
										<option value="3">Three</option>
									</select>
								</div>
								<div class="mb-3">
									<label for="txtTrangThai" class="form-label">Giới Tính</label>
									<div>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio"
												name="inlineRadioOptions" id="inlineRadio1" value="option1">
											<label class="form-check-label" for="inlineRadio1">Nam</label>
										</div>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio"
												name="inlineRadioOptions" id="inlineRadio2" value="option2">
											<label class="form-check-label" for="inlineRadio2">Nữ</label>
										</div>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio"
												name="inlineRadioOptions" id="inlineRadio2" value="option2">
											<label class="form-check-label" for="inlineRadio2">Khác</label>
										</div>
									</div>
								</div>
								<div>
									<button class="btn btn-primary" style="width: 100%;"
										type="submit" id="btnThemBan" name="btnThemBan">Thêm
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