<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<%@ include file="../../frontend/layout/style.jsp"%>
</head>

<body>
	<%@ include file="../../frontend/layout/partials/header.jsp"%>
	<section>
		<div class="container mt-4">
			<div class="row">
				<div class="col-md-2">
					<div>
						<div style="margin-bottom: 10px;">
							<span>DANH MỤC THỂ LOẠI</span>
						</div>
						<a href="frontend/pages/postdetail.jsp">Goto</a>
						<div>
							<ul
								style="list-style-type: none; padding-left: 0px; font-size: 14px;">
								<c:forEach var="typeOfPost" items="${typeOfPostList}">
									<li class="mb-2"><a href="#">${typeOfPost.typeName}</a></li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-8">
					<c:if test="${not empty postList}">
						<c:forEach var="post" items="${postList}">
							<c:if test="${not empty post.historyOfPostId}">
								<a href="bai-viet/${ post.id }">
										<div class=" shadow-sm p-3 bg-white rounded mb-3">
											<div>
												<div class="row">
													<div class="col">
														<p>${post.title}
														<p>
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
												<p></p>
											</div>
									</div>
								</a>
							</c:if>
						</c:forEach>
					</c:if>
				</div>
				<div class="col-md-2"></div>
			</div>

		</div>
	</section>


	<%@ include file="../../frontend/layout/partials/footer.jsp"%>


	<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
	<%@ include file="../../frontend/layout/script.jsp"%>
</body>

</html>