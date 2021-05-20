<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet"
	href="<c:url value='/assets/shared/css/style.css' />">
</head>
<body>
	<div class="main">
		<!-- Sing in  Form -->
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="<c:url value='/assets/shared/img/signin-image.jpg' />"
								alt="sing up image">
						</figure>
						<%-- <a href="<c:url value='/dang-ky'/>" class="signup-image-link" style="text-decoration: none">Tạo tài khoản mới</a> --%>
					</div>

					<div class="signin-form">
						<h2 class="form-title">Đăng nhập</h2>
						<form action="j_spring_security_check" method="POST"
							class="register-form" id="login-form">
							<div class="form-group">
								<label for="your_name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="j_username" id="your_name"
									placeholder="Tên tài khoản" />
							</div>
							<div class="form-group">
								<label for="your_pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="j_password" id="your_pass"
									placeholder="Mật khẩu" />
							</div>
							<!-- <div class="form-group">
								<input type="checkbox" name="remember-me" id="remember-me"
									class="agree-term" /> <label for="remember-me"
									class="label-agree-term"><span><span></span></span>Ghi nhớ</label>
							</div> -->
							<div class="form-group ">
								<input type="submit" name="signin" id="" class="btn btn-primary"
									value="Đăng Nhập"
									style="background-color: #3b83e6; margin-bottom: 10px; border-radius: 10px; color: white; height: 40px; font-size: 16px" />
								<div style="text-align: center">
									<a href="<c:url value='/dang-ky'/>"
										style="text-decoration: none; padding-left: 10px; color: #292222; font-size: 14px">Tạo
										tài khoản mới</a>

								</div>
							</div>
						</form>
						<!-- <div class="social-login">
							<span class="social-label">Hoặc đăng nhập bằng</span>
							<ul class="socials">
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-facebook"></i></a></li>
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-twitter"></i></a></li>
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-google"></i></a></li>
							</ul>
						</div> -->
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
</html>