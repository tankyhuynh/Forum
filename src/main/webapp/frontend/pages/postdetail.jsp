<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<%@ include file="../../frontend/layout/style.jsp"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue@2.6.12/dist/vue.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>

</head>

<body>
	<!-- ======= Header ======= -->
	<%@ include file="../../frontend/layout/partials/header.jsp"%>
	<!-- End Header -->
	<section>
		<div id="test">

			<input type="hidden" class="form-control" id="postId" name="postId"
				value="${post.id}"> <input type="hidden"
				class="form-control" id="userId" name="userId"
				value="<%=SecurityUtils.getPrincipal().getId()%>">

		</div>
		<div class="container mt-4" style="width: 80%">
			<div class="p-3  shadow-sm bg-white rounded">
				<div style="">
					<div>
						<h5>${ post.userId.fullName }</h5>

					</div>
					<div>
						<div class="row">
							<div class="col">
								<h5 style="color: rgb(38, 56, 224);">${ post.title }</h5>
							</div>
							<span style="color: darkgray; font-size: 13px">${ post.time }</span>
						</div>
					</div>
					<hr>
					<div>
						<p>${ post.content }</p>
					</div>
					<hr>
					<div>${ post.commentList.size()}Câu trả lời</div>
					<div id="app">
						<div v-for="comment in commentList">
							<div class="rounded-3"
								v-if="comment.childOfCommentList.length == 0 "
								style="margin-bottom: 10px; background: #f8f9fa; padding-left: 10px; padding-bottom: 30px; padding-top: 30px;">
								<div>
									<h6 style="color: red">{{ comment.userId.fullName }}</h6>
									<span style="color: darkgray; font-size: 10px">{{
										comment.time }}</span>
									<div>{{ comment.content }}</div>

									<span style="color: #de5c9d;font-size: 12px"
										v-on:click="displayReply(comment.id)">Trả lời</span>
								</div>
								<div :id="comment.id" style="display: none">

									<form>
										<textarea class="form-control" :name="comment.id"></textarea>
									</form>
									<button class="btn btn-primary mt-3" id="btnDangTraLoi"
										style=" color: white;"
										v-on:click="postForm(comment.postId.id,comment.id,comment.id)">Đăng
										câu trả lời</button>
								</div>

							</div>


							<div v-else>
								<div class="rounded-3 "
									style="margin-bottom: 10px; background: #f8f9fa; padding-bottom: 30px; padding-top: 30px; padding-left: 10px">
									<div>
										<h6 style="color: red">{{ comment.userId.fullName }}</h6>
										<span style="color: darkgray; font-size: 10px">{{
											comment.time }}</span>
										<div>{{ comment.content }}</div>
										<span style="color: #de5c9d;font-size: 12px"
											v-on:click="displayReply(comment.id)">Trả lời</span>
									</div>

									<div :id="comment.id" style="display: none">

										<form>
											<textarea class="form-control" :name="comment.id"></textarea>
										</form>
										<button class="btn btn-primary mt-3" id="btnDangTraLoi"
											style=" color: white;"
											v-on:click="postForm(comment.postId.id,comment.id,comment.id)">Đăng
											câu trả lời</button>

									</div>

								</div>
								<div v-for="child in comment.childOfCommentList">
									<div class="rounded-3 "
										style="padding-left:10px;margin-bottom: 10px; background: #f8f9fa; margin-left: 50px; padding-bottom: 30px; padding-top: 30px;">
										<div>
											<h6 style="color: red">{{ child.userId.fullName }}</h6>
											<span style="color: darkgray; font-size: 10px">{{
												child.time }}</span>
											<div>{{ child.content }}</div>
											<span style="color: #de5c9d;font-size: 12px"
												onclick="displayReply(comment.id)">Trả lời</span>
										</div>
									</div>
								</div>
							</div>
						</div>


						<div class="mt-3">
							<h6>Trả lời của bạn</h6>
							<form>
								<input type="hidden" class="form-control" id="childOfCommentId"
									name="childOfCommentId" value="">
								<textarea class="form-control" name="content" id="content"></textarea>

							</form>
							<button class="btn btn-primary mt-3" id="btnDangTraLoi"
								style="background-color: #fd7e14; color: white;"
								onclick="postForm(document.getElementById('postId').value,document.getElementById('userId').value,document.getElementById('childOfCommentId').value,document.getElementById('content').value)">Đăng
								câu trả lời</button>
						</div>

					</div>

				</div>
			</div>
		</div>
	</section>


	<script>
	
	function postForm(postId,userId,childOfCommentId,content){
		$.post("http://localhost:8080/Forum/bai-viet/them-binh-luan",
			    {
			    	postId: postId,
			    	  userId: userId,
			    	  childOfCommentId:childOfCommentId,
			    	  content: content,
			    },
			    function(data,status){
			    	/* var dataObject = JSON.stringify(data);
			      	vm.commentList = dataObject; */
			     });
	}
	
	
	
	var vm = new Vue({
	      el: '#app',
	      data: {
	    	  commentList:[],
	    	  postId: ${post.id},
	    	 <%--  userId:<%=SecurityUtils.getPrincipal().getId()%>,
	    	  childOfCommentId:'',
	    	  content:'' --%>
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
	      	
	      	postForm: function (postId,childOfCommentId,content){
	    		$.post("http://localhost:8080/Forum/bai-viet/them-binh-luan",
	    			    {
	    			    	postId: postId,
	    			    	  userId: document.getElementById("userId").value,
	    			    	  childOfCommentId:childOfCommentId,
	    			    	  content: document.getElementsByName(content)[0].value
	    			    },
	    			    function(data,status){
	    			    	/* var dataObject = JSON.stringify(data);
	    			      	vm.commentList = dataObject; */
	    			     });
	    	},
	    	
	    	displayReply: function (id) {
	    		document.getElementById(id).style.display = "block";
	    		}
	      	
	      	
	}});
	
	vm.greet();
	
	/* $(document).ready(function(){
		  $("#btnDangTraLoi").click(function(){
		    $.post("http://localhost:8080/Forum/bai-viet/them-binh-luan",
		    {
		    	postId: vm.postId,
		    	  userId: vm.userId,
		    	  childOfCommentId:vm.childOfCommentId,
		    	  content: vm.content,
		    },
		    function(data,status){
		    	/* var dataObject = JSON.stringify(data);
		      	vm.commentList = dataObject; */
		/*     });
		  });
		}); */ 
	
	    setInterval(vm.greet,500);  
	</script>


	<!-- ======= Footer ======= -->
	<%@ include file="../../frontend/layout/partials/footer.jsp"%>
	<!-- End Footer -->

	<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
	<%@ include file="../../frontend/layout/script.jsp"%>
</body>

</html>