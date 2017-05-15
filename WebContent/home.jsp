
<%@include file="nav.jsp" %>

<div class="ui container" ;>
	<div class="ui grid">
		<div class="three wide column" style="background-color:rgba(0,0,0,0.6);margin:5px;">
		<div class="ui list linked inverted">
		
		<a class="item" href="home.jsp"> <strong>Unanswered Questions</strong></a><br>
		<%Conn c=new Conn();
        Connection con=c.Con();
        PreparedStatement pi=con.prepareStatement("Select TAG_NAME From TAGS ORDER BY T_ID");
        ResultSet ri=pi.executeQuery();
        while(ri.next()){
        	String tag=ri.getString(1);%>
        	<a class="item" href="home.jsp?tag=<%=tag %>"><strong><%=tag %></strong></a><br>
        	<% 
        }
         %>
		</div>
	</div>
		<div class="ten wide column" style="background-color:rgba(0,0,0,0.6);margin:5px;">
		<div class="ui large feed" style="color:white;">
		<%
		String sql="Select * from QUESTIONS where NO_OF_A=0";
		
		
		if(request.getParameter("tag")==null){
			sql="Select * from QUESTIONS where NO_OF_A=0";
		}else if(request.getParameter("tag").equals("new")){
			sql="Select * from QUESTIONS where Q_DATE='"+ask_question.getCurrentDate()+"'";
		}else{
			String tagg=request.getParameter("tag");
			sql="Select * from QUESTIONS where TAG='"+tagg+"'";
		}
			
			/*if(request.getParameter("tag").equals("fitness")){
			sql="Select * from QUESTIONS where TAG='Fitness'";
		}
		else if(request.getParameter("tag").equals("sports")){
			sql="Select * from QUESTIONS where TAG='Sports'";
		}
		else if(request.getParameter("tag").equals("programming")){
			sql="Select * from QUESTIONS where TAG='Programming'";
		}
		else if(request.getParameter("tag").equals("science")){
			sql="Select * from QUESTIONS where TAG='Science'";
		}*/
		
		PreparedStatement p=con.prepareStatement(sql);
		ResultSet rs=p.executeQuery();
		while(rs.next()){
			String Q_id=rs.getString("Q_ID");
			String Userid=rs.getString("EMAIL");
			StmtQuery s=new StmtQuery();
			String user=s.getuserdata(Userid, "FNAME");
			String qtitle=rs.getString("Q_TITLE");
			String qdesc=rs.getString("Q_DESC");
			int upvotes=rs.getInt("UPVOTES");
			
			
			int no_of_a=rs.getInt("NO_OF_A");
			String tag=rs.getString("TAG");
		//LOOP
		
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
      
      <%qdesc=qdesc.substring(0,qdesc.length()/3);
      qdesc+="...."; %>
      <%=qdesc %><a href="vq.jsp?q=<%=Q_id%>">See more</a><br><br>
      <p><a class="ui teal tag label"><%=tag %></a></p>
      </div>
      <div class="meta">
        <a class="like">
          <i class="like icon"onclick="this.style.color='red';"></i> <%=upvotes %> Upvotes
        </a>
      </div>
    </div>
  </div>
  
		
		<hr>
		<%} %></div>
		</div>
	
		<div class="three wide column">
		
		
		</div>
	
	
	</div>

</div>




<%@include file="footer.jsp" %>