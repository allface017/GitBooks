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
	<h1>登録する図書を入力してください</h1>
	<form action="RegisterLibraryServlet" method="post">
		図書名：<input type="text" name="name"><br>
		著者：<input type="text" name="author"><br>
		出版社：<input type="text" name="publisher"><br>
		<input type="submit" value="登録">
	</form>
		<a href="TopServlet">戻る</a>
</body>
</html>