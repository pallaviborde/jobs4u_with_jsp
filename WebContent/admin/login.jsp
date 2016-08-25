<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="com.jobs4U.db.Data" %>
<html>
<head>
<title>
login
</title>
</head>
<body>
<%
String strName=(String)request.getParameter("name");
String strPassword=(String)request.getParameter("password");
Data data=new Data();
int intT=0;
if(strName!=null||strPassword!=null){
    intT=data.getRowCount("admin WHERE adminName='"+strName+"' AND password='"+strPassword+"'");
    if(intT>0){
	session.setAttribute("admin",strName);
	response.sendRedirect("admin.jsp");
    }else{
	out.print("<script>alert('Incorrect Email or Password.Please try again.');document.location='index.htm';</script>");
	return;
    }
}else{
    out.print("<script>alert('Incorrect Email or Password.Please try again.');document.location='index.htm';</script>");
    return;
}
%>
</body>
</html>
