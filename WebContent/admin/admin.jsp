<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<%
String strUser=(String)session.getAttribute("admin");
if(strUser==null){
	out.print("<script>alert('Incorrect Email or Password.Please try again.');document.location='../login-admin.htm';</script>");
	return;
}
%>
<frameset rows="70,*" cols="*" frameborder="NO" border="0" framespacing="0">
  <frame src="top.htm" name="topFrame" frameborder="no" noresize>
  <frame src="login.htm" name="mainFrame" frameborder="no">
</frameset>
<noframes><body>
</body></noframes>
</html>
