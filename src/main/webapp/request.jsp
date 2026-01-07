<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<a href="sample?aaa=メッセージ&bbb=受け取る">遷移</a>
<% out.print("hello world"); %>
<p>hello world!!</p>

</body>
</html>