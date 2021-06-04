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
<style>
form span{
	color: red;
}
</style>
</head>
<body id="page-top">
	<div id="wrapper">
		<%@ include file="../../../backend/layout/partials/sidebar.jsp"%>
		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				 <!-- Top bar -->
                <%@ include file="../../../backend/layout/partials/header.jsp" %>
				<div class="container-fluid">
					<div class="container">
						<div
							class="d-sm-flex align-items-center justify-content-between mb-4">
							<h1 class="h3 mb-0 text-gray-800">Thêm người dùng</h1>
						</div>
						<form action="<c:url value='/quan-tri/them-nguoi-dung'/>" method="post"
							style="width: 100%; margin-left: auto; margin-right: auto;" onsubmit="return validation()">
							<div style="padding: 20px;">
								<div class="mb-3">
									<label for="fullName" class="form-label">Họ Tên</label> <input
										type="text" class="form-control" id="fullName" name="fullName">
									<span id="error_fullName"></span>
								</div>
								<div class="mb-3">
									<label for="username" class="form-label">Tài Khoản
									</label> <input type="text" class="form-control" id="username"
										name="username">
									<span id="error_username"></span>
								</div>
																<div class="mb-3">
									<label for="password" class="form-label">Mật Khẩu</label> <input
										type="text" class="form-control" id="password" name="password">
										<span id="error_password"></span>
								</div>

								<div class="mb-3">
									<label for="email" class="form-label">Email</label> <input
										type="text" class="form-control" id="email"
										name="email">
										<span id="error_email"></span>
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
												name="gender" id="gender1" value="1" checked>
											<label class="form-check-label" for="gender1">Nam</label>
										</div>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio"
												name="gender" id="gender2" value="0">
											<label class="form-check-label" for="gender2">Nữ</label>
										</div>
									</div>
								</div>
								<div>
									<button class="btn btn-primary" style="width: 100%;"
										type="submit" id="btnAddUser">Thêm
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
	
<script >
function validation() {
	var u_error = document.getElementById("error_username");
	var p_error = document.getElementById("error_password");
	var f_error = document.getElementById("error_fullName");
	var e_error = document.getElementById("error_email");
	var username = document.getElementById("username").value;
	var password = document.getElementById("password").value;
	var fullName = document.getElementById("fullName").value;
	var email = document.getElementById("email").value;
	var check = true;
	if (username === null || username === "") {
		u_error.innerHTML = "Tài khoản không được để trống";
		check = false;
	} else {
		u_error.innerHTML = "";
	}

	atpos = email.indexOf("@");
	dotpos = email.lastIndexOf(".");

	if (email === null || email === "") {
		e_error.innerHTML = "Email không được để trống";
		check = false;
	} else if (atpos < 1 || (dotpos - atpos < 2)) {
		e_error.innerHTML = "Email không hợp lệ (Ex: abc@gmail.com)";
		check = false;
	} else {
		e_error.innerHTML = "";
	}

	if (fullName === null || fullName === "") {
		f_error.innerHTML = "Họ tên không được để trống";
		check = false;
	} else {
		f_error.innerHTML = "";
	}

	if (password === null || password === "") {
		p_error.innerHTML = "Mật khẩu không được để trống";
		check = false;
	} else {
		p_error.innerHTML = "";
	}
	return check;
}
	
</script>
</body>
</html>