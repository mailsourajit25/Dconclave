<%@include file="pronav.jsp"%>
<div style="max-width:500px;margin:auto;margin-top:150px;">
	<form class="ui form" method="post" action="ask_servlet.jsp" id="form1">
  <h3 class="ui dividing header">Ask Anything</h3>
  <div class="field">
  <label>Title</label>
  <input type="text" name="t" placeholder="Question Title"   >
    
    </div>
  
  <div class="field">
      <label>Select Topic</label>
      <div class="ui fluid search selection dropdown" id="country">
        <input type="hidden" name="topic">
        <i class="dropdown icon"></i>
        <div class="default text">Select Topic</div>
        <div class="menu">
    <div class="item" data-value="1">Topic1</div>
    </div>
    </div>
    </div>
    
    <div class="field">
  <label>Description</label>
  <textarea name="desc"></textarea>
    
    </div>
    
    <input class="ui button green" type="submit" value="ASK" >
    </form>
    
</div>
<script>
$(".dropdown").dropdown();</script>
<%@include file="profooter.jsp"%>