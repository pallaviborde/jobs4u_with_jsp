<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import = "java.util.UUID" %>


<!-- from here -->
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>


<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.linkedus.db.Data"%>
<%@ page import="com.linkedus.db.Conn"%>
<%@ page import="java.sql.*"%>

<!-- to here -->
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="data" class="com.linkedus.db.Data" scope="page"/>
<html>
<head>
<title>verify</title>
</head>
<body>

<%
    Conn con=new Conn();
    String strEmail=(String)request.getParameter("email");
    //ResultSet rs=con.getRs("SELECT * FROM Student WHERE email='"+strEmail+"'");
    //out.print(strEmail);
    if(!(strEmail.matches("[a-zA-Z0-9\\.]+@[a-zA-Z0-9\\-\\_\\.]+\\.[a-zA-Z0-9]{3}"))){
            out.print("<script>alert('Please provide correct email format');document.location='stu-email-verify.html';</script>");
            return;
    	}else if (!strEmail.contains("itu.edu")){
    		out.print("<script>alert('Please use ITU email only to create your account.');document.location='stu-email-verify.html';</script>");
            return;
    	}
	if (strEmail.equals("")) {
		out.println("<script>alert('Please fill out the form completely.');document.location='stu-email-verify.html';</script>");
		return;
	} else {
		int intT=0;
		intT=data.getRowCount("Student WHERE email='"+strEmail+"' ");
		String firstName = "";
		String lastName = "";
		
		
		
		if(intT>0){
			
			String key = UUID.randomUUID().toString();
			String cutKey = key.substring(0, 8);
			
			
			//Data data = new Data();
			int intUpdate = 0;
			intUpdate = data.insert("UPDATE Student SET password='"
					+ cutKey +"'WHERE email='"
					+ strEmail + "'");
			if (intUpdate <= 0) {
				out.print("<script>alert('Student account update failed.');document.location='stu-email-verify.jsp';</script>");
				return;
			} /*else {
				out.print("<script>alert('Student account update succeeded.');document.location='stu-email-verify.jsp';</script>");
			}*/
			
			//from here -->
            String result;
   // Recipient's email ID needs to be mentioned.
   String to = strEmail;

   // Sender's email ID needs to be mentioned
   String from = "job4u247@gmail.com";

   // Assuming you are sending email from localhost
   String host = "localhost";

   // Get system properties object
   Properties properties = System.getProperties();

   // Setup mail server
   properties.setProperty("mail.smtp.host", host);

   // Get the default Session object.
   Session mailSession = Session.getDefaultInstance(properties);

   try{
      // Create a default MimeMessage object.
      MimeMessage message = new MimeMessage(mailSession);
      // Set From: header field of the header.
      message.setFrom(new InternetAddress(from));
      // Set To: header field of the header.
      message.addRecipient(Message.RecipientType.TO,
                               new InternetAddress(to));
      // Set Subject: header field
      message.setSubject("Your temporary password");
      // Now set the actual message
      String msgStr = "Dear Student," + "\n\n" + "Following is your temporary password. Please make sure you change password once logged in." + "\n" + "Your password: " + cutKey +"\n\n" + "Click following link to log in to jobs4u:" + "\n" + "http://localhost:8080/linkedus/student/stu-login-signup.html";
      message.setText(msgStr);
      // Send message
      Transport.send(message);
      result = "Sent message successfully....";
   }catch (MessagingException mex) {
      mex.printStackTrace();
      result = "Error: unable to send message....";
   }
   
   //update database with new temp password
   
   
						//to here
			
			//out.print("Email sent successfully");
   out.print(result);
   //out.print("<script>alert(result);document.location='stu-email-verify.jsp';</script>");
		}else{
		        out.print("<script>alert('Incorrect Email or Password.Please try again.');document.location='stu-login-signup.html';</script>");
		        return;
		}
	} 
	
	
%>

</body>
</html>
