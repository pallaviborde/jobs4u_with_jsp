<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="com.jobs4U.db.Data"%>
<%@ page import="com.jobs4U.db.Conn"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.activation.*" %>
<%@ page import="java.util.*" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	Conn conn = new Conn();
	String stdEmail = (String)session.getAttribute("email");
	String jobID = request.getParameter("jobID");
	String recEmail = request.getParameter("recEmail"); 
	int intT = 0;
	
	Data data = new Data();
	ResultSet rs=conn.getRs("SELECT * FROM student WHERE email='"+stdEmail+"'");
	
	intT = data.getRowCount("JobApplications WHERE jobID='" + jobID + "'" +"AND stdEmail='"+stdEmail+"'" +"AND recEmail='"+recEmail+"'");
	if(intT > 0) {
		out.print("<script>alert('Sorry, You have already applied to this job.');document.location='job-listing.jsp';</script>");
		return;
	} else {
			if(rs.first()){
				String firstName = rs.getString(3);
				String lastName = rs.getString(4);
				intT=data.insert("INSERT INTO JobApplications VALUES (" + "'"+jobID + "'"+"," + "'"+ recEmail +"'"+","+"'"+stdEmail+"'"+","+"'"+ firstName +"'"+","+"'"+ lastName +"')");
			}
			
		if (intT <= 0) {
			out.print("<script>alert('Job Application Failed.Please try again later');document.location='job-listing.jsp';</script>");
			return;
		} else {
			out.print("<script>alert('You have applied to the job successfully!');document.location='job-listing.jsp';</script>");
			// mail code
			// Recipient's email ID needs to be mentioned.
			// sets SMTP server properties
			try{
				Properties properties = new Properties();
				properties.put("mail.smtp.host", "smtp.gmail.com");

				properties.put("mail.smtp.port", 587);
				properties.put("mail.smtp.auth", "true");
				properties.put("mail.smtp.starttls.enable", "true");

				// creates a new session with an authenticator
				Authenticator auth = new Authenticator() {
				    public PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication("shaluravilla", "itucompany");
				    }
				};

				Session session_mail = Session.getInstance(properties, auth);

				// creates a new e-mail message
				Message msg = new MimeMessage(session_mail);

				msg.setFrom(new InternetAddress("shaluravilla"));
				InternetAddress[] toAddresses = { new InternetAddress("shaluravilla@gmail.com") }; 
				msg.setRecipients(Message.RecipientType.TO, toAddresses);
				msg.setSubject("reg. your job application");
				msg.setSentDate(new java.util.Date());
				msg.setText("Thanks for expressing the interest in the position.Your application has been successfully received."); // to change

				// sends the e-mail
				Transport.send(msg);
				}
			catch (MessagingException mex) {
				mex.printStackTrace();
				}
	
		}
	}
%>