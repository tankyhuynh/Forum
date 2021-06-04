<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SB Admin 2 - Dashboard</title>
<%@ include file="../backend/layout/style.jsp"%>
</head>
<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<%@ include file="../backend/layout/partials/sidebar.jsp"%>

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Top bar -->
				<%@ include file="../backend/layout/partials/header.jsp"%>

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
						<!--  <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                class="fas fa-download fa-sm text-white-50"></i> Generate Report</a> -->
					</div>

					<form:form method="GET" modelAttribute="total">
						<!-- Content Row -->
						<div class="row">

							<!-- Earnings (Monthly) Card Example -->
							<div class="col-xl-3 col-md-6 mb-4">
								<div class="card border-left-primary shadow h-100 py-2">
									<div class="card-body">
										<div class="row no-gutters align-items-center">
											<div class="col mr-2">
												<div
													class="text-xs font-weight-bold text-primary text-uppercase mb-1">
													Tổng số bài viết</div>
												<div class="h5 mb-0 font-weight-bold text-gray-800">${total.totalPost}</div>
											</div>
											<div class="col-auto">
												<i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
											</div>
										</div>
									</div>
								</div>
							</div>

							<!-- Earnings (Monthly) Card Example -->
							<div class="col-xl-3 col-md-6 mb-4">
								<div class="card border-left-success shadow h-100 py-2">
									<div class="card-body">
										<div class="row no-gutters align-items-center">
											<div class="col mr-2">
												<div
													class="text-xs font-weight-bold text-success text-uppercase mb-1">
													Tổng số báo cáo</div>
												<div class="h5 mb-0 font-weight-bold text-gray-800">${total.totalReport}</div>
											</div>
											<div class="col-auto">
                                            <i class="far fa-bell fa-2x text-gray-300"></i>
                                        </div>
										</div>
									</div>
								</div>
							</div>

							<!-- Earnings (Monthly) Card Example -->
							<div class="col-xl-3 col-md-6 mb-4">
								<div class="card border-left-info shadow h-100 py-2">
									<div class="card-body">
										<div class="row no-gutters align-items-center">
											<div class="col mr-2">
												<div
													class="text-xs font-weight-bold text-info text-uppercase mb-1">Tổng
													số tài khoản</div>
												<div class="row no-gutters align-items-center">
													<div class="col-auto">
														<div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">${total.totalUser}</div>
													</div>
												</div>
											</div>
											<div class="col-auto">
														<i class="fas fa-user-friends fa-2x text-gray-300"></i>
													</div>

										</div>
									</div>
								</div>
							</div>

							<!-- Pending Requests Card Example -->
							<div class="col-xl-3 col-md-6 mb-4">
								<div class="card border-left-warning shadow h-100 py-2">
									<div class="card-body">
										<div class="row no-gutters align-items-center">
											<div class="col mr-2">
												<div
													class="text-xs font-weight-bold text-warning text-uppercase mb-1">
													Tổng bình luận</div>
												<div class="h5 mb-0 font-weight-bold text-gray-800">${total.totalComment}</div>
											</div>
											<div class="col-auto">
												<i class="fas fa-comments fa-2x text-gray-300"></i>
											</div>
										</div>
									</div>
								</div>
							</div>

						</div>
					</form:form>
					<!-- Content Row -->

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<!-- ======= Footer ======= -->
			<%@ include file="../backend/layout/partials/footer.jsp"%>
			<!-- End Footer -->
		</div>
	</div>

	<%@ include file="../backend/layout/script.jsp"%>
</body>
</html>