<%@include file="nav.jsp" %>

<div class="ui container" ;>
	<div class="ui grid">
		<div class="three wide column" style="background-color:rgba(0,0,0,0.6);margin:5px;">
		<div class="ui list linked inverted">
		
	<a class="item" href="home.jsp"> <strong>Unanswered Questions</strong></a><br>
		<a class="item" href="home.jsp?tag=new"><strong>New Questions</strong></a><br>
		<a class="item" href="home.jsp?tag=programming"><strong>Programming</strong></a><br>
		<a class="item" href="home.jsp?tag=science"><strong>Science</strong></a><br>
		<a class="item" href="home.jsp?tag=fitness"><strong>Fitness</strong></a><br>
		<a class="item" href="home.jsp?tag=sports"><strong>Sports</strong></a><br>
		</div>
	</div>
		<div class="ten wide column" style="background-color:rgba(0,0,0,0.6);margin:5px;">
		<div class="ui large feed">
<% if(request.getParameter("q")==null || request.getParameter("q").equals("")){ %>
	<h3 class="white" style="text-align:center;">Noting to display</h3>
<%}else{ %>


<%
int id=Integer.parseInt((String)request.getParameter("q"));
Conn c=new Conn();
Connection con=c.Con();
PreparedStatement p=con.prepareStatement("Select * from QUESTIONS where Q_ID="+id);
ResultSet rs=p.executeQuery();

while(rs.next()){
	String Userid=rs.getString("EMAIL");
	StmtQuery s=new StmtQuery();
	String user=s.getuserdata(Userid, "FNAME");
	String qtitle=rs.getString("Q_TITLE");
	String qdesc=rs.getString("Q_DESC");
	int upvotes=rs.getInt("UPVOTES");
	java.util.Date date = new java.util.Date();
	
	int no_of_a=rs.getInt("NO_OF_A");
	String tag=rs.getString("TAG");

%>


<div class="event">
    <div class="label">
      <img src="images/default.png">
    </div>
    <div class="content">
      <div class="summary">
        <a class="user">
          <%=user %>&nbsp;
        </a> <%=qtitle %>
        <div class="date">
          1 Hour Ago
        </div>
      </div>
      <div class="extra text">
     
      <%=qdesc %><br><br>
      <p><a class="ui teal tag label"><%=tag %></a></p>
      </div>
      <div class="meta">
        <a class="like">
          <i class="like icon"onclick="this.style.color='red';"></i> <%=upvotes %> Upvotes
        </a>
      </div>
    </div>
  </div>
  
		
<div class="ui dividing header inverted">Answers</div>

<% }
PreparedStatement P_A=con.prepareStatement("Select * from ANSWERS where Q_ID="+id);
ResultSet rs_A=P_A.executeQuery();
while(rs_A.next()){
	String email=rs_A.getString("EMAIL");
	StmtQuery s_a=new StmtQuery();
	String user_a=s_a.getuserdata(email, "FNAME");
	String ans=rs_A.getString("ANSWER");
	int upvotes_A=rs_A.getInt("UPVOTES");
	 %>
	 
	 <div class="event">
    <div class="label">
      <img src="images/default.png">
    </div>
    <div class="content">
      <div class="summary">
        <a class="user">
          <%=user_a %>&nbsp;
        </a> <%=ans %>
        <div class="date">
          1 Hour Ago
        </div>
      </div>
      
      <div class="meta">
        <a class="like">
          <i class="like icon"onclick="this.style.color='red';"></i> <%=upvotes_A %> Upvotes
        </a>
      </div>
    </div>
  </div>
  



<% 
}//end while


} %>
</div>
<!-- -end of feed -->




<!-- --Answers -->


</div>
<!-- -end of row -->


</div>
<!-- -end grid -->


</div>
<!-- -end of container -->









<%@include file="footer.jsp" %>