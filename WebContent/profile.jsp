<%@include file="pronav.jsp" %>

<div class="ui grid">
<div class="row three">
<div class="column">
<div class="ui card">
  <div class="image">
  <%
      if(user.getPic()==null){
    	  %>
    <img src="images/default.png">
  </div>
  <div class="content">
    <a class="header"><jsp:getProperty property="fname" name="user" /><jsp:getProperty property="lname" name="user" /></a>

    <div class="description">
    	  Upload Picture
    	  <%}
    	  else{
    	  %>
    	  <img src="images/default1.png">
  </div>
  <div class="content">
    <a class="header"><jsp:getProperty property="fname" name="user" /> &nbsp; &nbsp; <jsp:getProperty property="lname" name="user" /></a>
    <div class="description">
    	  Change Picture
    	 <% }%>
    </div>
  </div>
  
  </div>
</div>
</div>
<div class="column">
</div>
<div class="column">
</div>
</div>
</div>
<%@include file="profooter.jsp" %>