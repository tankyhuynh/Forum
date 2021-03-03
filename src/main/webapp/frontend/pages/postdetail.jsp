<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title> <%@ include
file="../../frontend/layout/style.jsp" %>
</head>

<body>
	<!-- ======= Header ======= -->
	<%@ include file="../../frontend/layout/partials/header.jsp" %>
	<!-- End Header -->
	<section>
		<div class="container mt-4" style="width: 80%">
			<div class="p-3  shadow-sm bg-white rounded">
				<div style="">
					<div>
						<h4 style="color: rgb(38, 56, 224);">Lorem Ipsum is simply
							dummy text of the printing and typesetting industry.</h4>
					</div>
					<div>
						<div class="row">
							<div class="col">
								<h6>Đoàn Hoàng Tính</h6>
							</div>
							<span style="color: darkgray;">2021/02/10 11:30:59</span>
						</div>
					</div>
					<hr>
					<div>
						<p>Lorem Ipsum is simply dummy text of the printing and
							typesetting industry. Lorem Ipsum has been the industry's
							standard dummy text ever since the 1500s, emaining essentially
							unchanged. It was popularised in the</p>
					</div>

					<h5>10 Câu trả lời</h5>
					<div style="padding-left: 50px; padding-right: 50px;">
						<div>
							<h6>Nguyễn Văn Tèo</h6>
							<span style="color: darkgray;">2021/02/10 11:30:59</span>
							<div>Lorem Ipsum is simply dummy text of the printing and
								typesetting industry. Lorem Ipsum has been the industry's
								standard dummy text ever since the 1500s, emaining essentially
								unchanged. It was popularised in the</div>
							<span style="color: #de5c9d;">Trả lời</span>
						</div>
					</div>
					<div style="padding-left: 50px; padding-right: 50px;" class="mt-4">
						<div>
							<h6>Nguyễn Văn An</h6>
							<span style="color: darkgray;">2021/02/10 11:35:59</span>
							<div>Lorem Ipsum is simply dummy text of the printing and
								typesetting industry. Lorem Ipsum has been the industry's
								standard dummy text ever since the 1500s, emaining essentially
								unchanged. It was popularised in the</div>
							<div>
								<span style="color: #de5c9d;">Trả lời</span>
							</div>
						</div>
					</div>
					<div class="mt-3">
						<h5>Trả lời của bạn</h5>
						<textarea style="height: 100px; width: 100%"></textarea>
						<button class="btn"
							style="background-color: #fd7e14; color: white;">Đăng
							câu trả lời</button>
					</div>

				</div>
			</div>
		</div>
	</section>

	<!-- ======= Footer ======= -->
	<%@ include file="../../frontend/layout/partials/footer.jsp" %>
	<!-- End Footer -->

	<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
	<%@ include file="../../frontend/layout/script.jsp" %>
</body>

</html>