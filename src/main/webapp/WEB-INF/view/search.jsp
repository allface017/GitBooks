<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/library.css">
<title>検索フォーム</title>
</head>
<body>
	<p>検索したい図書名を入力してください：</p>
	<form action="SearchBookServlet2" method="post">
	<input type="text" name="name">
	<input type="submit">
	</form>
		<a href="TopServlet">戻る</a>
</body>
</html>