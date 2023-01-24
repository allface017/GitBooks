<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Account" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/BooksMenu.css">
<title>Insert title here</title>
</head>
<body>
	<%
	Account lib = (Account)session.getAttribute("user");
	%>
	<h3>おっすユーザー</h3>
	<p>ようこそ<%=lib.getName() %>さん</p>
	<a href="SelectAllLibraryServlet">登録図書一覧</a><br>
	<a href="LogoutServlet">ログアウト</a>
</body>
</html>