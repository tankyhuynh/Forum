<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue@2.6.12/dist/vue.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>

<script>
	/* $(document).ready(function(){
	 $("button").click(function(){
	 $.get("/Forum/bai-viet/tao-bai-viet", function(data, status){
	 $("div").html(data);
	 });
	 });
	 }); */
</script>
</head>
<body>
	<ul id="app">
		
	</ul>

<script type="text/javascript">
var vm = new Vue({
    el: '#app',
    data: {
  	  postId: 124,
  	  userId: 4,
  	  childOfCommentId:'',
  	  content:'ddfgtg'
    	},
    // define methods under the `methods` object
    methods: {
      submitData: function (event) {
        axios
        .post('http://localhost:8080/Forum/bai-viet/them-binh-luan',{ params:{postId: this.postId,
	    	  userId: this.userId,
	    	  childOfCommentId:this.childOfCommentId,
	    	  content: this.content}
      	  		
        })
        .then(response => (
      		  alert("khac nhau ma2")
      ))
      }
    }
})




	vm.submitData();
</script>
	
</body>
</html>