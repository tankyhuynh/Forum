<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SB Admin 2 - Dashboard</title>
<%@ include file="../../../backend/layout/style.jsp"%>
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
							<h1 class="h3 mb-0 text-gray-800">Trang chủ thể loại bài viết</h1>
						</div>
						<a href="<c:url value='/quan-tri/them-the-loai-bai-viet'/>"
							class="btn btn-success mb-3">Thêm thể loại</a>
						<div class="table-responsive container">
							<table class="table table-hover">
								<thead>
									<tr>
										<th>Mã Báo Cáo</th>
										<th>Mã Tóm Tắt</th>
										<th>Tên Vai Trò</th>
										<th>Hành Động</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="typeOfPost" items="${typeOfPostList}">
										<tr>
											<td>${typeOfPost.id}</td>
											<td>${typeOfPost.typeCode}</td>
											<td>${typeOfPost.typeName}</td>
											<td class="d-flex">
												<div style="padding-right: 10px">
													<a style="width: 100px" class="btn btn-warning"
														href="<c:url value='/quan-tri/sua-the-loai-bai-viet/${typeOfPost.id}'/>">Chỉnh
														sửa</a>
												</div>
												<div>
													<a style="width: 100px" class="btn btn-danger"
														href="<c:url value='/quan-tri/xoa-the-loai-bai-viet/${typeOfPost.id}'/>">Xóa</a>
												</div>
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