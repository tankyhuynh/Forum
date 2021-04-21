<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="/Forum/assets/shared/css/style.css">
</head>
<body>
	<div class="main">
		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Đăng Ký</h2>
						<form:form method="POST" class="register-form" id="register-form"
							modelAttribute="userModel" onsubmit="return validation()">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label>
								<form:input type="text" path="username"
									placeholder="Tên tài khoản" />
								<span id="error_username"></span>
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label>
								<form:input type="text" path="email" placeholder="Email" />
								<span id="error_email"></span>
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label>
								<form:input type="text" path="fullName" placeholder="Họ Tên..." />
								<span id="error_fullName"></span>
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label>
								<form:input type="password" path="password"
									placeholder="Mật khẩu" onfocusout="return onInputChange()" />
								<span id="error_password"></span>
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="re_pass" id="re_pass"
									placeholder="Nhập lại mật khẩu" /> <span id="error_re_pass"></span>
							</div>
							<div class="form-group">
								<input type="checkbox" id="agree-term" class="agree-term" /> <label
									for="agree-term" class="label-agree-term"><span><span></span></span>
									Đồng ý với <a href="#" class="term-service">Điều khoản dịch
										vụ</a> của chúng tôi</label>
							</div>
							<div class="form-group form-button">
								<button type="submit" id="signup" class="form-submit">Đăng
									ký</button>
							</div>
						</form:form>
					</div>
					<div class="signup-image">
						<img src="/Forum/assets/shared/img/signin-image.jpg"
							alt="sing up image"> <a href="#" class="signup-image-link">Tôi
							đã là thành viên</a>
					</div>
				</div>
			</div>
		</section>
	</div>
	<script>
		function validation() {
			var u_error = document.getElementById("error_username");
			var p_error = document.getElementById("error_password");
			var f_error = document.getElementById("error_fullName");
			var e_error = document.getElementById("error_email");
			var rp_error = document.getElementById("error_re_pass");
			var username = document.forms["register-form"]["username"].value;
			var password = document.forms["register-form"]["password"].value;
			var fullName = document.forms["register-form"]["fullName"].value;
			var re_pass = document.forms["register-form"]["re_pass"].value;
			var email = document.forms["register-form"]["email"].value;
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

			if (re_pass !== password) {
				rp_error.innerHTML = "Mật khẩu nhập lại không đúng";
				check = false;
			} else {
				rp_error.innerHTML = "";
			}
			return check;
		}
	</script>
</body>


</html>