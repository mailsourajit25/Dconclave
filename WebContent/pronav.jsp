<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="onlineForum.*,java.sql.*,java.io.*, java.util.Date, java.util.Enumeration" %>
    
    <%@ taglib prefix="sql" 
           uri="http://java.sun.com/jsp/jstl/sql" %>
           <%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
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
	right: 0;
  bottom: 0;
  left: 0;
	background-color:black;
color:white;
height:60px;
padding-top:20px;
}

body{
position:relative;
}

.box{
margin-top:60px;padding:20px;border-bottom:5px solid orange;width:100%;
}
.upvotes{
font-weight:bold;
font-size:20px;
}

</style>
</head>
<body>
<jsp:useBean id="user" class="onlineForum.user" scope="session" />
<div class="ui top nav inverted thin fixed menu" >
  <div class="left item">
    <a href="profile.jsp"><img class="ui mini circular image" style="border:2px solid white" src="images/logo.png">
  </a></div>
  
  <div class="left item">
   
    <div class="ui icon input" style="width:100%">
      <input type="text" placeholder="Search..." />
      <i class="search icon"></i>
    </div>
    </div>
  <span class=" right item"><b><jsp:getProperty property="fname" name="user" /></b></span> 
  <a class="right item" href="unanswered.jsp"><b>UnAnswered</b></a>
  <a class="right item" href="trending.jsp"><b>Trending</b></a>
  <a class="right item" href="logout.jsp"><b>Log out</b></a>
</div>
<% 
//if(request.getSession(true).getAttribute("user").toString().isEmpty()){
  %><%
 //}else{%>
 
<% //}%>




	
