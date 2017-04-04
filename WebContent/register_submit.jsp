<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="onlineForum.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/semantic.min.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src="js/jquery3.1.1.min.js"></script>
<script src="js/semantic.min.js"></script>
<div class="ui container">
<%

if(s.update()!=0){

%>
<h2 class="ui header green">Registration Successfull</h2>
<%} %>
</div>
</body>
</html>