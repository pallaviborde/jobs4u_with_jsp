<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.linkedus.db.Conn"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Job Editing | Jobs4U</title>
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
String strEmail=(String)session.getAttribute("emp-email");
String jobID=(String)session.getAttribute("jobID");
//String jobID=request.getParameter("jobID");
ResultSet rs=con.getRs("SELECT * FROM job WHERE jobID='"+jobID+"'");
        while(rs.next()){
%>
  <!-- Navigation -->
  <nav class="navbar navbar-inverse navbar-fixed-top drop-shadow" role="navigation">
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
          <li class="active">
            <a href="job-manage.html">
              <i class="fa fa-briefcase"></i>&nbsp;&nbsp;Jobs
            </a>
          </li>
          <li>
            <a href="account.html">
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
   <form action="job-edit-update.jsp">
    <div class="container">
      <!--Breadcrumb-->
      <div>
        <ol class="breadcrumb">
          <li>
            <a href="job-manage.jsp">
              Jobs
            </a>
          </li>
          <li>
            <a href="job-detail.jsp">
              Detail
            </a>
          </li>
          <li class="active">Edit</li>
        </ol>
      </div>
      <!--Basic Info-->
      <div class="panel panel-default">
        <div class="panel-body">
         
            <div class="row">
              <div class="col-sm-12 row-space-1">
                <label class="control-label" for="">Job Title</label>
                <div id="">
                  <input type="text" class="form-control" name="jobTitle" id=""
										placeholder="" value="<%=rs.getString(3)%>">
				  <input type="hidden" name="jobID" value="<%=rs.getInt(1)%>">
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-12 row-space-1">
                <label class="control-label" for="">Company</label>
                <div id="">
                  <input type="text" class="form-control" name="companyName" id=""
										placeholder="" value="<%=rs.getString(4)%>">
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-12 row-space-1">
                <label class="control-label" for="">Company Website URL</label>
                <div id="">
                  <input type="text" class="form-control" name="companyWebsite" id=""
										placeholder="" value="<%=rs.getString(5)%>">
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-12 row-space-1">
                <label class="control-label" for="">Location</label>
                <div id="">
                  <input type="text" class="form-control" name="location" id=""
										placeholder="" value="<%=rs.getString(6)%>">
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-12 row-space-1">
                <label class="control-label" for="">Link for Applying</label>
                <div id="">
                  <input type="text" class="form-control" name="jobLink" id=""
										placeholder="" value="<%=rs.getString(15)%>">
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-12">
                <label for="" class="control-label">Job Description</label>
              </div>
              <div class="col-sm-12 row-space-1">
                <textarea class="form-control" name="jobDescription" id=""
									placeholder=""
									style="width: 100%; max-width: 100%;" rows="6"><%=rs.getString(7)%></textarea>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-12">
                <label for="" class="control-label">Desired Skills and Experience</label>
              </div>
              <div class="col-sm-12 row-space-1">
                <textarea class="form-control" name="desiredSkills" id=""
									placeholder=""
									style="width: 100%; max-width: 100%;" rows="6"><%=rs.getString(8)%></textarea>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6 col-sm-12 row-space-1">
                <label class="control-label" for="">Preferred Major</label>
                <div id="" class="form-group">
                  <select name="industry" id="" type="singleselect"
										data-toggle="select"
										class="form-control select select-default">
										<option value="<%=rs.getString(9)%>" selected="selected"><%=rs.getString(9)%></option>
										<option value="Business Administration">Business Administration</option>
										<option value="Computer Science/Software Engineering">Computer Science/Software Engineering</option>
										<option value="Electrical/Computer Engineering">Electrical/Computer Engineering</option>
										<option value="Engineering Management">Engineering Management</option>
										<option value="Integrating Academic & Internship Learning">Integrating Academic & Internship Learning</option>
										<option value="Language Development">Language Development</option>
									    </select>
                </div>
              </div>
              <div class="col-md-6 col-sm-12 row-space-1">
                <label class="control-label" for="">Employment Type</label>
                <div id="" class="form-group">
                  <select name="employmentType" id="" type="singleselect" data-toggle="select"
										class="form-control select select-default">
                     Other
										
                    <option value="<%=rs.getString(10)%>" selected=""><%=rs.getString(10)%></option>
                    <option value="fulltime">Full-time</option>
                    <option value="parttime">Part-time</option>
                  </select>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6 col-sm-12 row-space-1">
                <label class="control-label" for="">Experience Level</label>
                <div id="">
                  <input type="text" class="form-control" name="experienceLevel" id="" placeholder="" value="<%=rs.getString(11)%>">
                </div>
              </div>
              <div class="col-md-6 col-sm-12 row-space-1">
                <label class="control-label" for="">Job Function</label>
                <div id="">
                  <input type="text" class="form-control" name="jobFunction" id="" placeholder="" value="<%=rs.getString(12)%>">
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-12 row-space-1">
                <label class="control-label" for="">Education Re</label>
                <div id="">
                  <input type="text" class="form-control" name="education" id=""
										placeholder="" value="<%=rs.getString(13)%>">
                </div>
              </div>
            </div>
          
        </div>
      </div>
      <div class="row row-space-top-3">
        <div class="col-sm-6 col-xs-12">
          <button class="btn btn-primary btn-block btn-wide text-capitalize"
						type="submit">Save</button>
        </div>
        <div class="col-sm-6 col-xs-12">
          <a href="job-detail.jsp"
						class="btn btn-block btn-default text-capitalize">
            Cancel
          </a>
        </div>
      </div>
      <br>
      <br>
      <br>
    </div>
    </form>
  </section>
  <!-- /.container -->
  
  <!-- Bootstrap core JavaScript-->
  
  <script src="../js/jquery.min.js"></script>
  <script src="../js/vendor/jquery.min.js"></script>
  <!-- Placed at the end of the document so the pages load faster -->
  
  <script src="../js/vendor/video.js"></script>
  <script src="../js/flat-ui.min.js"></script>
  <script src="../docs/assets/js/prettify.js"></script>
  <script src="../docs/assets/js/application.js"></script>
  <script>
          videojs.options.flash.swf = "../js/vendors/video-js.swf"
        </script>
        	<%
       }
%>
</body>
</html>