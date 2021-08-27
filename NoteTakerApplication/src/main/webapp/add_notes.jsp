<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1>Please fill your notes detail</h1>
		<br>
		<form action="SaveNoteServlet" method="post">
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Note Title</label> 
				<input 
				required
				type="text" 
				class="form-control"
				id="title" 
				name="title"
				aria-describedby="emailHelp"
				placeholder="Enter here">
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Note Content</label>
				<textarea 
				id="content"
				name="content"
				required 
				placeholder="Enter your content here" 
				class="form-control"
				style="height: 300px;"></textarea>
			</div>
			<div class="container text-center">
			
			<button type="submit" class="btn btn-primary">Add</button>
			</div>
		</form>
	</div>
</body>
</html>