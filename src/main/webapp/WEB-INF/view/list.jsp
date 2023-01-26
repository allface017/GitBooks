<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Library" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/library.css">
<title>一覧</title>
</head>
<body>
	
	<table border="1">
		<tr>
			<th><p>図書名</p></th>
			<th><p>著者名</p></th>
			<th><p>出版社名</p></th>
			
		</tr>
	<%
	List<Library> list = (ArrayList<Library>)request.getAttribute("list");
		for(Library s : list) {
	%>
		<tr>
			<td><p><%=s.getName() %></p></td>
			<td><p><%=s.getAuthor() %></p></td>
			<td><p><%=s.getPublisher() %></p></td>
		</tr>
	<%} %>
	</table>
	<a href = "RegisterBookServlet">登録画面へ</a>
	<a href="TopServlet">戻る</a>
</body>
</html>