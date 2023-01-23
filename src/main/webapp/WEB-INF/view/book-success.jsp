<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/library.css">
<title>登録成功</title>
</head>
<body>
	<p style="color:red">下記の図書を登録しました。</p>
	<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String author = request.getParameter("author");
	String publisher = request.getParameter("publisher");
	%>
	<p>図書名:<%=name %></p>
	<p>著者名:<%=author %></p>
	<p>出版社:<%=publisher %></p>
	<a href = "SelectAllLibraryServlet">一覧画面へ</a>
	<a href="TopServlet">戻る</a>
</body>
</html>