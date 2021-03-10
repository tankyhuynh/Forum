<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${ title }</title>

<link rel="stylesheet" href="<c:url value='/assets/shared/css/style.css'/>">
</head>
<body>
	<div class="main">
		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Đăng Ký</h2>
						<form method="POST" class="register-form" id="register-form">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="Tên tài khoản" />
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="Email" />
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="pass" id="pass" placeholder="Mật khẩu" />
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="re_pass" id="re_pass"
									placeholder="Nhập lại mật khẩu" />
							</div>
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>
									Đồng ý với <a href="#" class="term-service">Điều khoản dịch vụ</a> của chúng tôi</label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Đăng ký" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<img src="<c:url value='/assets/shared/img/signin-image.jpg'/>"
								alt="sing up image">
						<a href="#" class="signup-image-link">Tôi đã là thành viên</a>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
</html>