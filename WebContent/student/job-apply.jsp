<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="com.linkedus.db.Data"%>
<%@ page import="com.linkedus.db.Conn"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.activation.*" %>
<%@ page import="java.util.*" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	Conn conn = new Conn();
	String stdEmail = (String)session.getAttribute("email");
	String jobID = request.getParameter("jobID");
	String recEmail = request.getParameter("recEmail"); 
	int intT = 0;
	
	Data data = new Data();
	ResultSet rs=conn.getRs("SELECT * FROM student WHERE email='"+stdEmail+"'");
	
	intT = data.getRowCount("JobApplications WHERE jobID='" + jobID + "'" +"AND stdEmail='"+stdEmail+"'" +"AND recEmail='"+recEmail+"'");
	if(intT > 0) {
		out.print("<script>alert('Sorry, You have already applied to this job.');document.location='job-listing.jsp';</script>");
		return;
	} else {
			if(rs.first()){
				String firstName = rs.getString(3);
				String lastName = rs.getString(4);
				intT=data.insert("INSERT INTO JobApplications VALUES (" + "'"+jobID + "'"+"," + "'"+ recEmail +"'"+","+"'"+stdEmail+"'"+","+"'"+ firstName +"'"+","+"'"+ lastName +"')");
			}
			
		if (intT <= 0) {
			out.print("<script>alert('Job Application Failed.Please try again later');document.location='job-listing.jsp';</script>");
			return;
		} else {
			out.print("<script>alert('Your have applied to the job successfully!');document.location='job-listing.jsp';</script>");
		}
	}
%>