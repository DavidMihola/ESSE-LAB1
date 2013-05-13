<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="index" class="gui.model.IndexBean" scope="session" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Private Blog</title>
</head>
<body>

	<ul class=nav id=mainNav>
		<li><a href="newPost.html">New Post</a></li>
		<li>
			<form action="blog/search" id=search>
				<input type="text" name="q" />
			</form>
		</li>
		<li><a href="blog/archive">All Posts</a></li>
	</ul>
	<div id="lastPost">
		<h3><c:out value="${sessionScope.index.post.author}"/></h3>
		<div>
			<c:out value="${sessionScope.index.post.content}"/>
		</div>
	</div>
</body>
</html>