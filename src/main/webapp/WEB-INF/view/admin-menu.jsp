<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Account" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%Account lib = (Account)session.getAttribute("user");%>
    <h1>よお👍管理者</h1>
    <p>ようこそ<%=lib.getName() %>さん</p>
	<a href="RegisterBookServlet">新規図書登録</a><br>
	<a href="SelectAllLibraryServlet">図書一覧</a><br>
	<a href="DeleteFormServlet">登録図書削除</a><br>
</body>
</html>