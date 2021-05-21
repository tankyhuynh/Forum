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

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue@2.6.12/dist/vue.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>

<meta http-equiv="refresh" content="180">

</head>
<body>
	<%@ include file="../../frontend/layout/partials/header.jsp"%>
	<section>
		<div class="container mt-4">
			<div class="row container">
				<div class="col-md-2">
					<div>
						<div style="margin-bottom: 10px;">
							<span style="font-weight: bold">Tất cả danh mục</span>
						</div>
						<div>
							<ul
								style="list-style-type: none; padding-left: 0px; font-size: 14px;">
								<c:forEach var="typeOfPost" items="${typeOfPostList}">
									<li class="mb-2"><a
										href="<c:url value='/bai-viet/the-loai/${typeOfPost.id}' />"
										style="color: black">${typeOfPost.typeName}</a></li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-8" id="app">
				<security:authorize access="isAuthenticated()">
					<div>
						<a href="<c:url value='/bai-viet/tao-bai-viet' />"
							class="btn btn-primary mb-3 ">Tạo bài viết</a>
					</div>
				</security:authorize>  
					<c:if test="${not empty postList}">
						<c:forEach var="post" items="${postList}">
							<c:if test="${empty post.historyOfPostId}">
								<div class=" shadow-sm p-3 bg-white rounded mb-1">
									<div>
										<div class="row">
											<div class="col-md-10">
												<a href="<c:url value='/bai-viet/${ post.id }'/>"> <span
													style="color: black; font-weight: bold; font-size: 18px">${post.title}</span>
												</a>
											</div>
											<div class="col-md-2" style="text-align: right;">
												<button data-bs-toggle="modal"
													data-bs-target="#exampleModal"
													data-bs-whatever="@getbootstrap"
													style="font-size: 20px; font-weight: bold; margin-top: 0px; background: none; border: none"
													onclick='setPostId(${post.id})'>...</button>
											</div>
										</div>
										<div>
											<span style="font-size: 14px; color: #2f99f4;">${post.typeOfPostId.typeName}</span>
										</div>

										<span style="color: darkgray; font-size: 10px">${ post.time }</span>
										<hr style="color: silver;">

									</div>

<%-- 									<div>
=======
									<%-- <div>
>>>>>>> rank
										<p style="color: black; font-size: 16px">${ post.content }</p>
									</div> --%>
									<div>
										<p></p>
									</div>
								</div>

							</c:if>
						</c:forEach>
					</c:if>
				</div>
				<div class="col-md-2">
					<div>
						<div style="margin-bottom: 10px;">
							<span style="font-weight: bold">Bảng xếp hạng</span>
						</div>
						<div>
							<table class="table">
								<thead>
								<!-- 	<tr>
										<th scope="col">ID</th>
										<th scope="col">Họ tên</th>
										<th scope="col">Số lượng</th>
									</tr> -->
								</thead>
								<tbody>
									<c:forEach var="rank" items="${rankList}">
										<tr>
											<td>${rank.getFullName()}</td>
											<td>${rank.getSoLuong()}</td>
										</tr>
									</c:forEach>

								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>


		<!-- Report -->



		<div class="modal fade" id="exampleModal" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Báo cáo bài
							viết</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<form>
							<%-- <div class="mb-3">
									<input type="hidden" id="userId" name="userId"
										value="<%=SecurityUtils.getPrincipal().getId()%>">
								</div> --%>
							<div class="mb-3">
								<label for="typeOfReportId" class="form-label"> Chọn thể
									loại bạn muốn báo cáo </label> <select class="form-select form-control"
									aria-label="Default select example" name="typeOfReportId"
									id="typeOfReportId">
									<c:forEach var="typeOfReport" items="${typeOfReportList}">
										<option value="${typeOfReport.id}">${typeOfReport.typeName}</option>
									</c:forEach>
								</select>
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">Đóng</button>
						<!-- <button type="button" class="btn btn-primary"
								onclick='postReport(document.getElementById("userId").value,document.getElementById("typeOfReportId").value)'>Gửi
								báo cáo</button> -->
						<button type="button" class="btn btn-primary"
							onclick='postReport(document.getElementById("typeOfReportId").value)'>Gửi
							báo cáo</button>
					</div>
				</div>
			</div>
		</div>



		<!-- End Report -->

	</section>


	<script>
	
	var postId = "";
	
	function setPostId(postId){
		this.postId = postId;
	}
	
	function postReport(typeOfReportId){
		 $.post("/Forum/bai-viet/them-bao-cao",
			    {
			    	postId: this.postId,
			    	  //userId: userId,
			    	  typeOfReportId:typeOfReportId
			    },
			    function(data,status){
			    	alert("Báo cáo của bạn đã được gửi!");
			     }); 
	}
	
	
	
	/* var vm = new Vue({
	      el: '#app',
	      data: {
	    	  commentList:[],
	    	  postId: ${post.id},
	      	},
	      // define methods under the `methods` object
	      methods: {
	       
	    	  greet: function (event) {
	              
	    		  axios.get('/Forum/bai-viet/api-binh-luan/' + this.postId)
		    	    .then(response => {
		    	      var list = response.data;
		    	      this.commentList = list; 
		    	    })
		    	    .catch(e => {
		    	      this.errors.push(e)
		    	    })
	        
	        
	      },
	      	
	      	postForm: function (postId,userId,childOfCommentId,content){
	    		$.post("http://localhost:8080/Forum/bai-viet/them-binh-luan",
	    			    {
	    			    	postId: postId,
	    			    	  userId: userId,
	    			    	  childOfCommentId:childOfCommentId,
	    			    	  content: document.getElementsByName(content)[0].value
	    			    },
	    			    function(data,status){
	    			    	 var dataObject = JSON.stringify(data);
	    			      	vm.commentList = dataObject;
	    			     });
	    	},
	    	
	    	displayReply: function (id) {
	    		document.getElementById(id).style.display = "block";
	    		}
	      	
	      	
	}});
	
	vm.greet();
	setInterval(vm.greet,500);  */
	</script>



	<%@ include file="../../frontend/layout/partials/footer.jsp"%>


	<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
	<%@ include file="../../frontend/layout/script.jsp"%>
</body>

</html>