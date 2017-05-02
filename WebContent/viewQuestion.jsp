<%@include file="pronav.jsp"%>
<script src="js/upvotes.js"></script>
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
		int qupvotes=rs.getInt("UPVOTES");
		java.util.Date date = new java.util.Date();
		
		int no_of_a=rs.getInt("NO_OF_A");
		String tag=rs.getString("TAG");
		
		
		%>
		<div class="confluid">
		<div class="box">
		
		<div class="ui grid ">
		<div class="column two wide">
		</div>
		<div class="column ten wide" >
		<div class="ui message large">
			<h2><%=qtitle%></h2>
			<h5><%=qdesc%></h5>
		</div>
			<p><a class="ui teal tag label"><%=tag %></a></p>
			<p><span style="color:blue">Posted On : </span><%=rs.getDate("Q_DATE")%> </p>
		</div>
		<div class="column two wide" style="text-align:center">
		<i class="chevron up icon"></i>
			<span class="qupvote<%=id %>"><%=qupvotes %></span><br><br><button id="qupvote<%=id %>" onclick=qvote(<%=id %>,"u") class="ui primary button">Upvote</button>
		</div>
		<div class="column two wide" >
		</div>
		</div>
		</div>
		<script>
		qvote(<%=id %>,"l");
		</script>
		

<h2 style="text-align:center">Answers </h2>
<%
PreparedStatement ans=con.prepareStatement("Select * from ANSWERS where Q_ID=?");
ans.setInt(1, id);
int userfound=0;
rs=ans.executeQuery();
if(rs==null){
	%>
	<h3>No Answers</h3>
	<hr>
	<%
}else{
	//extracting out names for each email
	PreparedStatement names=con.prepareStatement("Select Fname,Lname,Score From users  where email in (Select Email from ANSWERS where Q_ID=?)");
	names.setInt(1, id);
	ResultSet namear=names.executeQuery();
	while(rs.next() && namear.next()){
		String answer=rs.getString("ANSWER");
		int upvotes=rs.getInt("UPVOTES");
		int aid=rs.getInt("A_ID");
		String aname=namear.getString("FNAME")+" "+namear.getString("LNAME");
		int ascore=namear.getInt("SCORE");
		if(rs.getString("Email").equals(user.getEmail())){
			aname="Me";
			ascore=user.getScore();
			userfound=1;
		}
		%>
		<div class="ansbox">
		<br>
		
			<div class="ui grid">
			<div class="row">
			<div class="column two wide">
			</div>
			<div class="column ten wide">
			<div class="ui large blue message ">
			<%=answer%>
			</div>
			
			<em><b>Answered on </b><%=rs.getDate("A_DATE")%><br>
			<b>By </b><b><%=aname %><br>Score : <%=ascore %></b></em>
			</div>
			<div class="column two wide" style="text-align:center">
			<i class="chevron up icon"></i>
			<span class="aupvote<%=aid %>"><%=upvotes %></span><br><br><button id="aupvote<%=aid %>" onclick=avote(<%=aid %>,"u") class="ui primary button">Upvote</button>
			</div>
			<div class="column two wide">
			</div>
			</div>
			
			</div>
			<br>
		</div>
		<div class="ui divider"></div>
		<script>
		avote(<%=aid %>,"l");
		</script>
		<% 
	}	
}
if(userfound==0){
%>
<div class="ansbox">
<form class="ui form" method="POST"  action="anssubmit">

 <div class="field" >
  <label><h3>Answer the Question :</h3></label>
  <textarea name="ans" ></textarea>
  </div>
  <input type="hidden" id="qid" name="qid" value="<%=id %>">
   <input class="ui button green" type="submit" value="ANSWER" >
</form>
</div>
<%
}
	}
} %></div>
