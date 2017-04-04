<%@include file="nav.jsp" %>
<div class="ui container" style="margin-top:50px;">
<form class="ui form" method="post" action="login_submit.jsp" id="form1">
  <h3 class="ui dividing header">Registration Form</h3>
  <div class="field">
  <label>Email</label>
  <input type="text" name="email" >
  </div>
  
  <div class="field">
  <label>Password</label>
  <input type="password" name="pass" >
  </div>
  
  <button class="ui button blue ">Login </button>
  </form>

</div>
<%@include file="footer.jsp" %>