<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="onlineForum.*,java.sql.*,java.io.*, java.util.Date, java.util.Enumeration" %>
  
    
   
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
	
	width:100%;
	text-align:center;
	
	background-color:black;
color:white;
height:60px;

}
#allans{
overflow:hidden;
float:right;
}
#allques{
overflow:hidden;
float:right;

}
.box{
margin-top:60px;padding:20px;width:100%;border-bottom:2px solid orange;
}
.upvotes{
font-weight:bold;
font-size:20px;
}
.ansbox{
width:100%;

padding-bottom:2px;
}
.confluid{
padding-left:3%;
padding-right:3%;
}
#qdeco{
border-bottom:5px solid orange;
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
    <form method="get" action="search.jsp">
      <input name="query" type="text" placeholder="Search..." style="padding-right:50px;"/>
      <button style="background:transparent;border:none;margin-left:-50px;">
      <i class="search icon"></i></button>
      </form>
    </div>
    </div>
  <span class=" right item"><b><jsp:getProperty property="fname" name="user" /></b></span> 
  <a class="right item" href="home.jsp"><b>Forum</b></a>
  <a class="right item" href="logout.jsp"><b>Log out</b></a>
</div>
<% 
//if(request.getSession(false).getAttribute("user").toString().isEmpty()==false){
//	response.sendRedirect("login.jsp");
 // }


 %>
 
<div style="margin-top:50px;">&nbsp;</div>




