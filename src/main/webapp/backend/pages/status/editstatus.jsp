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
<style>
form span{
	color: red;
}
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
							<h1 class="h3 mb-0 text-gray-800">Sửa trạng thái</h1>
						</div>
						<form action="<c:url value='/quan-tri/sua-trang-thai/${status.id}'/>" method="post"
							style="width: 100%; margin-left: auto; margin-right: auto;" onsubmit="return validation()">
							<div style="padding: 20px;">
								<div class="mb-3">
									<label for="statusCode" class="form-label">Mã Tóm Tắt</label> <input
										type="text" class="form-control" id="statusCode" name="statusCode" value="${status.statusCode}">
										<span id="error_code"></span>
								</div>
								<div class="mb-3">
									<label for="statusName" class="form-label">Tên Trạng Thái
									</label> <input type="text" class="form-control" id="statusName" value="${status.statusName}"
										name="statusName">
										<span id="error_name"></span>
								</div>															
								<div>
									<button class="btn btn-primary" style="width: 100%;"
										type="submit" id="btnAddStatus">Sửa
										Trạng Thái</button>
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
	<script>
function validation(){
	var code_error = document.getElementById("error_code");
	var name_error = document.getElementById("error_name");

	var code = document.getElementById("statusCode").value;
	var name = document.getElementById("statusName").value;
	var check = true;
	
	if (code === null || code === "") {
		code_error.innerHTML = "Mã tóm tắt không được để trống";
		check = false;
	} else {
		code_error.innerHTML = "";
	}
	
	if (name === null || name === "") {
		name_error.innerHTML = "Tên trạng thái không được để trống";
		check = false;
	} else {
		name_error.innerHTML = "";
	}

	return check;
}
</script>
</body>
</html>