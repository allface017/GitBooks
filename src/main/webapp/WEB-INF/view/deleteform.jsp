<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>削除画面</title>
</head>
<body>
	<h1>削除するISBNを入力してください</h1>
	<form action="DeleteBookServlet" method="post">
		名前：<input type="text" name="name"><br>
		<input type="submit" value="削除">
	</form>
</body>
</html>