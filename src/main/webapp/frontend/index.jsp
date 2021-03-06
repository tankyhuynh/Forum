<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<%@ include file="../frontend/layout/style.jsp"%>
</head>

<body>
	<%@ include file="../frontend/layout/partials/header.jsp"%>
	<section id="hero" class="d-flex align-items-center">
		<div class="container">
			<div class="row">
				<div
					class="col-lg-6 pt-5 pt-lg-0 order-2 order-lg-1 d-flex flex-column justify-content-center">
					<h1 data-aos="fade-up">Chung tay góp sức giúp đỡ và phát triển</h1>
					<h2 data-aos="fade-up" data-aos-delay="400">Chúng tôi sẽ giúp
						đỡ và giải đáp những thắc mắc của bạn nhanh chóng và chính xác</h2>
					<div data-aos="fade-up" data-aos-delay="800">
						<a href="#about" class="btn-get-started scrollto">Bắt Đầu</a>
					</div>
				</div>
				<div class="col-lg-6 order-1 order-lg-2 hero-img"
					data-aos="fade-left" data-aos-delay="200">
					<img src="assets/shared/img/signin-image.jpg"
						class="img-fluid animated" alt="">
				</div>
			</div>
		</div>
	</section>

	<main id="main">
		<section id="clients" class="clients clients"></section>

		<section id="about" class="about">
			<div class="container">
				<div class="section-title" data-aos="fade-up">
					<h2>Giới Thiệu</h2>
				</div>
				<div class="row content">
					<div class="col-lg-12" data-aos="fade-up" data-aos-delay="150">
						<p style="text-align: center">Một nền tảng công khai xây dựng
							bộ sưu tập hoàn chỉnh các câu hỏi và câu trả lời viết mã Một
							không gian dựa trên cộng đồng để tìm và đóng góp câu trả lời cho
							các thách thức kỹ thuật và là một trong những trang web phổ biến
							nhất trên thế giới.</p>
					</div>
				</div>
			</div>
		</section>


		<!-- ======= Team Section ======= -->
		<section id="team" class="team section-bg">
			<div class="container">
				<div class="section-title" data-aos="fade-up">
					<h2>Team</h2>
					<p>Những thành viên đã đóng góp cho sự phát triển của nền tảng
						ASKUS</p>
				</div>
				<div class="row">

					<div class="col-md-4">
						<div class="member" data-aos="fade-up" data-aos-delay="100">
							<div class="member-img">
								<img src="assets/frontend/img/team-1.jpg" class="img-fluid"
									alt="">
								<div class="social">
									<a href=""><i class="icofont-twitter"></i></a> <a href=""><i
										class="icofont-facebook"></i></a> <a href=""><i
										class="icofont-instagram"></i></a> <a href=""><i
										class="icofont-linkedin"></i></a>
								</div>
							</div>
							<div class="member-info">
								<h4>Hà Tấn Lộc</h4>
								<span>Thành Viên</span>
							</div>
						</div>
					</div>

					<div class="col-md-4">
						<div class="member" data-aos="fade-up" data-aos-delay="200">
							<div class="member-img">
								<img src="assets/frontend/img/team-1.jpg" class="img-fluid"
									alt="">
								<div class="social">
									<a href=""><i class="icofont-twitter"></i></a> <a href=""><i
										class="icofont-facebook"></i></a> <a href=""><i
										class="icofont-instagram"></i></a> <a href=""><i
										class="icofont-linkedin"></i></a>
								</div>
							</div>
							<div class="member-info">
								<h4>Đoàn Hoàng Tính</h4>
								<span>Trưởng Nhóm</span>
							</div>
						</div>
					</div>

					<div class="col-md-4">
						<div class="member" data-aos="fade-up" data-aos-delay="300">
							<div class="member-img">
								<img src="assets/frontend/img/team-1.jpg" class="img-fluid"
									alt="">
								<div class="social">
									<a href=""><i class="icofont-twitter"></i></a> <a href=""><i
										class="icofont-facebook"></i></a> <a href=""><i
										class="icofont-instagram"></i></a> <a href=""><i
										class="icofont-linkedin"></i></a>
								</div>
							</div>
							<div class="member-info">
								<h4>Huỳnh Tấn Kỷ</h4>
								<span>Thành Viên</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Team Section -->


		<!-- ======= Contact Section ======= -->
		<section id="contact" class="contact">
			<div class="container">

				<div class="section-title" data-aos="fade-up">
					<h2>Liên Hệ</h2>
				</div>

				<div class="row">

					<div class="col-lg-4 col-md-6" data-aos="fade-up"
						data-aos-delay="100">
						<div class="contact-about">
							<h3>ASKUS</h3>
							<p>Chung tay góp sức giúp đỡ và phát triển Chúng tôi sẽ giúp
								đỡ và giải đáp những thắc mắc của bạn nhanh chóng và chính xác.</p>
						</div>
					</div>

					<div class="col-lg-3 col-md-6 mt-4 mt-md-0" data-aos="fade-up"
						data-aos-delay="200">
						<div class="info">
							<div>
								<i class="ri-map-pin-line"></i>
								<p>
									Đại Học Cần Thơ<br> Khu II, đường 3/2, P. Xuân Khánh, Q.
									Ninh Kiều, TP. Cần Thơ.
								</p>
							</div>

							<div>
								<i class="ri-mail-send-line"></i>
								<p>askus_info@gmail.com</p>
							</div>

							<!-- <div>
								<i class="ri-phone-line"></i>
								<p></p>
							</div> -->

						</div>
					</div>

					<div class="col-lg-5 col-md-12" data-aos="fade-up"
						data-aos-delay="300">
						<form action="forms/contact.php" method="post" role="form"
							class="php-email-form">
							<div class="form-group">
								<input type="text" name="name" class="form-control" id="name"
									placeholder="Họ Tên" data-rule="minlen:4"
									data-msg="Ít nhất 4 ký tự" />
								<div class="validate"></div>
							</div>
							<div class="form-group">
								<input type="email" class="form-control" name="email" id="email"
									placeholder="Email" data-rule="email"
									data-msg="email không hợp lệ" />
								<div class="validate"></div>
							</div>
							<div class="form-group">
								<input type="text" class="form-control" name="subject"
									id="subject" placeholder="Tiêu đề" data-rule="minlen:8"
									data-msg="Ít nhất 8 ký tự" />
								<div class="validate"></div>
							</div>
							<div class="form-group">
								<textarea class="form-control" name="message" rows="5"
									data-rule="required" data-msg="Nhập nội dung..."
									placeholder="Nội dung"></textarea>
								<div class="validate"></div>
							</div>
							<div class="mb-3">
								<div class="loading">Loading</div>
								<div class="error-message"></div>
								<div class="sent-message">Tin nhắn đang được gửi. Cám ơn
									bạn!</div>
							</div>
							<div class="text-center">
								<button type="submit">Gửi</button>
							</div>
						</form>
					</div>

				</div>

			</div>
		</section>
		<!-- End Contact Section -->

	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<%@ include file="../frontend/layout/partials/footer.jsp"%>
	<!-- End Footer -->

	<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
	<%@ include file="../frontend/layout/script.jsp"%>
</body>

</html>