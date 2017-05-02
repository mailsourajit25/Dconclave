<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="nav.jsp" %>
<div class="ui container" style="margin-top:50px;">
<%
//If session is set then this will take it back to profile page
if(session.getAttribute("user")!=null){
	response.sendRedirect("profile.jsp");
}
//if registered successfully then reg_code will be set
if(request.getParameter("reg_code")!=null){
	String regcode=(String)request.getParameter("reg_code");
	if(regcode.equals("340ad75b-388e-4d80-b148-eb48672be293"))
	{	

	%>
	
	<div class="ui success message">
  <i class="close icon"></i>
  <div class="header">
    Registration was successful.
  </div>
  <p>You may now log-in to continue</p>
</div>
	<%}
}
	%>
	
<form class="ui form" method="post" action="register_submit" id="form1">
  <h3 class="ui dividing header">Registration Form</h3>
  <div class="field">
    <label>Name</label>
    <div class="two fields">
      <div class="field">
        <input type="text" name="firstname" placeholder="First Name">
      </div>
      <div class="field">
        <input type="text" name="lastname" placeholder="Last Name">
      </div>
    </div>
  </div>
  

    <div class="two fields">
    <div class="field">
      <label>Country</label>
      <div class="ui fluid search selection dropdown" id="country">
        <input type="hidden" name="country">
        <i class="dropdown icon"></i>
        <div class="default text">Select Country</div>
        <div class="menu">
    <div class="item" data-value="AUSTRALIA"><i class="au flag"></i>Australia</div>
    <div class="item" data-value="INDIA"><i class="in flag"></i>India</div>
    <div class="item" data-value="JAPAN"><i class="jp flag"></i>Japan</div>
    <div class="item" data-value="PORTUGAL"><i class="pt flag"></i>Portugal</div>
    <div class="item" data-value="SINGAPORE"><i class="sg flag"></i>Singapore</div>
    <div class="item" data-value="SWITZERLAND"><i class="ch flag"></i>Switzerland</div>
    <div class="item" data-value="TAIWAN"><i class="tw flag"></i>Taiwan</div>
    <div class="item" data-value="THAILAND"><i class="th flag"></i>Thailand</div>
    <div class="item" data-value="TURKEY"><i class="tr flag"></i>Turkey</div>
    <div class="item" data-value="UAE"><i class="ae flag"></i>United Arab Emirates</div>
    <div class="item" data-value="USA"><i class="us flag"></i>United States</div>
  
   
  </div>
       </div>
    </div>
    <div class="field">
      <label>Gender</label>
      <div class="ui selection dropdown" id="gender">
          <input type="hidden" name="gender">
          <i class="dropdown icon"></i>
          <div class="default text">Gender</div>
          <div class="menu">
              <div class="item" data-value="M">Male</div>
              <div class="item" data-value="F">Female</div>
          </div>
      </div>
  </div>
    </div>
    
    <div class="field">
    <label>Email</label>
    
    <input type="text" name="email" placeholder="Enter your email" onBlur="checkEmail(this.value)" id="email" >
    <p id="email_status"></p>
    </div>
 
 	<div class="field">
 	<label>Password</label>
 	<div class="two fields">
 	<div class="field">
 	
    
    
    <input type="password" name="pass" placeholder="Enter Password">
    </div>
    
    <div class="field">
    
    
    <input type="password" name="pass2" placeholder="Re-enter password">
    </div>
    </div>
    </div>
    <div class="field">
    <div class="ui checkbox slider">
    <input type="checkbox"  value="on" name="terms">
    <label>Terms & Conditions</label>
  </div></div>
  <button class="ui button green" tabindex="0" id="register"><i class="add user icon"></i>Register</button>
  <div class="ui error message"></div>
</form>
</div>
<script src="js/register.js"></script>
<%@include file="footer.jsp" %>