<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.linkedus.db.Data"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="job" class="job.Job" scope="request" />
<jsp:setProperty name="job" property="*" />
<%
String strEmail = (String) session.getAttribute("emp-email");
//String jobID=(String)session.getAttribute("jobID");
String jobID = request.getParameter("jobID");
String jobTitle = request.getParameter("jobTitle");
String companyName = request.getParameter("companyName");
String companyWebsite = request.getParameter("companyWebsite");
String location = request.getParameter("location");
String jobDescription = request.getParameter("jobDescription");
String desiredSkills = request.getParameter("desiredSkills");
String industry = request.getParameter("industry");
String employmentType = request.getParameter("employmentType");
String experienceLevel = request.getParameter("experienceLevel");
String jobFunction = request.getParameter("jobFunction");
String education = request.getParameter("education");
String jobLink = request.getParameter("jobLink");

	int intT = 0;
	Data data = new Data();
	intT = data.insert("UPDATE job SET jobTitle='" + jobTitle
			+ "',companyName='" + companyName + "',companyWebsite='" + companyWebsite
			+ "',location='" + location + "',jobDescription='" + jobDescription
			+ "',desiredSkills='" + desiredSkills + "',industry='" + industry
			+ "',employmentType='" + employmentType + "',experienceLevel='"
			+ experienceLevel + "',jobFunction='"
			+ jobFunction + "',education='" + education
			+ "',jobLink='" + jobLink
			+ "'WHERE jobID='" + jobID + "'");

	if (intT <= 0) {
		out.print("<script>alert('Failed to connect to the database.');document.location='job-detail.jsp';</script>");
		return;
	} else {
		out.print("<script>alert('The job was updated successfully.');document.location='job-detail.jsp';</script>");
	}
%>
