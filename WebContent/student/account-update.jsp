<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.linkedus.db.Data"%>
<%@ page import="com.linkedus.db.Conn"%>
<%@ page import="java.sql.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="student" class="job.Student" scope="request" />

<%
	Conn con=new Conn();
	String strEmail=(String)session.getAttribute("email");
    String oldPassword=(String)request.getParameter("oldPassword");
	String newPassword=(String)request.getParameter("password");
	
	ResultSet rs=con.getRs("SELECT * FROM Student WHERE email='"+strEmail+"'");
	while (rs.next()){
		String validPassword = rs.getString(2);		
		if (oldPassword.equals("") || newPassword.equals("")) {
			out.print("<script>alert('Please fill out the form completely.');document.location='account.jsp';</script>");
			return;
		} else if (!oldPassword.equals(validPassword)) {
			out.print("<script>alert('Wrong password. Please try again!');document.location='account.jsp';</script>");
			return;
		} else {
			int intT = 0;
			Data data = new Data();
			intT = data.insert("UPDATE Student SET password='"
					+ newPassword +"'WHERE email='"
					+ strEmail + "'");
			if (intT <= 0) {
				out.print("<script>alert('Student account update failed.');document.location='account.jsp';</script>");
				return;
			} else {
				out.print("<script>alert('Student account update succeeded.');document.location='account.jsp';</script>");
			}
		}
	}
%>
