<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.jobs4U.db.Data"%>
<%@ page import="java.sql.*"%>
<%
String jobID=(String)session.getAttribute("jobID");
String strEmail=(String)session.getAttribute("emp-email");
Data data=new Data();
if(jobID!=null){
        int intT=data.delete("DELETE FROM job WHERE jobID='"+ jobID +"'");
        if(intT>0){
                out.print("<script>alert('The job was deleted successfully.');document.location='job-manage.jsp';</script>");
        }else{
                out.print("<script>alert('Failed to Connect to Database.');document.location='job-detail.jsp';</script>");
        }
}else{
    out.print("<script>alert('Please Log In again.');document.location='emp-login-signup.html';</script>");
}
%>