<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.linkedus.db.Conn"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Manage Jobs | Jobs4U</title>
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
            <a href="job-manage.jsp">
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
      <div class="row">
        <div class="col-md-3 col-xs-12"><div>
          <a href="job-add.html" class="btn btn-primary btn-block btn-lg text-capitalize" target="_blank">
          <i class="fa fa-plus"></i>&nbsp;&nbsp;post new job</a>
        </div><br></div>
        <div class="col-md-9 col-xs-12">
        
        							<%
								Conn con = new Conn();
								String strEmail = (String) session.getAttribute("emp-email");
								session.setAttribute("emp-email", strEmail);
								ResultSet rs = con.getRs("SELECT * FROM job where recEmail='"
										+ strEmail + "'");
								while (rs.next()) {

									int jobID = rs.getInt(1);
							%>
        <form action="job-session.jsp">
          <div class="panel panel-default" id="basics">
            <div class="panel-body">
              <div class="row">
                <div class="col-md-8 col-sm-12">
                  <h3 class="text-uppercase"><%=rs.getString(3)%></h3>
                  <h4><%=rs.getString(4)%></h4>
                  <h5><i class="fa fa-map-marker"></i>&nbsp;&nbsp;<%=rs.getString(6)%></h5>
                  <h6 class="text-muted"><%=rs.getString(14)%></h6>
                  <input type="hidden" name="jobID" value="<%=rs.getInt(1)%>">
                  <input type="hidden" name="industry" value="<%=rs.getString(9)%>">
                  <input type="hidden" name="emp-email" value="$strEmail">
                </div>
                <div class="col-md-4 col-sm-12 text-center">
                  <h3>
                  	<button  type="submit"class="btn btn-primary btn-block" target="_blank">View</button>
                  </h3>
                </div>
              </div>
              <hr>
              
            
            </div>
          </div>
        </form>  
          
          	<%
								}
							%>
          
          
          <!--Pagination-->
          
          <div class="">
            <ul class="pagination">
              <li class="previous disabled">
                <a href="#fakelink" class="fui-arrow-left">
                </a>
              </li>
              <li class="active">
                <a href="#fakelink">
                  1
                </a>
              </li>
              <li>
                <a href="#fakelink">
                  2
                </a>
              </li>
              <li>
                <a href="#fakelink">
                  3
                </a>
              </li>
              <li>
                <a href="#fakelink">
                  4
                </a>
              </li>
              <li>
                <a href="#fakelink">
                  5
                </a>
              </li>
              <li>
                <a href="#fakelink">
                  6
                </a>
              </li>
              <li>
                <a href="#fakelink">
                  7
                </a>
              </li>
              <li>
                <a href="#fakelink">
                  8
                </a>
              </li>
              <li>
                <a href="#fakelink">
                  9
                </a>
              </li>
              <li>
                <a href="#fakelink">
                  10
                </a>
              </li>
              <!-- Make dropdown appear above pagination -->
              <li class="pagination-dropdown dropup">
                <a href="#fakelink" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fui-triangle-up"></i>
                </a>
                <!-- Dropdown menu -->
                <ul class="dropdown-menu">
                  <li>
                    <a href="#fakelink">
                      10â20
                    </a>
                  </li>
                  <li>
                    <a href="#fakelink">
                      20â30
                    </a>
                  </li>
                  <li>
                    <a href="#fakelink">
                      40â50
                    </a>
                  </li>
                </ul>
              </li>
              <li class="next">
                <a href="#fakelink" class="fui-arrow-right">
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <script>window.prettyPrint && prettyPrint();</script>
    </div>
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
</body>
</html>