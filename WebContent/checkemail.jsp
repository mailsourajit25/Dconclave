<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="onlineForum.*" %>
<%
String e=request.getParameter("email");
if(IsValidEmail.validate(e)){
	String sql="select * from USERSd where email='"+e+"'";
	StmtQ s=new StmtQ(sql);

if(s.isExist()){
	out.print("Exists");
	
}else{
	out.print("valid");
}}else{
	out.println("Invalid");
}
%>