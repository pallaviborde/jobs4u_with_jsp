<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.linkedus.db.Data"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="recruiter" class="job.Recruiter" scope="request" />
<%
	String strEmail=(String)request.getParameter("email");
	String strPassword=(String)request.getParameter("password");	
	if (strPassword.equals("") || strEmail.equals("")) {
		out.print("<script>alert('Please fill out the form completely.');document.location='emp-login-signup.html';</script>");
		return;
	} else {
		if(!(strEmail.matches("[a-zA-Z0-9\\.]+@[a-zA-Z0-9\\-\\_\\.]+\\.[a-zA-Z0-9]{3}"))){
            out.print("<script>alert('Please create your account using correct email format');document.location='emp-login-signup.html';</script>");
            return;
    	}
		if(strPassword.length() > 15 || strPassword.length() < 8){
			out.print("<script>alert('Passowrd Length should be minimun 8 and can not exceed 15.')</script>");
			return;
		}
		int intT = 0;
		Data data = new Data();
		intT = data.getRowCount("Recruiter WHERE recEmail='" + strEmail + "'");
		if (intT > 0) {
			out.print("<script>alert('Sorry, this email already exists. Please try with another one.');document.location='emp-login-signup.html';</script>");
			return;
		} else {
			intT = data.insert("INSERT INTO recruiter VALUES('"
					+ strEmail + "','"
					+ strPassword + "')");
			if (intT <= 0) {
				out.print("<script>alert('Recruiter account registration failed.');document.location='emp-login-signup.html';</script>");
				return;
			} else {
				out.print("<script>alert('Your recruiter account has been created successfully!');document.location='emp-login-signup.html';</script>");
			}
		}
	}
%>
