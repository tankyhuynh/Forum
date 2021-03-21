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
		<li v-for="item in items" :key="item.title">{{ item.title }}
		</li>
	</ul>

	<script>
	var vm = new Vue({
	      el: '#app',
	      data: {
	        items: '',
	        vl: ''
	      	},
	      // define methods under the `methods` object
	      methods: {
	        greet: function (event) {
	          axios
	          .get('http://localhost:8080/Forum/bai-viet/api-bai-viet')
	          .then(response => (
	        this.vl = response.data
	          )
	        )
	        if( JSON.stringify(this.vl)!=JSON.stringify(this.items))
          {
	        	 alert("khac nhau ma2");
           this.items = this.vl;
          }
          else{
            
            alert("Bang nhau ma2");
          }
	        }
	      }
	    })
		vm.greet();
	   setInterval(vm.greet,5000); 
	</script>
</body>
</html>