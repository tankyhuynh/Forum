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
							<h1 class="h3 mb-0 text-gray-800">Trang chủ bài viết</h1>
						</div>
						<div class="table-responsive container" >
							<table class="table table-hover">
								<thead>
									<tr style="text-align: center;">
										<th>Mã Bài Viết</th>
										<th>Mã Người Dùng</th>
										<th>Tiêu Đề</th>									
										<th>Trạng Thái</th>
										<th>Thời Gian</th>
										<th>Hành Động</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="post" items="${postList}">
										<tr>
											<td>${post.id}</td>
											<td>${post.userId.id}</td>
											<td>${post.title}</td>											
											<td>${post.statusId.statusName}</td>
											<td>${post.time}</td>
											<td class="d-flex">	
												<div style="padding-right: 10px">
													<a style="width: 100px" class="btn btn-danger"
														href="<c:url value='/quan-tri/xoa-bai-viet/${post.id}'/>">Xóa</a>
												</div>
<%-- 												<div>
													<a style="width: 100px" class="btn btn-success"
														href="<c:url value='/quan-tri/lich-su-bai-viet/${post.id}'/>">Lịch Sử</a>
												</div> --%>
											</td>
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