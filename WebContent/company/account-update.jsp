<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.jobs4U.db.Data"%>
<%@ page import="com.jobs4U.db.Conn"%>
<%@ page import="java.sql.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="recruiter" class="job.Recruiter" scope="request" />
<%
	Conn con=new Conn();
	String strEmail=(String)session.getAttribute("emp-email");
	String oldPassword=(String)request.getParameter("oldPassword");
	String newPassword=(String)request.getParameter("password");
	
	ResultSet rs=con.getRs("SELECT * FROM Recruiter WHERE recEmail='"+strEmail+"'");
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
			intT = data.insert("UPDATE Recruiter SET password='"
					+ newPassword +"'WHERE recEmail='"
					+ strEmail + "'");
			if (intT <= 0) {
				out.print("<script>alert('Recruiter account update failed.');document.location='account.jsp';</script>");
				return;
			} else {
				out.print("<script>alert('Recruiter account update succeeded.');document.location='account.jsp';</script>");
			}
		}
	}
%>
