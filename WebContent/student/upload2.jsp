<%@page import="java.io.*" %>
<%@page contentType="text/html; charset=utf-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Upload | Jobs4U</title>
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
String strEmail=(String)session.getAttribute("email"); 
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
        <span class="navbar-brand"><strong><a href="http://localhost:8080/linkedus">Jobs4U</a></strong></span>
      </div>
      
      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="navbar-collapse">
        <ul class="nav navbar-nav text-uppercase">
          <li class="dropdown active">
            <a href="#"
						class="dropdown-toggle" data-toggle="dropdown">
              <i
							class="fa fa-user"></i>&nbsp;&nbsp; Profile <span class="caret"></span>
            </a>
            <ul class="dropdown-menu">
              <li>
                <a href="profile-view.html">
                  View Profile
                </a>
              </li>
              <li>
                <a href="profile-edit.html">
                  Edit Profile
                </a>
              </li>
              <li class=" active">
                <a href="upload.html">
                  Upload Resume
                </a>
              </li>
            </ul>
          </li>
          <li>
            <a href="job-listing.html">
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
		<div class="container">
			<!-- main content -->

			<!--Upload Resume-->
			<div class="panel panel-default">
				<div class="panel-heading" id="photos">
					<h3 class="panel-title">Resume</h3>
				</div>
				<div class="panel-body">
					<form class="form-horizontal" name="uploadForm" action="upload.jsp" method="POST" enctype="multipart/form-data">
						<div class="row">
							<div class="col-md-8 col-sm-12 row-space-top-1">
<% 
	String saveFile = new String();
	String contentType = request.getContentType();
	//String[] strings = strEmail.split("@");
	//String username = strings[0];
	
	if((contentType != null) && (contentType.indexOf("multipart/form-data") >=0 )){
		
		DataInputStream in = new DataInputStream(request.getInputStream());
		
		int formDataLength = request.getContentLength();
		byte dataBytes[] = new byte[formDataLength];
		int byteRead = 0;
		int totalBytesRead = 0;
		
		while(totalBytesRead < formDataLength){
			byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
			totalBytesRead += byteRead;
			
		}
		
		String file = new String(dataBytes, "CP1256");
		
		saveFile = file.substring(file.indexOf("filename=\"") + 10);
		saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
		saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1, saveFile.indexOf("\""));
		
		int lastIndex = contentType.lastIndexOf("=");
		String boundary = contentType.substring(lastIndex + 1, contentType.length());
		
		int pos;
		
		pos = file.indexOf("filename=\"");
		pos = file.indexOf("\n", pos) + 1;
		pos = file.indexOf("\n", pos) + 1;
		pos = file.indexOf("\n", pos) + 1;
		
		int boundaryLocation = file.indexOf(boundary, pos) - 4;
		
		int startPos = ((file.substring(0, pos)).getBytes("CP1256")).length;
		int endPos = ((file.substring(0, boundaryLocation)).getBytes("CP1256")).length;
		
		//String fileName[] = saveFile.split(".");
		//String fileType = fileName[fileName.length-1];
		
		//saveFile = "D:/" + saveFile;
		saveFile = "/Users/kouxping/Documents/" + strEmail + ".pdf";
		
		File ff = new File(saveFile);
		
		try{
			FileOutputStream fileOut = new FileOutputStream(ff);
			fileOut.write(dataBytes, startPos, (endPos - startPos));
			fileOut.flush();
		
			out.println("<script type=\"text/javascript\">");
		    out.println("alert('Upload Successfully');");
		    out.println("</script>");
		    
		    fileOut.close();
		
		} catch (Exception e){
			out.println(e);
		}
		
		
		//String site = new String("upload.html");
		//response.setStatus(response.SC_MOVED_TEMPORARILY);
		//response.setHeader("Location", site);
		
	}
%>

<input type="file" name="file" value="">
								<p class="help-block">
									Upload your resume. <br> Accepted formats are .doc, .docx,
									.ppt, .pptx, .pez, .pdf. <br> The size should be less than
									5 MB.
								</p>
								<input class="btn btn-primary btn-wide row-space-2 row-space-top-2 text-capitalize"
									type="submit" value="Upload" name="submit" />
							</div>
							<div class="col-md-4 col-sm-6 row-space-4">
              
              <div class="thumbnail text-center">
            <h1 class=" tile-image"><i class="fa fa-file-text-o" style="font-size: 100px"></i></h1>
									<div class="caption">
									<% String h="../DownloadServlet?stuEmail="+strEmail;
										System.out.println(h);
									%>
											<a class="btn btn-primary row-space-2 row-space-top-2"
												href=<%=h%>> View Resume</a>
              </div>
          </div>
              
              
								
							</div>
						</div>

					</form>
				</div>
			</div>

			<br>
			<br>
			<br>
		</div>
	</section>
   <!-- /.container -->

  <!-- Bootstrap core JavaScript
    ================================================== -->
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

</body>
</html>