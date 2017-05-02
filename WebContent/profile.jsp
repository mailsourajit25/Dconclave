<%@include file="pronav.jsp" %>

<div class="ui grid container fulid" style="margin-top:20px;">
<div class="row">
<div class="column one wide"></div>
<div class="column seven wide">
<div class="ui card">
  <div class="image">
    <img src="images/default.png" height="100" width="100" >
  </div>
  <div class="content">
    <a class="header"><jsp:getProperty property="fname" name="user" /><jsp:getProperty property="lname" name="user" /></a>
    <b>Country : </b><jsp:getProperty property="country" name="user" /><br>   
  </div>
</div>
</div>
<div class="column six wide">

<b>Number of Answers :</b> <jsp:getProperty property="NOA" name="user" /><br>
<b>Number of Questions Asked :</b> <jsp:getProperty property="NOQ" name="user" /><br>
<b>User Score : </b><jsp:getProperty property="score" name="user" />
<br><br><button class="ui primary button" onclick="location.href='askQ.jsp'">
  Ask a Question
</button>
<div class="ui yellow message ">
<h4>Scoring Policies :</h4>
<ul>
<li> Plus ten for posting question </li>
<li> Plus 50 for answering question</li>
</ul>
</div>

</div>
<div class="column two wide">

</div>
</div>
<div class="row">
<div class="column sixteen wide">
<h4>Questions Asked :</h4>
<div class="ui divider"></div>
<%
Conn c=new Conn();
Connection con=c.Con();
PreparedStatement ps=con.prepareStatement("SELECT Q_ID,Q_TITLE FROM QUESTIONS WHERE EMAIL=? AND ROWNUM<=5 ORDER BY Q_ID DESC");
ps.setString(1,user.getEmail());
ResultSet rs=ps.executeQuery();
if(!rs.isBeforeFirst()){
	%>
	<h4 style="color:orange;">You have not Asked any Question</h4>
	<%
}else{
	%>
	<div class="ui vertical steps" style="width:100%">
	
	<% 
while(rs.next()){
	int qid=rs.getInt("Q_ID");
	String qtitle=rs.getString("Q_TITLE");
	%>
	 <a class="active step" href="viewQuestion.jsp?q=<%=qid %>">
    <i class="external icon"></i>
    <div class="content">
      <div class="title"><%=qtitle %></div>
     </div>
	</a>
	<%
}%><button class="ui primary button" onclick="location.href='displayques.jsp'" >
  	See all
	</button>
</div><% 
}
%>
  </div>
</div>
<div class="row">
<div class="column sixteen wide">
<h4>Questions Answered :</h4>
<div class="ui divider"></div>

<%
ps=con.prepareStatement("SELECT Q.Q_ID,Q.Q_TITLE FROM QUESTIONS Q INNER JOIN ANSWERS A ON Q.Q_ID=A.Q_ID AND A.EMAIL=? WHERE ROWNUM<=5 ORDER BY Q_ID DESC");
ps.setString(1,user.getEmail());
rs=ps.executeQuery();
if(!rs.isBeforeFirst()){
	%>
	<h4 style="color:orange">You have not Answered any Question</h4>
	<%
}else{
	%>
	<div class="ui vertical steps" style="width:100%">
	
	<% 
while(rs.next()){
	int qid=rs.getInt("Q_ID");
	String qtitle=rs.getString("Q_TITLE");
	%>
	 <a class="active step" href="viewQuestion.jsp?q=<%=qid %>">
    <i class="external icon"></i>
    <div class="content">
      <div class="title"><%=qtitle %></div>
     </div>
	</a>
	<%
}%><button class="ui primary button" onclick="location.href='displayans.jsp'">
  	See all
	</button>
</div><% 
}
%>
  </div>
</div>
</div>
<br><br>

<%@include file="profooter.jsp" %>