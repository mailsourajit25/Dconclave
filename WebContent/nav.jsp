<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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





 









<div class="ui left demo vertical inverted sidebar labeled icon menu ">
  <a class="item">
    <i class="home icon"></i>
    Home
  </a>
  <a class="item">
    <i class="block layout icon"></i>
    Topics
  </a>
  <a class="item">
    <i class="users icon"></i>
    Popular Questions
  </a>
  <a class="item">
    <i class="wait icon"></i>
    Recent Questions
  </a>
  <a class="item">
    <i class="sign in icon"></i>
    Login
  </a>
  <a class="item">
    <i class="add user icon"></i>
    Register
  </a>
</div>

<div class="pusher">
<div class="ui segment">
<div class="ui large secondary menu">
      <div class="item">
        <div class="ui logo shape">
          <div class="sides">
            <div class="active ui side">
              <img class="ui image" src="/images/logo.png">
            </div>
          </div>
        </div>
      </div>
      <a class="view-ui item" id="menubtn">
        <i class="sidebar icon"></i> Menu
      </a>
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

//$(".ui .sticky").sticky();
</script>