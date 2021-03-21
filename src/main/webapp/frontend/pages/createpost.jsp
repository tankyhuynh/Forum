<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

  

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<%@ include file="../../frontend/layout/style.jsp"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script src="https://cdn.bootcss.com/quill/2.0.0-dev.3/quill.js"></script>
<link href="https://cdn.bootcss.com/quill/2.0.0-dev.3/quill.snow.css"
	rel="stylesheet">
<link href="https://cdn.bootcss.com/quill/2.0.0-dev.3/quill.bubble.css"
	rel="stylesheet">

</head>

<style>
#editor {
	min-height: 180px;
}
</style>

<body>
	<%@ include file="../../frontend/layout/partials/header.jsp"%>
	<section>
		<div class="container mt-4" style="width: 90%; 
    padding-bottom: 90px;
		">

			<h5 style="color: red">Tạo bài viết của bạn</h5>
			<hr>
			<form:form action="<c:url value='/tao-bai-viet' />" method="POST" modelAttribute="post">
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
						<textarea rows="7" class="form-control"></textarea>
						<!-- <div id="editor" class="showContent">
						</div> -->
							<input type="file" onchange="updateImg(this.files[0])" id="imgData"
							style="display: none;">
						<button type="submit" class="btn btn-primary mt-3">Tạo bài viết</button>
					</div>
				</div>
				
			</form:form>
		</div>
	</section>
<script>
var quill;
$(function() {
    / * Editor action bar options * /
    var toolbarOptions = [
        ['bold', 'italic', 'underline', 'strike'], // bold, italic, underline, strikethrough
        [{'align': []}], // content alignment: Left, right, center, parallel
        [{'color': []}, {'background': []}], // font color, text background color
        ['image'],//upload picture
        ['clean'], // Clear Formatting
        [{'header': 1}, {'header': 2}], // title H1 H2
        [{'list': 'ordered'}, {'list': 'bullet'}],//Datasheets
        [{'script': 'sub'}, {'script': 'super'}], // superscript, subscript
        [{'indent': '-1'}, {'indent': '+1'}], // Indent, Decrease Indent
        [{'size': ['small', false, 'large', 'huge']}], // custom drop-down: font style .... almost like bold
        [{'header': [1, 2, 3, 4, 5, 6, false]}],// title H1 H2 H3 ......
        [{'direction': 'rtl'}], // text direction
        [{'font': []}], // do not know what function
        ['blockquote', 'code-block']
        // [ 'video'], // video uploads
        // [ 'formula'] // load required cdnjs.cloudflare.com/ajax/libs/KaTeX/0.7.1/katex.min.js
    ];
     quill = new Quill('#editor', {
        modules: {
            toolbar: toolbarOptions  // Specify Editor action bar
        },
        theme: 'snow', // theme, there are two, snow and bubble
        placeholder: 'please enter....',
        readOnly: false
    });
    / * -------------------------------------- do not know the specific effect ------ --------------------------- * /
	// Modify Style
     var Align = Quill.import('attributors/style/align');
     Align.whitelist = ['right', 'center', 'justify'];
     Quill.register(Align, true);
    / * Pass a Boolean value, the control editor is available * /
     quill.enable();
    var toolbar = quill.getModule('toolbar');
    toolbar.addHandler('image',function () {
        $('#imgData').click();
    });
});
    function updateImg(file) {
        var formData = new FormData();
        formData.append('file', file);
        $.ajax({                                // send ajax
            url: '/common/upload',                        //url
            type: 'post',                        // send to post
            data: formData,             // data to be transmitted. Rear receiving $ _POST [ 'user']
            dataType: 'json',                  // return data types
            cache: false,
            traditional: true,
            contentType: false,
            processData: false,
            success: function (res) {
                /*console.log(res);*/
                // callback after the pictures uploaded successfully
                const range = quill.getSelection();
                if (range) {
                    quill.insertEmbed(range.index, 'image', "" + res.data.src); // upload good pictures, rich text inserted into the range.index (current marker)
                }
            },
            error: function (e) {
                console.log(e);
            }
        });
    }
    function submitData() {
        res = quill.container.firstChild.innerHTML; // Get the current contents of the rich text editor instance (with html tags)
        console.log(res); // Get the current contents of the rich text editor instance (with html tags)
    };
</script>
	<%@ include file="../../frontend/layout/partials/footer.jsp"%>
	<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
	<%@ include file="../../frontend/layout/script.jsp"%>
</body>

</html>