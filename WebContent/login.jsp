<%@include file="nav.jsp" %>
<div class="ui container" style="margin-top:50px;">
<div class="ui grid">
<div class="two column row">
<div class="column">
<%//Session handler
if(session.getAttribute("user")!=null){
	response.sendRedirect("profile.jsp");
}
if(request.getParameter("pstatus")!=null){
	String regcode=(String)request.getParameter("pstatus");
	if(regcode.equals("404"))
	{	

	%>
	<div class="ui negative message">
  <i class="close icon"></i>
  <div class="header">
    Wrong Password!
  </div>
  <p>Please try again.
</p></div>
	
	<%}
}
	%>
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
  
  <button class="ui button blue" id="login_submit">Login </button>
  </form>
</div>
<div class="column">
<img src="images/login.jpg" style="border-radius:25%" class="centered">
</div>
</div>
</div>
<script src="js/login.js"></script>
</div>
<%@include file="footer.jsp" %>