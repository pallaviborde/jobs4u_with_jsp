<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.linkedus.db.Conn"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>My Account Setting | Jobs4U</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="../js/default.js"></script>
	
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
ResultSet rs=con.getRs("SELECT * FROM Student WHERE email='"+strEmail+"'");
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
        <span class="navbar-brand" ><strong><a href="http://localhost:8080/linkedus">Jobs4U</a></strong></span>        
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
                <a href="view-saved-jobs.jsp">
                  Saved Jobs
                </a>
              </li>
              
            </ul>
          </li>
          
          <!-- to here -->
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
    
			<div class="row">
      
      <div class="col-md-10 col-sm-8">
      
					<div class="panel text-center">
						<div class="panel-body">
							<form class="form-horizontal" role="form" action="account-update.jsp">
            <div class="form-group">
              <label for="inputEmail1" class="col-lg-2 col-md-3 control-label">Email</label>
              <div class="col-lg-10 col-md-9 ">
                <input type="email" class="form-control" id="inputEmail1" placeholder="Email" value="<%=rs.getString(1)%>" disabled>
              </div>
            </div>
            <div class="form-group">
              <label for="inputEmail1" class="col-lg-2 col-md-3 control-label">Old Password</label>
              <div class="col-lg-10 col-md-9 ">
                <input type="password" class="form-control" id="" placeholder="Old Password" name="oldPassword">
              </div>
            </div>
            <div class="form-group">
              <label for="inputEmail1" class="col-lg-2 col-md-3 control-label">New Password</label>
              <div class="col-lg-10 col-md-9 ">
                <input type="password" class="form-control" id="" placeholder="New Password" name="password">
              </div>
            </div>
            <div class="form-group">
              <label for="inputEmail1" class="col-lg-2 col-md-3 control-label">Repeat Password</label>
              <div class="col-lg-10 col-md-9 ">
                <input type="password" class="form-control" id="" placeholder="Repeat Password" name="rpassword">
              </div>
            </div>            
            
             <div class="form-group">
              <div class="col-lg-offset-2 col-md-offset-3 col-lg-10 col-md-9">
                <button type="submit" class="btn btn-primary btn-block">Save</button>
                
              </div>
            </div>
          </form>
						</div>
					</div>
					<br>
				</div>
				<div class="col-md-2 col-sm-4 form-group">
					<div>
						<a href="stu-login-signup.html" class="btn btn-block btn-danger">Log Out</a>
						
					</div>
				</div>
				<section>
				<div class="col-md-2 col-sm-4">
					<form class="form-group" role="form" action="account-delete.jsp">
						<div>
		 					<button type="submit" class="btn btn-primary btn-block" name="deactivate" onclick="return decativatealert()">Deactivate</button> 
						</div>
					</form>
				</div>
				</section>
			</div>
			<script>window.prettyPrint && prettyPrint();</script>
		</div>
	</section>
	
		
	

<!-- Bootstrap core JavaScript
================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/jquery.min.js"></script>
	<script src="js/vendor/jquery.min.js"></script>
	<script src="js/vendor/video.js"></script>
	<script src="js/flat-ui.min.js"></script>
	<script src="docs/assets/js/prettify.js"></script>
	<script src="docs/assets/js/application.js"></script>
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