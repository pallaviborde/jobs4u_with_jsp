<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.jobs4U.db.Conn"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>My Profile | Jobs4U</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Loading Bootstrap -->
    <link href="../dist/css/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Loading Flat UI -->
    <link href="../dist/css/flat-ui.css" rel="stylesheet">

    <link rel="shortcut icon" href="../dist/img/favicon.png">

<!-- Custom CSS -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet prefetch">
<link href="../dist/css/style.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  

<body>
<%
Conn con=new Conn();
String strEmail=(String)session.getAttribute("email");
ResultSet rs=con.getRs("SELECT * FROM student WHERE email='"+strEmail+"'");
        if(rs.next()){    
%>
<!-- Navigation -->
  <nav class="navbar navbar-default navbar-fixed-top drop-shadow" role="navigation">
    <div class="container">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#navbar-collapse">
        	<span class="sr-only">Toggle navigation</span>
        </button>
        <span class="navbar-brand"><strong><a href="http://localhost:8080/Jobs4U/student/profile-view.jsp">Jobs4U</a></strong></span>
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
            </ul>
          </li>
          <!--  from here -->
          <li class="dropdown active">
            <a href="profile-view.jsp"
						class="dropdown-toggle" data-toggle="dropdown">
              <i
							class="fa fa-user"></i>&nbsp;&nbsp; Job <span class="caret"></span>

            </a>
            <ul class="dropdown-menu">
              <li class=" active">
                <a href="job-listing.jsp">
                  Jobs
                </a>
              </li>
              <li>
                <a href="career-services.jsp">
                  Career Services
                </a>
              </li>
	      <li>
                <a href="view-saved-jobs.jsp">
                  Saved Jobs
                </a>
              </li>
            </ul>
          </li>
          <!-- <li>
            <a href="job-listing.jsp">
              <i class="fa fa-briefcase"></i>&nbsp;&nbsp;Jobs
            </a>
          </li> -->
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
									<h1 class="text-uppercase"><%=rs.getString(3)%> <%=rs.getString(4)%></h1>
									<h5 class="text-muted"><%=rs.getString(6)%></h5>
									<a href="profile-edit.jsp#basics"> <i class="fa fa-pencil"></i>&nbsp;&nbsp;Edit
									</a>
									<hr width="30%">
									<h4><%=rs.getString(8)%></h4>
									<p><%=rs.getString(7)%></p>
                    
								</div>
							</div>
              <div class="row">
                <div class="col-md-6 col-sm-12">
                  <h1><i class="fa fa-envelope-o"></i></h1>&nbsp;<a href="mailto:"><%=rs.getString(1)%></a>
                </div>
                <div class="col-md-6 col-sm-12">
                  <h1><i class="fa fa-mobile-phone"></i></h1>&nbsp;<%=rs.getString(5)%>
                </div>
                
              </div>
              <div class="row">
								<div class="col-sm-12">
									<p>Preferred Time to Contact: <%=rs.getString(32)%> - <%=rs.getString(33)%></p>
									
								</div>
								</div>
						</div>
					</div>
					<!--Education-->
					<div class="panel panel-default" id="edu">
						<div class="panel-heading ">
							<div class="row">

								<div class="col-sm-12 col-xs-12">
									<span class="panel-title text-uppercase">Education&nbsp;&nbsp;&nbsp;&nbsp;</span>
								
									<small><a href="profile-edit.jsp#edu"> <i class="fa fa-pencil"></i>&nbsp;&nbsp;Edit

									</a>
                  </small>
								</div>
							</div>
						</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-md-3">
									<h3 class="text-uppercase text-muted"><%=rs.getString("schoolStartMonth")%> <%=rs.getString("schoolStartYear")%> — <%=rs.getString("schoolEndMonth")%> <%=rs.getString("schoolEndYear")%>
									</h3>
								</div>
								<div class="col-md-9">
									<h2><%=rs.getString("schoolName")%></h2>
									<h5 class="text-uppercase"><%=rs.getString("schoolDegree")%></h5>
									<p><%=rs.getString("schoolMajor")%></p>
								</div>
							</div>
						</div>
					</div>
					<!--Employment-->
					<div class="panel panel-default" id="work">
						<div class="panel-heading">
							<div class="row">

								<div class="col-sm-12">
									<span class="panel-title text-uppercase">Employment&nbsp;&nbsp;&nbsp;&nbsp;</span>
								
									<small><a href="profile-edit.jsp#work"> <i class="fa fa-pencil"></i>&nbsp;&nbsp;Edit

									</a>
                  </small>
								</div>
							</div>
						</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-md-3">
									<h3 class="text-uppercase text-muted"><%=rs.getString(19)%> <%=rs.getString(20)%> — <%=rs.getString(21)%> <%=rs.getString(22)%>
									</h3>
								</div>
								<div class="col-md-9">
									<h2><%=rs.getString(17)%></h2>
									<h5 class="text-uppercase"><%=rs.getString(18)%></h5>
									<p><%=rs.getString(23)%></p>
								</div>
							</div>
						</div>
					</div>
					<!--Project-->
					<div class="panel panel-default" id="project">
						<div class="panel-heading">
							<div class="row">

								<div class="col-sm-12">
									<span class="panel-title text-uppercase">Project&nbsp;&nbsp;&nbsp;&nbsp;</span>
								
									<small><a href="profile-edit.jsp#project"> <i class="fa fa-pencil"></i>&nbsp;&nbsp;Edit
									</a></small>
								</div>
							</div>
						</div>
						<div class="panel-body">
							<div class="row">

								<div class="col-sm-12">
									<h2><%=rs.getString(24)%></h2>
									<p><%=rs.getString(25)%></p>
								</div>
							</div>
						</div>
					</div>
          <!--Skills-->
					<div class="panel panel-default" id="skills">
						<div class="panel-heading">
							<div class="row">

								<div class="col-sm-12">
									<span class="panel-title text-uppercase">Skills&nbsp;&nbsp;&nbsp;&nbsp;</span>
								<small>
									<a href="profile-edit.jsp#skills"> <i class="fa fa-pencil"></i>&nbsp;&nbsp;Edit
									</a>
                  </small>
								</div>
							</div>
						</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-sm-12">
									<p><%=rs.getString(9)%></p>
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
            return;
        }
%>
</body>
</html>