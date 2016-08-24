<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.linkedus.db.Data"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="student" class="job.Student" scope="request" />
<%
	String strEmail = (String) session.getAttribute("email");
	String firstName = request.getParameter("firstName");
	String lastName = request.getParameter("lastName");
	String telephone = request.getParameter("telephone");
	String address = request.getParameter("address");
	String summary = request.getParameter("summary");
	String expectedJob = request.getParameter("expectedJob");
	String skills = request.getParameter("skills");
	String schoolName = request.getParameter("schoolName");
	String schoolStartMonth = request.getParameter("schoolStartMonth");
	String schoolStartYear = request.getParameter("schoolStartYear");
	String schoolEndMonth = request.getParameter("schoolEndMonth");
	String schoolEndYear = request.getParameter("schoolEndYear");
	String schoolDegree = request.getParameter("schoolDegree");
	String schoolMajor = request.getParameter("schoolMajor");
	String workCompanyName = request.getParameter("workCompanyName");
	String workJobTitle = request.getParameter("workJobTitle");
	String workStartMonth = request.getParameter("workStartMonth");
	String workStartYear = request.getParameter("workStartYear");
	String workEndMonth = request.getParameter("workEndMonth");
	String workEndYear = request.getParameter("workEndYear");
	String workJobResponsibility = request
			.getParameter("workJobResponsibility");
	String projectName = request.getParameter("projectName");
	String projectDescription = request
			.getParameter("projectDescription");
	String fromTime = request.getParameter("preferedInTime");
	String toTime = request.getParameter("preferedOutTime");

	int intT = 0;
	Data data = new Data();
	intT = data.insert("UPDATE student SET firstName='" + firstName
			+ "',lastName='" + lastName + "',telephone='" + telephone
			+ "',address='" + address + "',summary='" + summary
			+ "',expectedJob='" + expectedJob + "',skills='" + skills
			+ "',schoolName='" + schoolName + "',schoolStartMonth='"
			+ schoolStartMonth + "',schoolStartYear='"
			+ schoolStartYear + "',schoolEndMonth='" + schoolEndMonth
			+ "',schoolEndYear='" + schoolEndYear + "',schoolDegree='"
			+ schoolDegree + "',schoolMajor='" + schoolMajor
			+ "',workCompanyName='" + workCompanyName
			+ "',workJobTitle='" + workJobTitle + "',workStartMonth='"
			+ workStartMonth + "',workEndMonth='" + workEndMonth
			+ "',workStartYear='" + workStartYear + "',workEndYear='"
			+ workEndYear + "',workJobResponsibility='"
			+ workJobResponsibility + "',projectName='" + projectName
			+ "',projectDescription='" + projectDescription
			+ "',preferedInTime='" + fromTime 
			+ "',preferedOutTime='" + toTime
			+ "'WHERE email='" + strEmail + "'");

	if (intT <= 0) {
		out.print("<script>alert('Student profile update failed.');document.location='profile-view.jsp';</script>");
		return;
	} else {
		out.print("<script>alert('Student profile update succeeded.');document.location='profile-view.jsp';</script>");
	}
%>
