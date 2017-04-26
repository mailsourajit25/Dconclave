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
		
	}
}
%>

<%@include file="profooter.jsp"%>