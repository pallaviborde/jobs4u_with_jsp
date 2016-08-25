<%@ page contentType="text/html; charset=utf-8"%>
<jsp:useBean id="data" class="com.jobs4U.db.Data" scope="page" />
<html>
<head>
<title>login</title>
</head>
<body>
	<%
	String jobID=request.getParameter("jobID");
	String industry = request.getParameter("industry");
    session.setAttribute("jobID",jobID);
    session.setAttribute("industry",industry);
    response.sendRedirect("job-detail.jsp");
%>
</body>
</html>