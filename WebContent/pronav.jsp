<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="onlineForum.user" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/semantic.min.css"/>
<title>Dconclave</title>
<script src="js/jquery3.1.1.min.js"></script>
<script src="js/semantic.min.js"></script>
<style>
#footer {
	position: absolute;
	bottom:0;
	width:100%;
	text-align:center;
}

.bucket{
margin-top:20px;
}

</style>
</head>
<body>

<div class="ui top nav inverted thin fixed menu" >
  <div class="left item">
    <img class="ui mini circular image" style="border:2px solid white" src="images/logo.png">
  </div>
  <div class="left item">
    <div class="ui icon input" style="width:100%">
      <input type="text" placeholder="Search..." />
      <i class="search icon"></i>
    </div>
    </div>
  <a class="right item" href="unanswered.jsp"><b>UnAnswered</b></a>
  <a class="right item" href="trending.jsp"><b>Trending</b></a>
  <a class="right item" href="logout.jsp"><b>Log out</b></a>
</div>
<% /*if(request.getSession(false)==null){
	response.sendRedirect("login.jsp");}
System.out.println(request.getSession(false));*/
	%>
<jsp:useBean id="user" class="onlineForum.user" scope="session" />


	
