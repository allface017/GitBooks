<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Account" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/kumakuma.css">
<meta charset="UTF-8">
<title>管理者メニュー</title>
</head>
<body>
<%Account lib = (Account)session.getAttribute("user");%>
    <h1>よお👍管理者</h1>
    <p>ようこそ<%=lib.getName() %>さん</p>
	<a href="RegisterBookServlet">新規図書登録</a><br>
	<a href="SelectAllLibraryServlet">図書一覧</a><br>
	<a href="DeleteFormServlet">登録図書削除</a><br>
	<a href="SearchBookServlet">図書検索</a><br>
	<a href="LogoutServlet">ログアウト</a>
</body>
</html>