<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="com.jobs4U.db.Conn"%>
<%@ page import="java.sql.*"%>
<%@page import="java.io.*" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Applicant Profile | Jobs4U</title>
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
String empEmail = (String) session.getAttribute("emp-email");
String stuEmail = (String) session.getAttribute("stu-email");
String filename = stuEmail + ".pdf";   
String filepath = "/Users/kouxping/Documents/";   
String path = filepath + filename;

File file=new File(path);

BufferedInputStream buf=null;
ServletOutputStream myOut=null;

boolean exists = file.exists();

if (!exists) {

  	out.println("<script type=\"text/javascript\">");
    out.println("alert('File is not available for downloading');");
    out.println("</script>");

}else{
	try{
		myOut = response.getOutputStream();
		
		response.setContentType("APPLICATION/OCTET-STREAM");   
		response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");   
		
		response.setContentLength((int)file.length());
	    
	    FileInputStream input = new FileInputStream(file);
	    buf = new BufferedInputStream(input);
	    int readBytes = 0;
	    
	  	//read from the file; write to the ServletOutputStream
	    while((readBytes = buf.read()) != -1)
	    	myOut.write(readBytes);
	    } catch (IOException ioe){
	  		throw new ServletException(ioe.getMessage( ));
		} finally {
			//close the input/output streams
	        if (myOut != null)
	            myOut.close( );
	         if (buf != null)
	         buf.close( );       
	    }
}

Conn con = new Conn();
ResultSet rs = con.getRs("SELECT * FROM student where Email='"
	+ stuEmail + "'");
while (rs.next()) {
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
        <span class="navbar-brand"><strong><a href="http://localhost:8080/Jobs4U">Jobs4U</a></strong></span>
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
        <li class="active">Potential Students</li>
      </ol>
      </div>
			<div class="row">
				<div class="col-md-2 col-sm-4">
					<!-- #### Side Nav #### -->
					<div id="sidenav" class="affix hidden-xs ">
						<div class="text-center">
							<ul class="nav nav-stacked nav-pills row-space-top-5"
								data-spy="affix">
								<li><a href="#basics"> Basics </a></li>
								<li><a href="#edu"> Education </a></li>
								<li><a href="#work"> Work </a></li>
								<li><a href="#project"> Project </a></li>
								<li><a href="#skills"> Skills </a></li>

							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-10 col-sm-8">
					<!--Basics-->
					<div class="panel panel-default text-center" id="basics">
						<div class="panel-body">
							<div class="row">
								<div class="col-sm-12">
									<h1 class="text-uppercase"><%=rs.getString(3)%> <%=rs.getString(4)%></h1>
									<h5 class="text-muted"><%=rs.getString(6)%></h5>
                  <!--Download resume-->
									<a href="download.jsp"> <i class="fa fa-file"></i>&nbsp;&nbsp;Download Resume
									</a>
									<hr width="30%">
									<h4>Expected Job Title</h4>
									<p><%=rs.getString(8)%></p>
                    
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
						</div>
					</div>
					<!--Education-->
					<div class="panel panel-default" id="edu">
						<div class="panel-heading ">
							<div class="row">
								<div class="col-sm-12 col-xs-12">
									<span class="panel-title text-uppercase">Education&nbsp;&nbsp;&nbsp;&nbsp;</span>
								
								</div>
							</div>
						</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-md-3">
									<h3 class="text-uppercase text-muted"><%=rs.getString(11)%><%=rs.getString(12)%> — <%=rs.getString(13)%><%=rs.getString(14)%>
									</h3>
								</div>
								<div class="col-md-9">
									<h2><%=rs.getString(10)%></h2>
									<h5 class="text-uppercase"><%=rs.getString(15)%></h5>
									<p><%=rs.getString(16)%></p>
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
								
								</div>
							</div>
						</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-md-3">
									<h3 class="text-uppercase text-muted"><%=rs.getString(19)%><%=rs.getString(20)%>— <%=rs.getString(21)%><%=rs.getString(22)%>
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
                  	<%
								}
							%>
          
</body>
</html>