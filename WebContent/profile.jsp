<%@include file="pronav.jsp" %>

<div class="ui grid" style="margin-top:20px;">

<div class="column one wide"></div>
<div class="column seven wide">
<div class="ui card">
  <div class="image">
    <img src="images/default.png" height="100" width="100" >
  </div>
  <div class="content">
    <a class="header"><jsp:getProperty property="fname" name="user" /><jsp:getProperty property="lname" name="user" /></a>   
  </div>
</div>
</div>
<div class="column six wide">
<b>Country : </b><jsp:getProperty property="country" name="user" /><br>
<b>Number of Answers :</b> <jsp:getProperty property="NOA" name="user" /><br>
<b>Number of Questions Asked :</b> <jsp:getProperty property="NOQ" name="user" /><br>
<b>User Score : </b><jsp:getProperty property="NOQ" name="user" />
<br><br><button class="ui primary button">
  Ask a Question
</button>
</div>
<div class="column two wide">

</div>
</div>

<%@include file="profooter.jsp" %>