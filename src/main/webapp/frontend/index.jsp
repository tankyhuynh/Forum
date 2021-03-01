<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<%@ include file="../frontend/layout/style.jsp"%>
</head>
<body>
	<!-- ======= Header ======= -->
	<%@ include file="../frontend/layout/partials/header.jsp"%>
	<!-- End Header -->

	<!-- ======= Hero Section ======= -->
	<section id="hero" class="d-flex align-items-center">

		<div class="container">
			<div class="row">
				<div
					class="col-lg-6 pt-5 pt-lg-0 order-2 order-lg-1 d-flex flex-column justify-content-center">
					<h1 data-aos="fade-up">Chung tay góp sức giúp đỡ và phát triển</h1>
					<h2 data-aos="fade-up" data-aos-delay="400">Chúng tui sẽ giúp đỡ và giải đáp những thăc mắc của bạn nhanh chóng và chính xác</h2>
					<div data-aos="fade-up" data-aos-delay="800">
						<a href="#about" class="btn-get-started scrollto">Bắt Đầu</a>
					</div>
				</div>
				<div class="col-lg-6 order-1 order-lg-2 hero-img"
					data-aos="fade-left" data-aos-delay="200">
					<img src="assets/shared/img/signin-image.jpg" class="img-fluid animated"
						alt="">
				</div>
			</div>
		</div>

	</section>
	<!-- End Hero -->

	<main id="main">

		<!-- ======= Clients Section ======= -->
		<section id="clients" class="clients clients">
			<div class="container">

				<div class="row">

					<div class="col-lg-2 col-md-4 col-6">
						<img src="assets/img/clients/client-1.png" class="img-fluid"
							alt="" data-aos="zoom-in">
					</div>

					<div class="col-lg-2 col-md-4 col-6">
						<img src="assets/img/clients/client-2.png" class="img-fluid"
							alt="" data-aos="zoom-in" data-aos-delay="100">
					</div>

					<div class="col-lg-2 col-md-4 col-6">
						<img src="assets/img/clients/client-3.png" class="img-fluid"
							alt="" data-aos="zoom-in" data-aos-delay="200">
					</div>

					<div class="col-lg-2 col-md-4 col-6">
						<img src="assets/img/clients/client-4.png" class="img-fluid"
							alt="" data-aos="zoom-in" data-aos-delay="300">
					</div>

					<div class="col-lg-2 col-md-4 col-6">
						<img src="assets/img/clients/client-5.png" class="img-fluid"
							alt="" data-aos="zoom-in" data-aos-delay="400">
					</div>

					<div class="col-lg-2 col-md-4 col-6">
						<img src="assets/img/clients/client-6.png" class="img-fluid"
							alt="" data-aos="zoom-in" data-aos-delay="500">
					</div>

				</div>

			</div>
		</section>
		<!-- End Clients Section -->

		<!-- ======= About Us Section ======= -->
		<section id="about" class="about">
			<div class="container">

				<div class="section-title" data-aos="fade-up">
					<h2>Giới Thiệu</h2>
				</div>

				<div class="row content">
					<div class="col-lg-6" data-aos="fade-up" data-aos-delay="150">
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua.</p>
						<ul>
							<li><i class="ri-check-double-line"></i> Ullamco laboris
								nisi ut aliquip ex ea commodo consequat</li>
							<li><i class="ri-check-double-line"></i> Duis aute irure
								dolor in reprehenderit in voluptate velit</li>
							<li><i class="ri-check-double-line"></i> Ullamco laboris
								nisi ut aliquip ex ea commodo consequat</li>
						</ul>
					</div>
					<div class="col-lg-6 pt-4 pt-lg-0" data-aos="fade-up"
						data-aos-delay="300">
						<p>Ullamco laboris nisi ut aliquip ex ea commodo consequat.
							Duis aute irure dolor in reprehenderit in voluptate velit esse
							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
							cupidatat non proident, sunt in culpa qui officia deserunt mollit
							anim id est laborum.</p>
						<a href="#" class="btn-learn-more">Learn More</a>
					</div>
				</div>

			</div>
		</section>
		<!-- End About Us Section -->



		<!-- ======= Team Section ======= -->
		<section id="team" class="team section-bg">
			<div class="container">

				<div class="section-title" data-aos="fade-up">
					<h2>Nhóm</h2>
					<p>Necessitatibus eius consequatur ex aliquid fuga eum quidem</p>
				</div>

				<div class="row">

					<div class="col-lg-3 col-md-6 d-flex align-items-stretch">
						<div class="member" data-aos="fade-up" data-aos-delay="100">
							<div class="member-img">
								<img src="assets/img/team/team-1.jpg" class="img-fluid" alt="">
								<div class="social">
									<a href=""><i class="icofont-twitter"></i></a> <a href=""><i
										class="icofont-facebook"></i></a> <a href=""><i
										class="icofont-instagram"></i></a> <a href=""><i
										class="icofont-linkedin"></i></a>
								</div>
							</div>
							<div class="member-info">
								<h4>Đoàn Hoàng Tính</h4>
								<span>Nhóm trưởng</span>
							</div>
						</div>
					</div>

					<div class="col-lg-3 col-md-6 d-flex align-items-stretch">
						<div class="member" data-aos="fade-up" data-aos-delay="200">
							<div class="member-img">
								<img src="assets/img/team/team-2.jpg" class="img-fluid" alt="">
								<div class="social">
									<a href=""><i class="icofont-twitter"></i></a> <a href=""><i
										class="icofont-facebook"></i></a> <a href=""><i
										class="icofont-instagram"></i></a> <a href=""><i
										class="icofont-linkedin"></i></a>
								</div>
							</div>
							<div class="member-info">
								<h4>Huỳnh Tấn Kỷ</h4>
								<span>Thành viên</span>
							</div>
						</div>
					</div>

					<div class="col-lg-3 col-md-6 d-flex align-items-stretch">
						<div class="member" data-aos="fade-up" data-aos-delay="300">
							<div class="member-img">
								<img src="assets/img/team/team-3.jpg" class="img-fluid" alt="">
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
							<h3>Vesperr</h3>
							<p>Cras fermentum odio eu feugiat. Justo eget magna fermentum
								iaculis eu non diam phasellus. Scelerisque felis imperdiet proin
								fermentum leo. Amet volutpat consequat mauris nunc congue.</p>
							<div class="social-links">
								<a href="#" class="twitter"><i class="icofont-twitter"></i></a>
								<a href="#" class="facebook"><i class="icofont-facebook"></i></a>
								<a href="#" class="instagram"><i class="icofont-instagram"></i></a>
								<a href="#" class="linkedin"><i class="icofont-linkedin"></i></a>
							</div>
						</div>
					</div>

					<div class="col-lg-3 col-md-6 mt-4 mt-md-0" data-aos="fade-up"
						data-aos-delay="200">
						<div class="info">
							<div>
								<i class="ri-map-pin-line"></i>
								<p>
									A108 Adam Street<br>New York, NY 535022
								</p>
							</div>

							<div>
								<i class="ri-mail-send-line"></i>
								<p>info@example.com</p>
							</div>

							<div>
								<i class="ri-phone-line"></i>
								<p>+1 5589 55488 55s</p>
							</div>

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
								<div class="sent-message">Tin nhắn đang được gửi.
									Cám ơn bạn!</div>
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