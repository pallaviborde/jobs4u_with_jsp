<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.jobs4U.db.Conn" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../css/left.css" rel="stylesheet" type="text/css">
</head>
<body topmargin="0px">
<table width="98%" height="500"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td height="50" align="center"><div id="font">Recruiter Information Management</div></td>
  </tr>
  <tr>
    <td valign="top"><table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#b3ffb3">
      <tr align="center" bgcolor="#009933">
	<td height="22"><div id="reg">Email</div></td>
	<td ><div id="reg">Delete</div></td>
      </tr>
<%
session.getAttribute("admin");
Conn con=new Conn();
ResultSet rs=con.getRs("SELECT * FROM recruiter");
while(rs.next()){
	String strCname=rs.getString(1);
%>
      <tr align="center">
	<td height="22" align="center"><div id="reg2"><%=strCname%></div></td>
	<td align="center"><div id="reg2"><a href="dcompany.jsp?cname=<%=strCname%>">Delete</a></div></td>
      </tr>
<%
}
con.close();
%>
      <tr>
	<td colspan="10">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
