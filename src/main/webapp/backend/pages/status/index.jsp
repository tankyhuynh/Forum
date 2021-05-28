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
							<h1 class="h3 mb-0 text-gray-800">Trang chủ trạng thái</h1>
						</div>
						<a href="<c:url value='/quan-tri/them-trang-thai'/>"
							class="btn btn-success mb-3">Thêm trạng thái</a>
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
									<c:forEach var="status" items="${statusList}">
										<tr>
											<td>${status.id}</td>
											<td>${status.statusCode}</td>
											<td>${status.statusName}</td>
											<td class="d-flex">
												<div style="padding-right: 10px">
													<a style="width: 100px" class="btn btn-warning"
														href="<c:url value='/quan-tri/sua-trang-thai/${status.id}'/>">Chỉnh
														sửa</a>
												</div>
												
												<div>
												<button data-bs-toggle="modal"
													data-bs-target="#exampleModal"
													data-bs-whatever="@getbootstrap"
													style="width: 100px" class="btn btn-danger"
													onclick='setStatusId(${status.id})'>Xóa</button>
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
	
			<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Cảnh Báo!!!</h5>
				</div>
				<div class="modal-body">
					<h5>Bạn chắc chắn muốn xoá thể loại báo cáo này?</h5>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Đóng</button>
					<button type="button" class="btn btn-primary"
						onclick='deleteStatus()'>Xác nhận xoá</button>
				</div>
			</div>
		</div>
	</div>
	<script>
	var statusId = "";
	
	function setStatusId(statusId){
		this.statusId = statusId;
	}
	
		function deleteStatus() {
			$.get("/Forum/quan-tri/xoa-trang-thai/" + statusId, {
			}, function(data, status) {
				alert("Xoá thành công!");
				location.reload(); 
			});
		}
	</script>
	<%@ include file="../../../backend/layout/partials/footer.jsp"%>
	<%@ include file="../../../backend/layout/script.jsp"%>
</body>
</html>