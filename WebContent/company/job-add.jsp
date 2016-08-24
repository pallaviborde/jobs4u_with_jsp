<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.linkedus.db.Data"%>
<%@ page import="java.text.DateFormat"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>

<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="job" class="job.Job" scope="request" />
<jsp:setProperty name="job" property="*" />
<jsp:useBean id="recruiter" class="job.Recruiter" scope="request" />
<jsp:setProperty name="recruiter" property="*" />
<%
	String strEmail = (String) session.getAttribute("emp-email");
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
	DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	Date date = new Date();
	
/**
	int intT = 0;
	Data data = new Data();
	intT = data.insert("update job SET jobTitle='" + jobTitle
			+ "',companyName='" + companyName + "',companyWebsite='" + companyWebsite
			+ "',location='" + location + "',jobDescription='" + jobDescription
			+ "',desiredSkills='" + desiredSkills + "',industry='" + industry
			+ "',employmentType='" + employmentType + "',employmentLevel='"
			+ employmentLevel + "',jobFunction='"
			+ jobFunction + "',education='" + education
			+ "',recEmail='" + strEmail + "'");
**/

int intT = 0;
Data data = new Data();
intT = data.insert("insert into job(recEmail,jobTitle,companyName,companyWebsite,location,jobDescription,desiredSkills,industry,employmentType,experienceLevel,jobFunction,education,postTime,jobLink) values('"
		+ strEmail + "','" 
		+ jobTitle + "','" 
		+ companyName + "','" 
		+ companyWebsite + "','" 
		+ location + "','" 
				+ jobDescription + "','" 
				+ desiredSkills+ "','" 
				+ industry + "','" 
				+ employmentType + "','"
						+ experienceLevel + "','" 
						+ jobFunction + "','" 
						+ education + "','"
						+ dateFormat.format(date) +"','"
						+jobLink +"')");
	if (intT <= 0) {
		out.print("<script>alert('Failed to Connect to Database.');document.location='job-add.html';</script>");
		return;
	} else {
		out.print("<script>alert('The job was added successfully.');document.location='job-manage.jsp';</script>");
	}
%>
