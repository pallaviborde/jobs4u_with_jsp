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
String jobIDStr=request.getParameter("jobID");
int jobID = Integer.parseInt(jobIDStr);
//ResultSet rs=con.getRs("SELECT * FROM job where jobID='"+jobID+"'");
//out.print(jobID);
Data data = new Data();
int job1 = 0;
job1 = data.getRowCount("Student where email='"+strEmail+"' and job1 IS NULL");
int job2 = 0;
job2 = data.getRowCount("Student where email='"+strEmail+"' and job2 IS NULL");
int job3 = 0;
job3 = data.getRowCount("Student where email='"+strEmail+"' and job3 IS NULL");
//out.print(job3);
int job4 = 0;
job4 = data.getRowCount("Student where email='"+strEmail+"' and job4 IS NULL");
int job5 = 0;
job5 = data.getRowCount("Student where email='"+strEmail+"' and job5 IS NULL");

ResultSet rsJob = con.getRs("SELECT jobID from job");
ResultSet rs = con.getRs("SELECT job1,job2,job3,job4,job5 FROM Student where email='" +strEmail +"'");


while (rs.next()) {
	int jobValue = rs.getInt(1);
	
	out.print(jobValue);


if(job1 > 0 && jobValue != jobID){
	job1 = data.insert("UPDATE Student set job1= '"+jobID+"' where email='"+strEmail+"'");
	out.print("<script>alert('Job saved successfully!');document.location='job-listing.jsp';</script>");
}else if(job2 > 0 && jobValue != jobID){
	job1 = data.insert("UPDATE Student set job2= '"+jobID+"' where email='"+strEmail+"'");
	out.print("<script>alert('Job saved successfully!');document.location='job-listing.jsp';</script>");
}else if(job3 > 0 && jobValue != jobID){
	job1 = data.insert("UPDATE Student set job3= '"+jobID+"' where email='"+strEmail+"'");
	out.print("<script>alert('Job saved successfully!');document.location='job-listing.jsp';</script>");
}else if(job4 > 0 && jobValue != jobID){
	job1 = data.insert("UPDATE Student set job4= '"+jobID+"' where email='"+strEmail+"'");
	out.print("<script>alert('Job saved successfully!');document.location='job-listing.jsp';</script>");
}else if(job5 > 0 && jobValue != jobID){
	job1 = data.insert("UPDATE Student set job5= '"+jobID+"' where email='"+strEmail+"'");
	out.print("<script>alert('Job saved successfully!');document.location='job-listing.jsp';</script>");
}else if(jobValue == jobID){
	out.print("<script>alert('You have saved this job already');document.location='job-listing.jsp';</script>");
}else{
	out.print("<script>alert('You cannot save more than five jobs');document.location='job-listing.jsp';</script>");

}
}


%>