<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
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
					<h5>${ post.userId.fullName }</h5>
						
					</div>
					<div>
						<div class="row">
							<div class="col">
								<h5 style="color: rgb(38, 56, 224);">${ post.title }</h5>
							</div>
							<span style="color: darkgray; font-size: 13px">${ post.time }</span>
						</div>
					</div>
					<hr>
					<div>
						<p>${ post.content }</p>
					</div>
<hr>
					<div>${ post.commentList.size()} Câu trả lời </div>
					
					<c:forEach var="comment" items="${post.commentList}">
					
					<div style="padding-left: 50px; padding-right: 50px;">
								<c:if test="${empty comment.historyOfCommentId }">
								<div style="padding-left: 50px; padding-right: 50px;">
								<div>${ comment.id }</div>
								<div>
									<h6 style="color:red">${ comment.userId.fullName }</h6>
									<span style="color: darkgray;">${ comment.time }</span>
									<div>${ comment.content }</div>
									<span style="color: #de5c9d;">Trả lời</span>
								</div>
								</div>
							
						</c:if>
							
					
						<c:if test="${not empty comment.childOfCommentId and not empty comment.historyOfCommentId}">
								<div style="padding-left: 100px; padding-right: 50px;">
								<div>${ comment.id }</div>
								<div>
									<h6 style="color:red">${ comment.userId.fullName }</h6>
									<span style="color: darkgray;">${ comment.time }</span>
									<div>${ comment.content }</div>
									<span style="color: #de5c9d;">Trả lời</span>
								</div>
								</div>
							
						</c:if>
					</c:forEach>
					<div class="mt-3">
						<h6>Trả lời của bạn</h6>
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