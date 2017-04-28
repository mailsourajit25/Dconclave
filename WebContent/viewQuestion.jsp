<%@include file="pronav.jsp"%>
<%
if(request.getParameter("q")!=null){
	int id=Integer.parseInt((String)request.getParameter("q"));
	Conn c=new Conn();
	Connection con=c.Con();
	PreparedStatement p=con.prepareStatement("Select * from QUESTIONS where Q_ID="+id);
	ResultSet rs=p.executeQuery();
	while(rs.next()){
		String qtitle=rs.getString("Q_TITLE");
		String qdesc=rs.getString("Q_DESC");
		int upvotes=rs.getInt("UPVOTES");
		java.util.Date date = new java.util.Date();
		
		int no_of_a=rs.getInt("NO_OF_A");
		String tag=rs.getString("TAG");
		
		
		%>
		<div class="box">
		
		<div class="ui grid">
		<div class="two column wide">
		</div>
		<div class="column ten wide">
			<h2><%=qtitle%></h2>
			<h5><%=qdesc%></h5>
			<p><a class="ui teal tag label"><%=tag %></a></p>
			<p><span style="color:blue">Posted On : </span><%=rs.getDate("Q_DATE")%> </p>
		</div>
		<div class=" two column wide" style="text-align:center">
		<i class="chevron up icon"></i>
			<span class="upvotes"><%=upvotes %></span><br><br><button class="ui primary button">Upvote</button>
		</div>
		<div class="two column wide" >
		</div>
		</div>
		
		
		
		</div>
		
		<% 
	}
}

%>


<%@include file="profooter.jsp"%>