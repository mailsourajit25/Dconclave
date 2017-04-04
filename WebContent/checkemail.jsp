<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="onlineForum.*" %>
<%
String e=request.getParameter("email");
if(IsValidEmail.validate(e)){
StmtQuery s=new StmtQuery();
String sql="select * from USERS where email='"+e+"'";
if(s.isExist(sql)){
	out.print("Exists");
	
}else{
	out.print("valid");
}}else{
	out.println("Invalid");
}
%>