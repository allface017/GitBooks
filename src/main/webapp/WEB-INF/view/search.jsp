<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	検索したい本のnameを入力してください：
	<form action="SearchBookServlet2" method="post">
	<input type="text" name="name">
	<input type="submit">
	</form>
</body>
</html>