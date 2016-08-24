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
		int intT = 0;
		Data data = new Data();
		intT = data.delete("DELETE FROM Student WHERE email='"+ strEmail + "'");
		if (intT <= 0) {
			out.print("<script>alert('Not deleted.');document.location='stu-login-signup.html';</script>");
			response.sendRedirect("stu-login-signup.html");
			return;
		} else {
			out.print("<script>alert('Deleted.');document.location='stu-login-signup.html';</script>");
			response.sendRedirect("stu-login-signup.html");
			
		}
	}
%>
