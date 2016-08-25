<%@ page contentType="text/html; charset=utf-8"%>
<jsp:useBean id="data" class="com.jobs4U.db.Data" scope="page" />
<html>
<head>
<title>login</title>
</head>
<body>
<%
	String strEmail=(String)request.getParameter("emp-email");
	String strPassword=(String)request.getParameter("emp-pw");
	if (strPassword.equals("") || strEmail.equals("")) {
		out.print("<script>alert('Please fill out the form completely.');document.location='emp-login-signup.html';</script>");
		return;
	} else {
		if(strPassword.length() > 15 || strPassword.length() < 8){
			out.print("<script>alert('Passowrd Length should be minimun 8 and can not exceed 15.')</script>");
			return;
		}
		int intT=0;
		intT=data.getRowCount("Recruiter WHERE recEmail='"+strEmail+"' AND password='"+strPassword+"'");
		if(intT>0){
		    session.setAttribute("emp-email",strEmail);
		    session.setAttribute("stu-email","");
		    response.sendRedirect("job-manage.jsp");
		}else{
			out.print("<script>alert('Incorrect Email or Password.Please try again.');document.location='emp-login-signup.html';</script>");
		    return;
		}
	}
%>
</body>
</html>
