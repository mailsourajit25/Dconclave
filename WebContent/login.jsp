<%@include file="nav.jsp" %>
<div class="ui container" style="margin-top:50px;">
<form class="ui form" method="post" action="loginsubmit" id="form1">
  <h3 class="ui dividing header">Login</h3>
  <div class="field">
  <label>Email</label>
  <input type="text" name="email" placeholder="Enter your email" onBlur="checkloginEmail(this.value)" id="email" >
    <p id="log_email_status"></p>
    </div>
  
  <div class="field">
  <label>Password</label>
  <input type="password" name="pass" >
  </div>
  <%if(request.getParameter("pstatus")!=null){
	  String pstatus=request.getParameter("pstatus");
	  if(pstatus=="404")
		  out.println("<span style='color:red'>Invalid Password</span>");
  } %>
  <button class="ui button blue" id="login_submit">Login </button>
  </form>
<script src="js/login.js"></script>
</div>
<%@include file="footer.jsp" %>