<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.linkedus.db.Conn"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head >
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="../dist/css/style.css" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.0/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
 
  <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
    <!-- Loading Bootstrap -->
    <link href="../dist/css/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Loading Flat UI -->
    <link href="../dist/css/flat-ui.css" rel="stylesheet">

    <link rel="shortcut icon" href="../dist/img/favicon.png">

<!-- Custom CSS -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet prefetch">

  <script>
  $( function() {
    $("#datepicker").datepicker();
  } );
  </script>
</head>
<body>
<%
Conn con=new Conn();
String strEmail=(String)session.getAttribute("email");
ResultSet rs=con.getRs("SELECT * FROM student WHERE email='"+strEmail+"'");
        if(rs.next()){    
%>
<nav class="navbar navbar-default navbar-fixed-top drop-shadow" role="navigation">
    <div class="container">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#navbar-collapse">
        	<span class="sr-only">Toggle navigation</span>
        </button>
        <span class="navbar-brand"><strong><a href="http://localhost:8080/linkedus">Jobs4U</a></strong></span>
      </div>
      
      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="navbar-collapse">
        <ul class="nav navbar-nav text-uppercase">
          <li class="dropdown active">
            <a href="profile-view.jsp"
						class="dropdown-toggle" data-toggle="dropdown">
              <i
							class="fa fa-user"></i>&nbsp;&nbsp; Profile <span class="caret"></span>

            </a>
            <ul class="dropdown-menu">
              <li class=" active">
                <a href="profile-view.jsp">
                  View Profile
                </a>
              </li>
              <li>
                <a href="profile-edit.jsp">
                  Edit Profile
                </a>
              </li>
              <li>
                <a href="upload.jsp">
                  Upload Resume
                </a>
              </li>
              <li>
                <a href="career-services.jsp">
                  Career Services
                </a>
              </li>
            </ul>
          </li>
          <li>
            <a href="job-listing.jsp">
              <i class="fa fa-briefcase"></i>&nbsp;&nbsp;Jobs
            </a>
          </li>
          <li>
            <a href="account.jsp">
              <i class="fa fa-gear"></i>&nbsp;&nbsp;Account
            </a>
          </li>
        </ul>        
      </div>
      <!-- /.navbar-collapse -->
    </div>
  </nav>

<!-- Page Content -->
	<section class="content">
		<div class="container">
			    <!--Basics-->
					<div class="panel panel-default text-center" id="basics">
						<div class="panel-body">
							<div class="row">
								<div class="col-sm-12">
									<h2 class="text-uppercase">Career Services</h2>
									
									<hr width="30%">
									
									
									<h5>
									
    Learning modules, skill-building activities, and challenges will help you prepare to conquer the job search process.<br>
    Interest and skills assessments will help you better understand your strengths and preferences to assist with goal planning<br>
    Job search tools will help you find listings that match your objective as well as tools to help you manage and track your applications<br>
    Opportunities posted directly by cooperative businesses for ITU students
									
									</h5>
                    
								</div>
							</div>
              <div class="row">
                <div class="col-md-6 col-sm-12">
                  <h1><i class="fa fa-envelope-o"></i></h1>&nbsp;<a href="mailto:careerservices@itu.edu">careerservices@itu.edu</a>
                </div>
                
              </div>
						</div>
					</div>
					<!--Education-->
					<div class="panel panel-default" id="edu">
						<div class="panel-heading ">
							<div class="row">

								<div class="col-sm-12 col-xs-12">
									<span class="panel-title text-uppercase">Timings&nbsp;&nbsp;&nbsp;&nbsp;</span>
								
									<small><a href="profile-edit.jsp#edu"> <i class="fa fa-pencil"></i>&nbsp;&nbsp;Edit

									</a>
                  </small>
								</div>
							</div>
						</div>
						<div class="panel-body">
							<div class="row">
							<p> Meeting Date:
									<input type="text" id="datepicker"> </p>
								<div class="col-sm-12">
									
									Drop-in hours are :<br>
									Tuesdays from 10 am to 12 pm PST and Thursdays from 3:30 pm to 5:30 pm PST. <br>
									<h5>Simply stop by the Career Services table outside the ITU Library.<br>
									Appointments outside of drop-in hours can be made by contacting careerservices@itu.edu</h5>
									
								</div>
							</div>
						</div>
					</div>
					
					
          <!--Policies-->
					<div class="panel panel-default" id="skills">
						<div class="panel-heading">
							<div class="row">
								<div class="col-sm-12">
									<span class="panel-title text-uppercase">Policies/Terms & Conditions&nbsp;&nbsp;&nbsp;&nbsp;</span>
								</div>
							</div>
						</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-sm-12">
									<p><a href="http://itu.edu/career-services/career-services-policy/"> ITU Career Services Policies</a></p>
								</div>
							</div>
						</div>
					</div>
					<br> 
			<script>window.prettyPrint && prettyPrint();</script>
		</div>
	</section> <!-- /.container -->

<!-- Bootstrap core JavaScript--> 
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="../js/jquery.min.js"></script>
  <script src="../js/vendor/jquery.min.js"></script>  
  <script src="../js/vendor/video.js"></script>
  <script src="../js/flat-ui.min.js"></script>
  <script src="../docs/assets/js/prettify.js"></script>
  <script src="../docs/assets/js/application.js"></script>
  <script>
	videojs.options.flash.swf = "../js/vendors/video-js.swf"
  </script>

<%
        }else{
            out.print("<script>alert('Failed to Connect to Database.');document.location='profile-view.jsp';</script>");
        }
%>

</body>
</html>