<%@include file="pronav.jsp" %>
<div class="ui container">
<div class="row">
<div class="column sixteen wide">
<h4>Search Results :</h4>
<div class="ui divider"></div>
<%
if(request.getParameter("query")==null || request.getParameter("query").equals("")){

%>

<h3 style="margin-bottom:200px; color:orange;">Nothing to show</h3>




<% }else{
	String query=request.getParameter("query");
	String[] exploded=query.split("\\s*(=>|,|\\s)\\s*");
	String q="";
	for(int i=0;i<exploded.length;i++){
		q+="Q_TITLE like '%"+exploded[i]+"%' or Q_DESC like '%"+exploded[i]+"%' and ";
	}
	q=q.substring(0,q.length()-5);
	
	String sql="select * from QUESTIONS where "+q;
	out.println(sql);
	Conn c=new Conn();
	Connection con=c.Con();
	PreparedStatement ps=con.prepareStatement(sql);
	ResultSet rs=ps.executeQuery();
	if(!rs.isBeforeFirst()){ %>
		<h4 style="color:orange;">No result found</h4>
	<% }else{
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
	</div><% }
	
	
	
	
	
	
	
	
	
	
	
} %>
</div>
</div>

</div>

<%@include file="profooter.jsp" %>