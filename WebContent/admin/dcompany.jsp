<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="com.linkedus.db.Data"%>
<%
session.getAttribute("admin");
String strCname=(String)request.getParameter("cname");
Data data1=new Data();
int intT1=data1.delete("DELETE FROM recruiter WHERE recEmail='"+strCname+"'");
	if(intT1>0){
		out.print("<script>alert('The recruiter was deleted successfully.');document.location='login.htm';</script>");
	}else{
		out.print("<script>alert('Deleting recruter account failed.');document.location='login.htm';</script>");
	}
Data data2=new Data();
int intT2=data2.delete("DELETE FROM Job WHERE recEmail='"+strCname+"'");
	if(intT2>0){
		out.print("<script>alert('The jobs relevant to the recruiter were deleted successfully.');document.location='login.htm';</script>");
	}else{
		out.print("<script>alert('Deleting relevant jobs failed.');document.location='login.htm';</script>");
	}
%>
