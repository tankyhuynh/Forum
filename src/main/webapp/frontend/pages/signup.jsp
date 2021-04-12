<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
						<form:form method="POST" class="register-form" id="register-form" modelAttribute="userModel">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> 
									<form:input type="text" path="username" placeholder="Tên tài khoản" />
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> 
								<form:input	type="email" path="email" placeholder="Email" />
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> 
								<form:input	type="text" path="fullName" placeholder="Họ Tên..." />
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <form:input
									type="password" path="password" placeholder="Mật khẩu" />
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="re_pass" id="re_pass"
									placeholder="Nhập lại mật khẩu" />
							</div>
							<div class="form-group">
								<input type="checkbox" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>
									Đồng ý với <a href="#" class="term-service">Điều khoản dịch vụ</a> của chúng tôi</label>
							</div>
							<div class="form-group form-button">
								<button type="submit" id="signup"
									class="form-submit">Đăng ký</button>
							</div>
						</form:form>
					</div>
					<div class="signup-image">
						<img src="/Forum/assets/shared/img/signin-image.jpg"
								alt="sing up image">
						<a href="#" class="signup-image-link">Tôi đã là thành viên</a>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
</html>