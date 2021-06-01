<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SB Admin 2 - Dashboard</title>
<%@ include file="../../../backend/layout/style.jsp"%>
<style >
</style>
</head>
<body id="page-top">
	<div id="wrapper">
		<%@ include file="../../../backend/layout/partials/sidebar.jsp"%>
		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				 <!-- Top bar -->
                <%@ include file="../../../backend/layout/partials/header.jsp" %>
				<div class="container-fluid">
					<div class="container">
						<div
							class="d-sm-flex align-items-center justify-content-between mb-4">
							<h1 class="h3 mb-0 text-gray-800">Trang chủ bình luận</h1>
						</div>
					
						<div class="table-responsive container" >
							<table class="table table-hover">
								<thead>
									<tr style="text-align: center;">
										<th>Mã Bình Luận</th>
										<th>Mã Người Dùng</th>
										<th>Mã Bài Viết</th>
										<th>Mã Bình Luận Cha</th>
										<th>Nội Dung</th>
										<th>Trạng Thái</th>
										<th>Thời Gian</th>
						
									</tr>
								</thead>
								<tbody>
									<c:forEach var="comment" items="${commentList}">
										<tr>
											<td>${comment.id}</td>
											<td>${comment.userId.id}</td>
											<td>${comment.postId.id}</td>
											<td>${comment.childOfCommentId.id}</td>
											<td>${comment.content}</td>
											<td>${comment.statusId.statusName}</td>
											<td>${comment.time}</td>
											<%-- <td class="d-flex">

												<div>
													<a style="width: 100px" class="btn btn-success"
														href="<c:url value='/quan-tri/lich-su-binh-luan/${comment.id}'/>">Lịch Sử</a>
												</div>
											</td> --%>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../../../backend/layout/partials/footer.jsp"%>
	<%@ include file="../../../backend/layout/script.jsp"%>
</body>
</html>