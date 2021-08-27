<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<h1>Edit your note</h1>
		<br>
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getFactory().openSession();
		Note note = s.get(Note.class, noteId);
		%>
		<form action="UpdateServlet" method="post">

			<div class="mb-3">
				<input value="<%=note.getId()%>" name="noteId" hidden="true">
				<label for="exampleInputEmail1" class="form-label">Note
					Title</label> <input required type="text" class="form-control" id="title"
					name="title" aria-describedby="emailHelp" placeholder="Enter here"
					value="<%=note.getTitle()%>">
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Note
					Content</label>
				<textarea id="content" name="content" required
					placeholder="Enter your content here" class="form-control"
					style="height: 300px;"><%=note.getContent()%></textarea>
			</div>
			<div class="container text-center">

				<button type="submit" class="btn btn-primary">Update</button>
			</div>
		</form>

	</div>
</body>
</html>