<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.linkedus.db.Data"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="student" class="job.Student" scope="request" />
<%
	String strEmail=(String)request.getParameter("email");
	String strPassword=(String)request.getParameter("password");	
	if (strPassword.equals("") || strEmail.equals("")) {
		out.print("<script>alert('Please fill out the form completely.');document.location='stu-login-signup.html';</script>");
		return;
	} else {
		if(strPassword.length() > 15 || strPassword.length() < 8){
			out.print("<script>alert('Passowrd Length should be minimun 8 and can not exceed 15.')</script>");
			return;
		}
		if(!(strEmail.matches("[a-zA-Z0-9\\.]+@[a-zA-Z0-9\\-\\_\\.]+\\.[a-zA-Z0-9]{3}"))){
            out.print("<script>alert('Please create your account using correct email format');document.location='stu-login-signup.html';</script>");
            return;
    	}else if (!strEmail.contains("itu.edu")){
    		out.print("<script>alert('Please use ITU email only to create your account.');document.location='stu-login-signup.html';</script>");
            return;
    	}
		int intT = 0;
		Data data = new Data();
		intT = data.getRowCount("Student WHERE email='" + strEmail + "'");
		if (intT > 0) {
			out.print("<script>alert('Sorry, this email already exists. Please try with another one.');document.location='stu-login-signup.html';</script>");
			return;
		} else {
			   intT = data.insert("INSERT INTO Student(email,password) VALUES('"+strEmail+"','"+strPassword+"')");
			/* intT = data.insert("INSERT INTO student VALUES('"
					+ strEmail + "','"
					+ strPassword + "','" 
					+ " " + "','" 
					+ " "+ "','" 
					+ " " + "','" 
					+ " " + "','" 
							+ " " + "','" 
							+ " "+ "','" 
							+ " " + "','" 
							+ " " + "','"
									+ " " + "','" 
									+ " " + "','" 
									+ " " + "','" 
									+ " " + "','" 
											+ " " + "','" 
											+ " "+ "','" 
											+ " " + "','" 
											+ " " + "','"
													+ " " + "','" 
													+ " "+ "','" 
													+ " " + "','" 
													+ " " + "','"
					+ " " + "','"
					+ " " + "','" + "')"); */
			if (intT <= 0) {
				out.print("<script>alert('Student account registration failed.');document.location='stu-login-signup.html';</script>");
				return;
			} else {
				out.print("<script>alert('Your student account has been created successfully!');document.location='stu-login-signup.html';</script>");
			}
		}
	}
%>
