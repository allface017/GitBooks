<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/library.css">
<title>登録画面</title>
</head>
<body>
	<h1>検索したいワードを入力してください</h1>
	<form action="SearchBookServlet2" method="post">
		検索ワード：<input type="text" name="word"><br>
				<input type="submit" value="検索">
	</form>
</body>
</html>