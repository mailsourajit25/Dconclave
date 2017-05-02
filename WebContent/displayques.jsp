<%@include file="pronav.jsp"%>
<div class="ui grid container fluid" style="margin-top:20px">
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
}%>
</div><% 
}
%>
</div>
</div>
</div>
</body>
</html>