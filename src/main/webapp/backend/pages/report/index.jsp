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
							<h1 class="h3 mb-0 text-gray-800">Trang chủ báo cáo</h1>
						</div>
						<div class="table-responsive container" >
							<table class="table table-hover">
								<thead>
									<tr style="text-align: center;">
										<th>Mã Báo Cáo</th>
										<th>Mã Bài Viết</th>
										<th>Thể Loại Báo Cáo</th>
										<th>Mã Người Dùng</th>
										<th>Thời Gian</th>
										<th>Hành Động</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="report" items="${reportList}">
										<tr>
											<td class='clickable-row' data-href="<c:url value='/bai-viet/${report.postId.id}'/>">${report.id}</td>
											<td class='clickable-row' data-href="<c:url value='/bai-viet/${report.postId.id}'/>">${report.postId.id}</td>
											<td class='clickable-row' data-href="<c:url value='/bai-viet/${report.postId.id}'/>">${report.typeOfReportId.typeName}</td>
											<td class='clickable-row' data-href="<c:url value='/bai-viet/${report.postId.id}'/>">${report.userId.id}</td>
											<td class='clickable-row' data-href="<c:url value='/bai-viet/${report.postId.id}'/>">${report.time}</td>
											<td class="d-flex">
<%--  												<div>
													<a style="width: 100px" class="btn btn-danger"
														href="<c:url value='/quan-tri/xoa-bao-cao/${report.id}'/>">Xóa</a>
												</div>  --%>
												
												<div>
												<button data-bs-toggle="modal"
													data-bs-target="#exampleModal"
													data-bs-whatever="@getbootstrap"
													style="width: 100px" class="btn btn-danger"
													onclick='setReportId(${report.id})'>Xóa</button>
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
					<h5>Bạn chắc chắn muốn xoá báo cáo này?</h5>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Đóng</button>
					<button type="button" class="btn btn-primary"
						onclick='deleteReport()'>Xác nhận xoá</button>
				</div>
			</div>
		</div>
	</div>
	<script>
	var reportId = "";
	
	function setReportId(reportId){
		this.reportId = reportId;
	}
	
		function deleteReport() {
			$.get("/Forum/quan-tri/xoa-bao-cao/" + reportId, {
			}, function(data, status) {
				alert("Xoá thành công!");
				location.reload(); 
			});
		}
	</script>
	
	<%@ include file="../../../backend/layout/partials/footer.jsp"%>
	<%@ include file="../../../backend/layout/script.jsp"%>
	
	<script>
	jQuery(document).ready(function($) {
	    $(".clickable-row").click(function() {
	        window.location = $(this).data("href");
	    });
	});
	</script>
	
</body>
</html>