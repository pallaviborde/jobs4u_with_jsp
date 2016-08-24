<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="com.linkedus.db.Data"%>
<%
session.getAttribute("admin");
String strSname=(String)request.getParameter("sname");
Data data=new Data();
int intT=data.delete("DELETE FROM student WHERE email='"+strSname+"'");
	if(intT>0){
		out.print("<script>alert('The student account was deleted successfully.');document.location='login.htm';</script>");
	}else{
		out.print("<script>alert('Deleting student account failed.');document.location='login.htm';</script>");
	}
%>
