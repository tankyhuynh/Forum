<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html lang="en">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

		<head>
			<meta charset="UTF-8">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<title>Document</title>
			<%@ include file="../../frontend/layout/style.jsp" %>
		</head>

		<body>
			<!-- ======= Header ======= -->
			<%@ include file="../../frontend/layout/partials/header.jsp" %>
				<!-- End Header -->
				<section>
					<div class="container mt-4" >
						<div class="row">
							<div class=" col-md-3 border shadow-sm bg-white rounded" style="height: 300px">
								<a href="frontend/pages/postdetail.jsp">Goto</a>
							</div>
							<div class="col-md-9">
								<c:if test="${not empty postList}">
									<c:forEach var="post" items="${postList}">
										<div class="border shadow-sm p-3 bg-white rounded mb-3">
											<div>
												<div class="row">
													<div class="col">
														<p>${post.title}<p>
													</div>
													<div class="col" style="text-align: right;">
														<span
															style="font-size: 30px; font-weight: bold; margin-top: 0px;">...</span>
													</div>
												</div>
												<span style="color: darkgray;">${ post.time }</span>
											</div>
											<div>
												<h6 style="color: rgb(38, 56, 224);">${ post.content }</h6>
											</div>
											<div>
												<p>

												</p>
											</div>
										</div>

									</c:forEach>

								</c:if>
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