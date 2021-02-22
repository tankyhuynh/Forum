<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
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
					<h1 data-aos="fade-up">Grow your business with Vesperr</h1>
					<h2 data-aos="fade-up" data-aos-delay="400">We are team of
						talanted designers making websites with Bootstrap</h2>
					<div data-aos="fade-up" data-aos-delay="800">
						<a href="#about" class="btn-get-started scrollto">Get Started</a>
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
					<h2>About Us</h2>
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
					<h2>Team</h2>
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
								<h4>Walter White</h4>
								<span>Chief Executive Officer</span>
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
								<h4>Sarah Jhonson</h4>
								<span>Product Manager</span>
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
								<h4>William Anderson</h4>
								<span>CTO</span>
							</div>
						</div>
					</div>

					<div class="col-lg-3 col-md-6 d-flex align-items-stretch">
						<div class="member" data-aos="fade-up" data-aos-delay="400">
							<div class="member-img">
								<img src="assets/img/team/team-4.jpg" class="img-fluid" alt="">
								<div class="social">
									<a href=""><i class="icofont-twitter"></i></a> <a href=""><i
										class="icofont-facebook"></i></a> <a href=""><i
										class="icofont-instagram"></i></a> <a href=""><i
										class="icofont-linkedin"></i></a>
								</div>
							</div>
							<div class="member-info">
								<h4>Amanda Jepson</h4>
								<span>Accountant</span>
							</div>
						</div>
					</div>

				</div>

			</div>
		</section>
		<!-- End Team Section -->


		<!-- ======= F.A.Q Section ======= -->
		<section id="faq" class="faq">
			<div class="container">

				<div class="section-title" data-aos="fade-up">
					<h2>Frequently Asked Questions</h2>
				</div>

				<div class="row faq-item d-flex align-items-stretch"
					data-aos="fade-up" data-aos-delay="100">
					<div class="col-lg-5">
						<i class="ri-question-line"></i>
						<h4>Non consectetur a erat nam at lectus urna duis?</h4>
					</div>
					<div class="col-lg-7">
						<p>Feugiat pretium nibh ipsum consequat. Tempus iaculis urna
							id volutpat lacus laoreet non curabitur gravida. Venenatis lectus
							magna fringilla urna porttitor rhoncus dolor purus non.</p>
					</div>
				</div>
				<!-- End F.A.Q Item-->

				<div class="row faq-item d-flex align-items-stretch"
					data-aos="fade-up" data-aos-delay="200">
					<div class="col-lg-5">
						<i class="ri-question-line"></i>
						<h4>Feugiat scelerisque varius morbi enim nunc faucibus a
							pellentesque?</h4>
					</div>
					<div class="col-lg-7">
						<p>Dolor sit amet consectetur adipiscing elit pellentesque
							habitant morbi. Id interdum velit laoreet id donec ultrices.
							Fringilla phasellus faucibus scelerisque eleifend donec pretium.
							Est pellentesque elit ullamcorper dignissim.</p>
					</div>
				</div>
				<!-- End F.A.Q Item-->

				<div class="row faq-item d-flex align-items-stretch"
					data-aos="fade-up" data-aos-delay="300">
					<div class="col-lg-5">
						<i class="ri-question-line"></i>
						<h4>Dolor sit amet consectetur adipiscing elit pellentesque
							habitant morbi?</h4>
					</div>
					<div class="col-lg-7">
						<p>Eleifend mi in nulla posuere sollicitudin aliquam ultrices
							sagittis orci. Faucibus pulvinar elementum integer enim. Sem
							nulla pharetra diam sit amet nisl suscipit. Rutrum tellus
							pellentesque eu tincidunt. Lectus urna duis convallis convallis
							tellus.</p>
					</div>
				</div>
				<!-- End F.A.Q Item-->

				<div class="row faq-item d-flex align-items-stretch"
					data-aos="fade-up" data-aos-delay="400">
					<div class="col-lg-5">
						<i class="ri-question-line"></i>
						<h4>Ac odio tempor orci dapibus. Aliquam eleifend mi in
							nulla?</h4>
					</div>
					<div class="col-lg-7">
						<p>Aperiam itaque sit optio et deleniti eos nihil quidem
							cumque. Voluptas dolorum accusantium sunt sit enim. Provident
							consequuntur quam aut reiciendis qui rerum dolorem sit odio.
							Repellat assumenda soluta sunt pariatur error doloribus fuga.</p>
					</div>
				</div>
				<!-- End F.A.Q Item-->

				<div class="row faq-item d-flex align-items-stretch"
					data-aos="fade-up" data-aos-delay="500">
					<div class="col-lg-5">
						<i class="ri-question-line"></i>
						<h4>Tempus quam pellentesque nec nam aliquam sem et tortor
							consequat?</h4>
					</div>
					<div class="col-lg-7">
						<p>Molestie a iaculis at erat pellentesque adipiscing commodo.
							Dignissim suspendisse in est ante in. Nunc vel risus commodo
							viverra maecenas accumsan. Sit amet nisl suscipit adipiscing
							bibendum est. Purus gravida quis blandit turpis cursus in</p>
					</div>
				</div>
				<!-- End F.A.Q Item-->

			</div>
		</section>
		<!-- End F.A.Q Section -->

		<!-- ======= Contact Section ======= -->
		<section id="contact" class="contact">
			<div class="container">

				<div class="section-title" data-aos="fade-up">
					<h2>Contact Us</h2>
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
									placeholder="Your Name" data-rule="minlen:4"
									data-msg="Please enter at least 4 chars" />
								<div class="validate"></div>
							</div>
							<div class="form-group">
								<input type="email" class="form-control" name="email" id="email"
									placeholder="Your Email" data-rule="email"
									data-msg="Please enter a valid email" />
								<div class="validate"></div>
							</div>
							<div class="form-group">
								<input type="text" class="form-control" name="subject"
									id="subject" placeholder="Subject" data-rule="minlen:4"
									data-msg="Please enter at least 8 chars of subject" />
								<div class="validate"></div>
							</div>
							<div class="form-group">
								<textarea class="form-control" name="message" rows="5"
									data-rule="required" data-msg="Please write something for us"
									placeholder="Message"></textarea>
								<div class="validate"></div>
							</div>
							<div class="mb-3">
								<div class="loading">Loading</div>
								<div class="error-message"></div>
								<div class="sent-message">Your message has been sent.
									Thank you!</div>
							</div>
							<div class="text-center">
								<button type="submit">Send Message</button>
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