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
							<h1 class="h3 mb-0 text-gray-800">Thêm vai trò</h1>
						</div>
						<form action="<c:url value='/quan-tri/sua-vai-tro/${role.id}'/>" method="post"
							style="width: 100%; margin-left: auto; margin-right: auto;">
							<div style="padding: 20px;">
								<div class="mb-3">
									<label for="roleCode" class="form-label">Mã Tóm Tắt</label> <input
										type="text" class="form-control" id="roleCode" name="roleCode" value="${role.roleCode}">
								</div>
								<div class="mb-3">
									<label for="roleName" class="form-label">Tên Vai Trò
									</label> <input type="text" class="form-control" id="roleName"
										name="roleName" value="${role.roleName}">
								</div>															
								<div>
									<button class="btn btn-primary" style="width: 100%;"
										type="submit" id="btnAddRole">Sửa
										Vai Trò</button>
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