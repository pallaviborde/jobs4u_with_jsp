<%@ page contentType="text/html; charset=utf-8"%>
<jsp:useBean id="data" class="com.linkedus.db.Data" scope="page" />
<html>
<head>
<title>login</title>
</head>
<body>
<%
	String strEmail=(String)request.getParameter("user-email");
	String strPassword=(String)request.getParameter("user-pw");
	if (strPassword.equals("") || strEmail.equals("")) {
		out.print("<script>alert('Please fill out the form completely.');document.location='stu-login-signup.html';</script>");
		return;
	} else {
		if(strPassword.length() > 15 || strPassword.length() < 8){
			out.print("<script>alert('Passowrd Length should be minimun 8 and can not exceed 15.')</script>");
			return;
		}
		int intT=0;
		intT=data.getRowCount("Student WHERE email='"+strEmail+"' AND password='"+strPassword+"'");
		if(intT>0){
		    session.setAttribute("email",strEmail);
		    response.sendRedirect("profile-view.jsp");
		}else{
		        out.print("<script>alert('Incorrect Email or Password.Please try again.');document.location='stu-login-signup.html';</script>");
		        return;
		}
	}
%>
</body>
</html>
