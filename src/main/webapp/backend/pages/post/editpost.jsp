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
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>
					<form
						class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
						<div class="input-group">
							<input type="text" class="form-control bg-light border-0 small"
								placeholder="Search for..." aria-label="Search"
								aria-describedby="basic-addon2">
							<div class="input-group-append">
								<button class="btn btn-primary" type="button">
									<i class="fas fa-search fa-sm"></i>
								</button>
							</div>
						</div>
					</form>
					<div class="topbar-divider d-none d-sm-block"></div>
				</nav>
				<div class="container-fluid">
					<div class="container">
						<div
							class="d-sm-flex align-items-center justify-content-between mb-4">
							<h1 class="h3 mb-0 text-gray-800">Sửa bài viết</h1>
						</div>
						<form action="<c:url value='/quan-tri/sua-bai-viet/${post.id}'/>" method="post"
							style="width: 100%; margin-left: auto; margin-right: auto;">
							<div style="padding: 20px;">
								<div class="mb-3">
									<label for="userId" class="form-label">Mã Người Dùng</label> <input
										type="text" class="form-control" id="userId" name="userId" value="${post.userId.id }">
								</div>
								<div class="mb-3">
									<label for="title" class="form-label">Tiêu đề</label> <input
										type="text" class="form-control" id="title" name="title" value="${post.title}">
								</div>
								<div class="mb-3">
									<label for="typeOfPostId" class="form-label">Thể Loại Bài Viết
									</label> <select
										class="form-select form-control"
										aria-label="Default select example"
										name="typeOfPostId"
										id="typeOfPostId">
										<c:forEach var="typeOfPost" items="${typeOfPostList}">
										<option value="${typeOfPost.id}">${typeOfPost.typeName}</option>
										</c:forEach>
									</select>
								</div>	
								<div class="mb-3">
									<label for="content" class="form-label">Nội Dung</label> <input
										type="text" class="form-control" id="content" name="content" value="${post.content}">
								</div>														
								<div>
									<button class="btn btn-primary" style="width: 100%;"
										type="submit" id="btnAddPost">Sửa
										Bài Viết</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../../../backend/layout/partials/footer.jsp"%>
	<%@ include file="../../../backend/layout/script.jsp"%>
</body>
</html>