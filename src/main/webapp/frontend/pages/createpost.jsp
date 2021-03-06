<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<%@ include file="../../frontend/layout/style.jsp"%>
<script src="//cdn.ckeditor.com/4.16.0/standard/ckeditor.js"></script>
</head>

<body>
	<%@ include file="../../frontend/layout/partials/header.jsp"%>
	<section>
		<div class="container mt-4" style="width: 60%">

			<h5 style="color: red">Tạo bài viết của bạn</h5>
			<hr>
			<form action="#" method="POST">
				<div class="row mb-3">
					<label for="txtTitle" class="col-sm-2 col-form-label">Tiêu
						đề bài viết</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="txtTitle"
							name="txtTitle">
					</div>
				</div>


				<div class="row mb-3">
					<label for="typeOfPost" class="col-sm-2 col-form-label">Thể
						loại bài viết</label>
					<div class="col-sm-10">
						<select class="form-select" aria-label="Default select example"
							name="typeOfPost">
							<option value="1">One</option>
							<option value="2">Two</option>
							<option value="3">Three</option>
						</select>
					</div>
				</div>

				<div class="row mb-3">
					<label for="typeOfPost" class="col-sm-2 col-form-label">Nội
						dung bài viết</label>
					<div class="col-sm-10">
						<textarea name="content" id="content">
						
        				</textarea>
					</div>
				</div>
				<button type="submit" class="btn btn-primary">Tạo bài viết</button>
			</form>
		</div>
	</section>

<script>
                        CKEDITOR.replace( 'content',{

                        } );
                        
                </script>
	<%@ include file="../../frontend/layout/partials/footer.jsp"%>


	<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
	<%@ include file="../../frontend/layout/script.jsp"%>
</body>

</html>