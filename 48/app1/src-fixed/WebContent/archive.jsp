<jsp:useBean id="bean" class="gui.model.SearchResultBean" scope="session"/>
<%@ page import="gui.model.PostBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert Titel here</title>
</head>
<body>
<c:forEach var="post" items="${sessionScope.bean.results}">
<p>Entry</p>
<div class=post>
	<h3 class=author>
		<c:out value="${post.author}"/>
	</h3>
	<div class=content>
		<c:out value="${post.content}"/>
	</div>
</div>
</c:forEach>
</body>
</html>