<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="onlineForum.*,java.sql.*,java.io.*, java.util.Date, java.util.Enumeration" %>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/semantic.min.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dconclave</title>
<style>
.hover{background-color:rgba(0,0,0,0.6);padding:10px;color:white; font-size:24px;display:inline-block}
.hover:hover{
background-color:black;}
</style>
</head>

<body>
<script src="js/jquery3.1.1.min.js"></script>
<script src="js/semantic.min.js"></script>
<div class="ui left demo vertical inverted sidebar labeled icon menu ">
  
  <a class="item" href="login.jsp">
    <i class="sign in icon"></i>
    Login
  </a>
  <a class="item" href="register.jsp">
    <i class="add user icon"></i>
    Register
  </a>
</div>

<div class="pusher" >
<div class="ui segment inverted">
<div class="ui large secondary menu inverted">
      <div class="item">
        <div class="ui logo shape">
          <div class="sides">
            <div class="active ui side">
              <img class="ui tiny circular image" src="images/logo.png">
            </div>
          </div>
        </div>
      </div>
      <a class="view-ui item" id="menubtn">
        <i class="sidebar icon"></i> Menu
      </a>
       <div class="ui icon input" style="width:100%; max-width:300px;margin:auto;margin-top:30px;">
    <form method="get" action="search_not_logged_in.jsp">
      <input name="query" type="text" placeholder="Search..." style="padding-right:50px;"/>
      <button style="background:transparent;border:none;margin-left:-50px;">
      <i class="search icon"></i></button>
      </form>
    </div>
      <div class="right menu">
        
      </div>
    </div>
</div>
<script>
$("#menubtn").click(function(){
$('.ui.labeled.icon.sidebar')
.sidebar('toggle')
;
});
$('.ui.labeled.icon.sidebar')
.sidebar('hide')
;


</script>