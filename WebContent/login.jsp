<%@include file="nav.jsp" %>
<div class="ui container" style="margin-top:50px;">
<form class="ui form" method="post" action="login_submit.jsp" id="form1">
  <h3 class="ui dividing header">Login</h3>
  <div class="field">
  <label>Email</label>
  <input type="text" name="email" placeholder="Enter your email" onBlur="checkEmail(this.value)" id="email" >
    <p id="email_status"></p>
    </div>
  
  <div class="field">
  <label>Password</label>
  <input type="password" name="pass" >
  </div>
  
  <button class="ui button blue" id="login_submit">Login </button>
  </form>
<script type="text/javascript">
function checkloginEmail(a){
	
	$.post('checkemail.jsp',{
		email:a
	},
	
			function(data,status){
		if(data.trim()=="Exists"){
		$("#email_status").html('<span style="color:red">Email Already Exists</span>');
		$("#login_submit").attr('disabled','disabled');
		}
		
		
		
	});
}

</script>
</div>
<%@include file="footer.jsp" %>