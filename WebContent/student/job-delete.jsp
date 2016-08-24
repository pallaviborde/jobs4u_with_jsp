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
Data data = new Data();
ResultSet rs = con.getRs("SELECT job1,job2,job3,job4,job5 FROM Student where email='" +strEmail +"'");
int i = 1;
while (rs.next()) {
	int jobValue1 = rs.getInt(1);
	int jobValue2 = rs.getInt(2);
	int jobValue3 = rs.getInt(3);
	int jobValue4 = rs.getInt(4);
	int jobValue5 = rs.getInt(5);
	
	out.print(jobID);
	out.print("\n");
	out.print(jobValue2);
	
	if(jobID == jobValue1){
		data.insert("UPDATE Student set job1= NULL where email='"+strEmail+"'");
		out.print("<script>alert('Job deleted successfully!');document.location='view-saved-jobs.jsp';</script>");
	}
	else if(jobID == jobValue2){
		data.insert("UPDATE Student set job2= NULL where email='"+strEmail+"'");
		out.print("<script>alert('Job deleted successfully!');document.location='view-saved-jobs.jsp';</script>");
	}
	else if(jobID == jobValue3){
		data.insert("UPDATE Student set job3= NULL where email='"+strEmail+"'");
		out.print("<script>alert('Job deleted successfully!');document.location='view-saved-jobs.jsp';</script>");
	}
	else if(jobID == jobValue4){
		data.insert("UPDATE Student set job4= NULL where email='"+strEmail+"'");
		out.print("<script>alert('Job deleted successfully!');document.location='view-saved-jobs.jsp';</script>");
	}
	else if(jobID == jobValue5){
		data.insert("UPDATE Student set job5= NULL where email='"+strEmail+"'");
		out.print("<script>alert('Job deleted successfully!');document.location='view-saved-jobs.jsp';</script>");
	}
	else{
		out.print("<script>alert('Cannot delete this job');document.location='view-saved-jobs.jsp';</script>");
	}
	/* if(jobID == jobValue1){	
		
	    data.insert("UPDATE Student set job1= NULL where email='"+strEmail+"'");
		out.print("<script>alert('Job deleted successfully!');document.location='view-saved-jobs.jsp';</script>");

	}
	else if(jobID == jobValue2){
		data.update("INSERT Student set job2 = NULL where email='"+strEmail+"'");
		out.print("<script>alert('Job deleted successfully!');document.location='view-saved-jobs.jsp';</script>");
	} */
	i = i + 1;
} 

/* String jobID=(String)session.getAttribute("jobID");
String strEmail=(String)session.getAttribute("email");
Data data=new Data();
if(jobID!=null){
        int intT=data.insert("INSERT into Student(job1) VALUES(NULL) where email='"+strEmail+"'");
        if(intT>0){
                out.print("<script>alert('The job was deleted successfully.');document.location='job-listing.jsp';</script>");
        }else{
                out.print("<script>alert('Failed to Connect to Database.');document.location='job-listing.jsp';</script>");
        }
}else{
    out.print("<script>alert('Please Log In again.');document.location='stu-login-signup.html';</script>");
} */
%>