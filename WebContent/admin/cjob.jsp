<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.linkedus.db.Conn" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../css/left.css" rel="stylesheet" type="text/css">
</head>
<body topmargin="0px">
<table width="98%" height="500"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td height="50" align="center"><div id="font">Job Information Management</div></td>
  </tr>
  <tr>
    <td valign="top"><table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#b3ffb3">
      <tr align="center" bgcolor="#009933">
        <td height="22"><div id="reg">Company Name</div></td>
        <td><div id="reg">Job Title</div></td>
        <td><div id="reg">Employment Type</div></td>
        <td><div id="reg">Education</div></td>
        <td ><div id="reg">Posted Date</div></td>
        <td ><div id="reg">Delete</div></td>
      </tr>
      <tr>
	<td colspan="8" height="8"></td>
      </tr>
<%
session.getAttribute("admin");
Conn con=new Conn();
ResultSet rs=con.getRs("SELECT * FROM job");
while(rs.next()){
        String strSname=rs.getString(1);
%>
      <tr align="center" valign="baseline">
        <td height="22"><div id="reg2"><%=rs.getString(4)%></div></td>
        <td><div id="reg2"><%=rs.getString(3)%></div></td>
        <td><div id="reg2"><%=rs.getString(10)%></div></td>
        <td><div id="reg2"><%=rs.getString(13)%></div></td>
        <td><div id="reg2"><%=rs.getString(14)%></div></td>
        <td><div id="reg2"><a href="dcjob.jsp?jobid=<%=strSname%>">Delete</a></div></td>
      </tr>
<%
}
con.close();
%>
      <tr>
        <td colspan="8">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
