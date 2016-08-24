<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.linkedus.db.Conn"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../css/left.css" rel="stylesheet" type="text/css">
</head>
<body topmargin="0px">
	<table width="98%" height="500" border="0" align="center"
		cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">

		<tr>
			<td height="50" align="center"><div id="font">Student
					Information Management</div></td>
		</tr>

		<tr>
			<td valign="top"><table width="90%" border="0" align="center"
					cellpadding="0" cellspacing="0" bgcolor="#b3ffb3">
					<tr align="center" bgcolor="#009933">
						<td height="22"><div id="reg">Name</div></td>
						<td><div id="reg">Email</div></td>
						<td><div id="reg">Telephone</div></td>
						<td><div id="reg">School Degree</div></td>
						<td><div id="reg">School Major</div></td>
						<td><div id="reg">Delete</div></td>
					</tr>
					<%
						session.getAttribute("admin");
						Conn con = new Conn();
						ResultSet rs = con.getRs("SELECT * FROM student");
						while (rs.next()) {
							String strSname = rs.getString(1);
					%>
					<tr align="center">
						<td height="22" align="center"><div id="reg2"><%=rs.getString(3)%>
								<%=rs.getString(4)%></div></td>
						<td align="center"><div id="reg2"><%=rs.getString(1)%></div></td>
						<td align="center"><div id="reg2"><%=rs.getString(5)%></div></td>
						<td align="left"><div id="reg2"><%=rs.getString(15)%></div></td>
						<td align="left"><div id="reg2"><%=rs.getString(16)%></div></td>
						<td align="center"><div id="reg2">
								<a href="dstudent.jsp?sname=<%=strSname%>">Delete</a>
							</div></td>
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
