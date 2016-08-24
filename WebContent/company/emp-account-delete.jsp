<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.linkedus.db.Data"%>
<%@ page import="com.linkedus.db.Conn"%>
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
		int intT = 0;
		Data data = new Data();
		intT = data.delete("DELETE FROM Recruiter WHERE recEmail='"+ strEmail + "'");
		if (intT <= 0) {
			out.print("<script>alert('Not deleted.');document.location='stu-login-signup.html';</script>");
			response.sendRedirect("emp-login-signup.html");
			return;
		} else {
			out.print("<script>alert('Deleted.');document.location='stu-login-signup.html';</script>");
			response.sendRedirect("emp-login-signup.html");
			
		}
	}
%>
