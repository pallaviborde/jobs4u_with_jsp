<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.linkedus.db.Conn"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Edit Profile | Jobs4U</title>
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
        while(rs.next()){
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
              <li>
                <a href="profile-view.jsp">
                  View Profile
                </a>
              </li>
              <li class=" active">
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
    <form  accept-charset="utf-8" action="profile-update.jsp" class="form">
			<!--Basic Info-->
			<div class="panel panel-default">
      
				<div class="panel-heading" id="basics">
					<h3 class="panel-title text-uppercase">Basic Information</h3>
				</div>
				<div class="panel-body">
					<fieldset>
						<div class="row">
							<div class="col-md-6 col-sm-12 row-space-1">
								<label class="control-label" for="">First Name</label>
								<div id="">
									<input type="text" class="form-control" id="" placeholder=""  name="firstName" value="<%=rs.getString(3)%>">
								</div>
							</div>
							<div class="col-md-6 col-sm-12 row-space-1">
								<label class="control-label" for="">Last Name</label>
								<div id="">
									<input type="text" class="form-control" id="" placeholder="" name="lastName" value="<%=rs.getString(4)%>">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6 col-sm-12 row-space-1">
								<label class="control-label" for="">Email</label>
								<div id="">
									<input type="email" class="form-control" id="" placeholder="" disabled name="email" value="<%=rs.getString(1)%>">
								</div>
							</div>
							<div class="col-md-6 col-sm-12 row-space-1">
								<label class="control-label" for="">Phone Number</label>
								<div id="">
									<input type="tel" class="form-control" id="" placeholder="e.g. (098)765-4321" name="telephone" value="<%=rs.getString(5)%>">
								</div>
							</div>
						</div>
						<!--  from here -->
						<div class="row">
							<div class="col-md-6 col-sm-12 row-space-1">
								<label class="control-label" for="">Preferred Time of Contact</label>
								
							</div>
							
							
						</div>
						<div class="row">
						<div class="col-sm-12 row-space-1">
								<label class="control-label" for="">From</label>
							</div>
							
						</div>
						<div class= "row">
						<div class="col-md-3 col-sm-6 col-sm-12">
								<div class="form-group">
                <select data-toggle="select"  id="" name="preferedInTime"
                 class="form-control select select-default">
									<option value="<%=rs.getString(32)%>" selected="selected"><%=rs.getString(32)%></option>
									<option value="12 AM">12 AM</option>
									<option value="1 AM">1 AM</option>
									<option value="2 AM">2 AM</option>
									<option value="3 AM">3 AM</option>
									<option value="4 AM">4 AM</option>
									<option value="5 AM">5 AM</option>
									<option value="6 AM">6 AM</option>
									<option value="7 AM">7 AM</option>
									<option value="8 AM">8 AM</option>
									<option value="9 AM">9 AM</option>
									<option value="10 AM">10 AM</option>
									<option value="11 AM">11 AM</option>
									<option value="12 PM">12 PM</option>
									<option value="1 PM">1 PM</option>
									<option value="2 PM">2 PM</option>
									<option value="3 PM">3 PM</option>
									<option value="4 PM">4 PM</option>
									<option value="5 PM">5 PM</option>
									<option value="6 PM">6 PM</option>
									<option value="7 PM">7 PM</option>
									<option value="8 PM">8 PM</option>
									<option value="9 PM">9 PM</option>
									<option value="10 PM">10 PM</option>
									<option value="11 PM">11 PM</option>
									
								</select>
                  
              
            </div>
							</div>
							</div>
							
							<div class="row">
						<div class="col-sm-12 row-space-1">
								<label class="control-label" for="">To</label>
							</div>
							
						</div>
						
						<div class= "row">
						<div class="col-md-3 col-sm-6 col-sm-12">
								<div class="form-group">
                <select data-toggle="select"  id="" name="preferedOutTime"
                 class="form-control select select-default">
									<option value="<%=rs.getString(33)%>" selected="selected"><%=rs.getString(33)%></option>
									<option value="12 AM">12 AM</option>
									<option value="1 AM">1 AM</option>
									<option value="2 AM">2 AM</option>
									<option value="3 AM">3 AM</option>
									<option value="4 AM">4 AM</option>
									<option value="5 AM">5 AM</option>
									<option value="6 AM">6 AM</option>
									<option value="7 AM">7 AM</option>
									<option value="8 AM">8 AM</option>
									<option value="9 AM">9 AM</option>
									<option value="10 AM">10 AM</option>
									<option value="11 AM">11 AM</option>
									<option value="12 PM">12 PM</option>
									<option value="1 PM">1 PM</option>
									<option value="2 PM">2 PM</option>
									<option value="3 PM">3 PM</option>
									<option value="4 PM">4 PM</option>
									<option value="5 PM">5 PM</option>
									<option value="6 PM">6 PM</option>
									<option value="7 PM">7 PM</option>
									<option value="8 PM">8 PM</option>
									<option value="9 PM">9 PM</option>
									<option value="10 PM">10 PM</option>
									<option value="11 PM">11 PM</option>
									
								</select>
                  
              
            </div>
							</div>
							</div>
						<!--  to here -->
						<div class="row">
							<div class="col-sm-12 row-space-1">
								<label class="control-label" for="">Address (Optional)</label>
								<div id="">
									<input type="text" class="form-control" id=""
										placeholder="e.g., 2711 N 1st St, San Jose, CA 95134" name="address" value="<%=rs.getString(6)%>">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12">
								<label for="" class="control-label">Summary</label>
							</div>
							<div class="col-sm-12 row-space-1">
								<textarea class="form-control" name="summary"
									placeholder="describe yourself - skill sets, experience, expectation, etc."
									style="width: 100%; max-width: 100%;" rows="6"><%=rs.getString(7)%></textarea>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12 row-space-1">
								<label class="control-label" for="">Expected Job Title
									(Optional)</label>
								<div id="">
									<input type="text" class="form-control" id=""
										placeholder="e.g., Product Manager" name="expectedJob" value="<%=rs.getString(8)%>">
								</div>
							</div>
						</div>
					</fieldset>
				</div>
        </div>

			<!--Education record-->
			<div class="panel panel-default">
				<div class="panel-heading" id="edu">
					<h3 class="panel-title text-uppercase">Education (most recent)</h3>
				</div>
				<div class="panel-body">
					
          <fieldset>
						<div class="row">
							<div class="col-sm-12 row-space-1">
								<label class="control-label" for="">School Name</label>
								<div id="">
									<input type="text" class="form-control" id="" placeholder="" name="schoolName" value="<%=rs.getString(10)%>">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12 row-space-1">
								<label class="control-label" for="">Start Date</label>
							</div>
						</div>
						<div class="row">


							<div class="col-md-3 col-sm-6 col-sm-12">
								<div class="form-group">
                <select data-toggle="select"  id="" name="schoolStartMonth"
                 class="form-control select select-default">
									<option value="<%=rs.getString(11)%>" selected="selected"><%=rs.getString(11)%></option>
									<option value="January">January</option>
									<option value="February">February</option>
									<option value="March">March</option>
									<option value="April">April</option>
									<option value="May">May</option>
									<option value="June">June</option>
									<option value="July">July</option>
									<option value="August">August</option>
									<option value="September">September</option>
									<option value="October">October</option>
									<option value="November">November</option>
									<option value="December">December</option>
								</select>
                  
              
            </div>
							</div>
<div class="col-md-3 col-sm-6 col-sm-12">
              <div class="form-group">
								<select name="schoolStartYear" id="" type="singleselect" data-toggle="select"
                
									class="form-control select select-default">
									<option value="<%=rs.getString(12)%>" selected="selected"><%=rs.getString(12)%></option>
									<option value="2016">2016</option>
									<option value="2015">2015</option>
									<option value="2014">2014</option>
									<option value="2013">2013</option>
									<option value="2012">2012</option>
									<option value="2011">2011</option>
									<option value="2010">2010</option>
									<option value="2009">2009</option>
									<option value="2008">2008</option>
									<option value="2007">2007</option>
									<option value="2006">2006</option>
									<option value="2005">2005</option>
									<option value="2004">2004</option>
									<option value="2003">2003</option>
									<option value="2002">2002</option>
									<option value="2001">2001</option>
									<option value="2000">2000</option>
									<option value="1999">1999</option>
									<option value="1998">1998</option>
									<option value="1997">1997</option>
									<option value="1996">1996</option>
									<option value="1995">1995</option>
									<option value="1994">1994</option>
									<option value="1993">1993</option>
									<option value="1992">1992</option>
									<option value="1991">1991</option>
									<option value="1990">1990</option>
									<option value="1989">1989</option>
									<option value="1988">1988</option>
									<option value="1987">1987</option>
									<option value="1986">1986</option>
									<option value="1985">1985</option>
									<option value="1984">1984</option>
									<option value="1983">1983</option>
									<option value="1982">1982</option>
									<option value="1981">1981</option>
									<option value="1980">1980</option>
									<option value="1979">1979</option>
									<option value="1978">1978</option>
									<option value="1977">1977</option>
									<option value="1976">1976</option>
									<option value="1975">1975</option>
									<option value="1974">1974</option>
									<option value="1973">1973</option>
									<option value="1972">1972</option>
									<option value="1971">1971</option>
									<option value="1970">1970</option>
									<option value="1969">1969</option>
									<option value="1968">1968</option>
									<option value="1967">1967</option>
									<option value="1966">1966</option>
									<option value="1965">1965</option>
									<option value="1964">1964</option>
									<option value="1963">1963</option>
									<option value="1962">1962</option>
									<option value="1961">1961</option>
									<option value="1960">1960</option>
									<option value="1959">1959</option>
									<option value="1958">1958</option>
									<option value="1957">1957</option>
									<option value="1956">1956</option>
									<option value="1955">1955</option>
									<option value="1954">1954</option>
									<option value="1953">1953</option>
									<option value="1952">1952</option>
									<option value="1951">1951</option>
									<option value="1950">1950</option>
									<option value="1949">1949</option>
									<option value="1948">1948</option>
									<option value="1947">1947</option>
									<option value="1946">1946</option>
									<option value="1945">1945</option>
									<option value="1944">1944</option>
									<option value="1943">1943</option>
									<option value="1942">1942</option>
									<option value="1941">1941</option>
									<option value="1940">1940</option>
									<option value="1939">1939</option>
									<option value="1938">1938</option>
									<option value="1937">1937</option>
									<option value="1936">1936</option>
									<option value="1935">1935</option>
									<option value="1934">1934</option>
									<option value="1933">1933</option>
									<option value="1932">1932</option>
									<option value="1931">1931</option>
									<option value="1930">1930</option>
									<option value="1929">1929</option>
									<option value="1928">1928</option>
									<option value="1927">1927</option>
									<option value="1926">1926</option>
									<option value="1925">1925</option>
									<option value="1924">1924</option>
									<option value="1923">1923</option>
									<option value="1922">1922</option>
									<option value="1921">1921</option>
									<option value="1920">1920</option>
									<option value="1919">1919</option>
									<option value="1918">1918</option>
									<option value="1917">1917</option>
									<option value="1916">1916</option>
									<option value="1915">1915</option>
									<option value="1914">1914</option>
									<option value="1913">1913</option>
									<option value="1912">1912</option>
									<option value="1911">1911</option>
									<option value="1910">1910</option>
									<option value="1909">1909</option>
									<option value="1908">1908</option>
									<option value="1907">1907</option>
									<option value="1906">1906</option>
									<option value="1905">1905</option>
									<option value="1904">1904</option>
									<option value="1903">1903</option>
									<option value="1902">1902</option>
									<option value="1901">1901</option>
									<option value="1900">1900</option>
								</select>
							</div>
              </div>
						</div>
						<div class="row">
							<div class="col-sm-12 row-space-1">
								<label class="control-label" for="">Graduate Date
									(estimate if attending)</label>
							</div>
						</div>
						<div class="row">

							<div class="col-md-3 col-sm-6">
              <div class="form-group">
								<select id="" name="schoolEndMonth" data-toggle="select" class="form-control select select-default">
									<option value="<%=rs.getString(13)%>" selected="selected"><%=rs.getString(13)%></option>
									<option value="January">January</option>
									<option value="February">February</option>
									<option value="March">March</option>
									<option value="April">April</option>
									<option value="May">May</option>
									<option value="June">June</option>
									<option value="July">July</option>
									<option value="August">August</option>
									<option value="September">September</option>
									<option value="October">October</option>
									<option value="November">November</option>
									<option value="December">December</option>
								</select>
                </div>
							</div>

							<div class="col-md-3 col-sm-6">
              <div class="form-group">
								<select name="schoolEndYear" id="" data-toggle="select" type="singleselect"

									class="form-control select select-default">
									<option value="<%=rs.getString(14)%>" selected="selected"><%=rs.getString(14)%></option>
									<option value="2016">2016</option>
									<option value="2015">2015</option>
									<option value="2014">2014</option>
									<option value="2013">2013</option>
									<option value="2012">2012</option>
									<option value="2011">2011</option>
									<option value="2010">2010</option>
									<option value="2009">2009</option>
									<option value="2008">2008</option>
									<option value="2007">2007</option>
									<option value="2006">2006</option>
									<option value="2005">2005</option>
									<option value="2004">2004</option>
									<option value="2003">2003</option>
									<option value="2002">2002</option>
									<option value="2001">2001</option>
									<option value="2000">2000</option>
									<option value="1999">1999</option>
									<option value="1998">1998</option>
									<option value="1997">1997</option>
									<option value="1996">1996</option>
									<option value="1995">1995</option>
									<option value="1994">1994</option>
									<option value="1993">1993</option>
									<option value="1992">1992</option>
									<option value="1991">1991</option>
									<option value="1990">1990</option>
									<option value="1989">1989</option>
									<option value="1988">1988</option>
									<option value="1987">1987</option>
									<option value="1986">1986</option>
									<option value="1985">1985</option>
									<option value="1984">1984</option>
									<option value="1983">1983</option>
									<option value="1982">1982</option>
									<option value="1981">1981</option>
									<option value="1980">1980</option>
									<option value="1979">1979</option>
									<option value="1978">1978</option>
									<option value="1977">1977</option>
									<option value="1976">1976</option>
									<option value="1975">1975</option>
									<option value="1974">1974</option>
									<option value="1973">1973</option>
									<option value="1972">1972</option>
									<option value="1971">1971</option>
									<option value="1970">1970</option>
									<option value="1969">1969</option>
									<option value="1968">1968</option>
									<option value="1967">1967</option>
									<option value="1966">1966</option>
									<option value="1965">1965</option>
									<option value="1964">1964</option>
									<option value="1963">1963</option>
									<option value="1962">1962</option>
									<option value="1961">1961</option>
									<option value="1960">1960</option>
									<option value="1959">1959</option>
									<option value="1958">1958</option>
									<option value="1957">1957</option>
									<option value="1956">1956</option>
									<option value="1955">1955</option>
									<option value="1954">1954</option>
									<option value="1953">1953</option>
									<option value="1952">1952</option>
									<option value="1951">1951</option>
									<option value="1950">1950</option>
									<option value="1949">1949</option>
									<option value="1948">1948</option>
									<option value="1947">1947</option>
									<option value="1946">1946</option>
									<option value="1945">1945</option>
									<option value="1944">1944</option>
									<option value="1943">1943</option>
									<option value="1942">1942</option>
									<option value="1941">1941</option>
									<option value="1940">1940</option>
									<option value="1939">1939</option>
									<option value="1938">1938</option>
									<option value="1937">1937</option>
									<option value="1936">1936</option>
									<option value="1935">1935</option>
									<option value="1934">1934</option>
									<option value="1933">1933</option>
									<option value="1932">1932</option>
									<option value="1931">1931</option>
									<option value="1930">1930</option>
									<option value="1929">1929</option>
									<option value="1928">1928</option>
									<option value="1927">1927</option>
									<option value="1926">1926</option>
									<option value="1925">1925</option>
									<option value="1924">1924</option>
									<option value="1923">1923</option>
									<option value="1922">1922</option>
									<option value="1921">1921</option>
									<option value="1920">1920</option>
									<option value="1919">1919</option>
									<option value="1918">1918</option>
									<option value="1917">1917</option>
									<option value="1916">1916</option>
									<option value="1915">1915</option>
									<option value="1914">1914</option>
									<option value="1913">1913</option>
									<option value="1912">1912</option>
									<option value="1911">1911</option>
									<option value="1910">1910</option>
									<option value="1909">1909</option>
									<option value="1908">1908</option>
									<option value="1907">1907</option>
									<option value="1906">1906</option>
									<option value="1905">1905</option>
									<option value="1904">1904</option>
									<option value="1903">1903</option>
									<option value="1902">1902</option>
									<option value="1901">1901</option>
									<option value="1900">1900</option>
								</select>
                </div>
							</div>
              </div>
              
            <div class="row">
							<div class="col-md-6 col-sm-12 col-xs-12">
								<div class="form-group">

              
            </div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-6 col-sm-12 row-space-1">
								<label class="control-label" for="">Degree</label>

								<div id="" class="form-group">
									<select name="schoolDegree" id="" data-toggle="select"
										class="form-control select select-default">
										<option value="<%=rs.getString(15)%>" selected="selected"><%=rs.getString(15)%></option>
										<option value="High School">High School</option>
										<option value="Associate Degree">Associate Degree</option>
										<option value="Bachelor Degree">Bachelor Degree</option>
										<option value="Master Degree">Master Degree</option>
										<option value="Master of Business Administration (M.B.A.)">Master
											of Business Administration (M.B.A.)</option>
										<option value="Juris Doctor (J.D.)">Juris Doctor
											(J.D.)</option>
										<option value="Doctor of Medicine (M.D.)">Doctor of
											Medicine (M.D.)</option>
										<option value="Doctor of Philosophy (Ph.D.)">Doctor
											of Philosophy (Ph.D.)</option>
										<option value="Engineer Degree">Engineer Degree</option>
										<option value="other">Other</option>
									</select>
								</div>
							</div>

							<div class="col-md-6 col-sm-12 row-space-1">
								<label class="control-label" for="">Major</label>
								<div id="" class="form-group">
									    <select name="schoolMajor" id="" type="singleselect"
										data-toggle="select"
										class="form-control select select-default">
										<option value="<%=rs.getString(16)%>" selected="selected"><%=rs.getString(16)%></option>
										<option value="Business Administration">Business Administration</option>
										<option value="Computer Science/Software Engineering">Computer Science/Software Engineering</option>
										<option value="Electrical/Computer Engineering">Electrical/Computer Engineering</option>
										<option value="Engineering Management">Engineering Management</option>
										<option value="Integrating Academic & Internship Learning">Integrating Academic & Internship Learning</option>
										<option value="Language Development">Language Development</option>
									    </select>
								</div>
							</div>
						</div>
					</fieldset>
				</div>
			</div>



			<!--Work Experience-->
			<div class="panel panel-default">
				<div class="panel-heading" id="work">
					<h3 class="panel-title text-uppercase">Employment (Most Recent)</h3>
				</div>
				<div class="panel-body">
					<fieldset>
						<div class="row">
							<div class="col-sm-12 row-space-1">
								<label class="control-label" for="">Employer</label>
								<div id="">
									<input type="text" class="form-control" id="" placeholder="" name="workCompanyName" value="<%=rs.getString(17)%>">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12 row-space-1">
								<label class="control-label" for="">Job Title</label>
								<div id="">
									<input type="text" class="form-control" id="" placeholder="" name="workJobTitle" value="<%=rs.getString(18)%>">
								</div>
							</div>
						</div>


						<div class="row">
							<div class="col-sm-12 row-space-1">
								<label class="control-label" for="">Start Date</label>
							</div>
						</div>
						<div class="row">

<div class="col-md-3 col-sm-6 col-xs-12">
              <div class="form-group">
								<select id="" name="workStartMonth" data-toggle="select" class="form-control select select-default">
										<option value="<%=rs.getString(19)%>" selected="selected"><%=rs.getString(19)%></option>
										<option value="January">January</option>
										<option value="February">February</option>
										<option value="March">March</option>
										<option value="April">April</option>
										<option value="May">May</option>
										<option value="June">June</option>
										<option value="July">July</option>
										<option value="August">August</option>
										<option value="September">September</option>
										<option value="October">October</option>
										<option value="November">November</option>
										<option value="December">December</option>
								</select>
                </div>
							</div>
<div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="form-group">

								<select name="workStartYear" id="" data-toggle="select" type="singleselect"
								class="form-control select select-default">
									<option value="<%=rs.getString(20)%>" selected="selected"><%=rs.getString(20)%></option>
									<option value="2016">2016</option>
									<option value="2015">2015</option>
									<option value="2014">2014</option>
									<option value="2013">2013</option>
									<option value="2012">2012</option>
									<option value="2011">2011</option>
									<option value="2010">2010</option>
									<option value="2009">2009</option>
									<option value="2008">2008</option>
									<option value="2007">2007</option>
									<option value="2006">2006</option>
									<option value="2005">2005</option>
									<option value="2004">2004</option>
									<option value="2003">2003</option>
									<option value="2002">2002</option>
									<option value="2001">2001</option>
									<option value="2000">2000</option>
									<option value="1999">1999</option>
									<option value="1998">1998</option>
									<option value="1997">1997</option>
									<option value="1996">1996</option>
									<option value="1995">1995</option>
									<option value="1994">1994</option>
									<option value="1993">1993</option>
									<option value="1992">1992</option>
									<option value="1991">1991</option>
									<option value="1990">1990</option>
									<option value="1989">1989</option>
									<option value="1988">1988</option>
									<option value="1987">1987</option>
									<option value="1986">1986</option>
									<option value="1985">1985</option>
									<option value="1984">1984</option>
									<option value="1983">1983</option>
									<option value="1982">1982</option>
									<option value="1981">1981</option>
									<option value="1980">1980</option>
									<option value="1979">1979</option>
									<option value="1978">1978</option>
									<option value="1977">1977</option>
									<option value="1976">1976</option>
									<option value="1975">1975</option>
									<option value="1974">1974</option>
									<option value="1973">1973</option>
									<option value="1972">1972</option>
									<option value="1971">1971</option>
									<option value="1970">1970</option>
									<option value="1969">1969</option>
									<option value="1968">1968</option>
									<option value="1967">1967</option>
									<option value="1966">1966</option>
									<option value="1965">1965</option>
									<option value="1964">1964</option>
									<option value="1963">1963</option>
									<option value="1962">1962</option>
									<option value="1961">1961</option>
									<option value="1960">1960</option>
									<option value="1959">1959</option>
									<option value="1958">1958</option>
									<option value="1957">1957</option>
									<option value="1956">1956</option>
									<option value="1955">1955</option>
									<option value="1954">1954</option>
									<option value="1953">1953</option>
									<option value="1952">1952</option>
									<option value="1951">1951</option>
									<option value="1950">1950</option>
									<option value="1949">1949</option>
									<option value="1948">1948</option>
									<option value="1947">1947</option>
									<option value="1946">1946</option>
									<option value="1945">1945</option>
									<option value="1944">1944</option>
									<option value="1943">1943</option>
									<option value="1942">1942</option>
									<option value="1941">1941</option>
									<option value="1940">1940</option>
									<option value="1939">1939</option>
									<option value="1938">1938</option>
									<option value="1937">1937</option>
									<option value="1936">1936</option>
									<option value="1935">1935</option>
									<option value="1934">1934</option>
									<option value="1933">1933</option>
									<option value="1932">1932</option>
									<option value="1931">1931</option>
									<option value="1930">1930</option>
									<option value="1929">1929</option>
									<option value="1928">1928</option>
									<option value="1927">1927</option>
									<option value="1926">1926</option>
									<option value="1925">1925</option>
									<option value="1924">1924</option>
									<option value="1923">1923</option>
									<option value="1922">1922</option>
									<option value="1921">1921</option>
									<option value="1920">1920</option>
									<option value="1919">1919</option>
									<option value="1918">1918</option>
									<option value="1917">1917</option>
									<option value="1916">1916</option>
									<option value="1915">1915</option>
									<option value="1914">1914</option>
									<option value="1913">1913</option>
									<option value="1912">1912</option>
									<option value="1911">1911</option>
									<option value="1910">1910</option>
									<option value="1909">1909</option>
									<option value="1908">1908</option>
									<option value="1907">1907</option>
									<option value="1906">1906</option>
									<option value="1905">1905</option>
									<option value="1904">1904</option>
									<option value="1903">1903</option>
									<option value="1902">1902</option>
									<option value="1901">1901</option>
									<option value="1900">1900</option>
								</select>
                </div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12 row-space-1">
								<label class="control-label" for="">End Date (Optional)</label>
							</div>
						</div>
						<div class="row">
		<div class="col-md-3 col-sm-6 col-xs-12">
              <div class="form-group">
								<select id="" name="workEndMonth" data-toggle="select" class="form-control select select-default">
										<option value="<%=rs.getString(21)%>" selected="selected"><%=rs.getString(21)%></option>
										<option value="January">January</option>
										<option value="February">February</option>
										<option value="March">March</option>
										<option value="April">April</option>
										<option value="May">May</option>
										<option value="June">June</option>
										<option value="July">July</option>
										<option value="August">August</option>
										<option value="September">September</option>
										<option value="October">October</option>
										<option value="November">November</option>
										<option value="December">December</option>
								</select>
                </div>
							</div>
<div class="col-md-3 col-sm-6 col-xs-12">
              <div class="form-group">
								<select name="workEndYear" id="" data-toggle="select" type="singleselect"
									class="form-control select select-default">
									<option value="<%=rs.getString(22)%>" selected="selected"><%=rs.getString(22)%></option>
									<option value="2016">2016</option>
									<option value="2015">2015</option>
									<option value="2014">2014</option>
									<option value="2013">2013</option>
									<option value="2012">2012</option>
									<option value="2011">2011</option>
									<option value="2010">2010</option>
									<option value="2009">2009</option>
									<option value="2008">2008</option>
									<option value="2007">2007</option>
									<option value="2006">2006</option>
									<option value="2005">2005</option>
									<option value="2004">2004</option>
									<option value="2003">2003</option>
									<option value="2002">2002</option>
									<option value="2001">2001</option>
									<option value="2000">2000</option>
									<option value="1999">1999</option>
									<option value="1998">1998</option>
									<option value="1997">1997</option>
									<option value="1996">1996</option>
									<option value="1995">1995</option>
									<option value="1994">1994</option>
									<option value="1993">1993</option>
									<option value="1992">1992</option>
									<option value="1991">1991</option>
									<option value="1990">1990</option>
									<option value="1989">1989</option>
									<option value="1988">1988</option>
									<option value="1987">1987</option>
									<option value="1986">1986</option>
									<option value="1985">1985</option>
									<option value="1984">1984</option>
									<option value="1983">1983</option>
									<option value="1982">1982</option>
									<option value="1981">1981</option>
									<option value="1980">1980</option>
									<option value="1979">1979</option>
									<option value="1978">1978</option>
									<option value="1977">1977</option>
									<option value="1976">1976</option>
									<option value="1975">1975</option>
									<option value="1974">1974</option>
									<option value="1973">1973</option>
									<option value="1972">1972</option>
									<option value="1971">1971</option>
									<option value="1970">1970</option>
									<option value="1969">1969</option>
									<option value="1968">1968</option>
									<option value="1967">1967</option>
									<option value="1966">1966</option>
									<option value="1965">1965</option>
									<option value="1964">1964</option>
									<option value="1963">1963</option>
									<option value="1962">1962</option>
									<option value="1961">1961</option>
									<option value="1960">1960</option>
									<option value="1959">1959</option>
									<option value="1958">1958</option>
									<option value="1957">1957</option>
									<option value="1956">1956</option>
									<option value="1955">1955</option>
									<option value="1954">1954</option>
									<option value="1953">1953</option>
									<option value="1952">1952</option>
									<option value="1951">1951</option>
									<option value="1950">1950</option>
									<option value="1949">1949</option>
									<option value="1948">1948</option>
									<option value="1947">1947</option>
									<option value="1946">1946</option>
									<option value="1945">1945</option>
									<option value="1944">1944</option>
									<option value="1943">1943</option>
									<option value="1942">1942</option>
									<option value="1941">1941</option>
									<option value="1940">1940</option>
									<option value="1939">1939</option>
									<option value="1938">1938</option>
									<option value="1937">1937</option>
									<option value="1936">1936</option>
									<option value="1935">1935</option>
									<option value="1934">1934</option>
									<option value="1933">1933</option>
									<option value="1932">1932</option>
									<option value="1931">1931</option>
									<option value="1930">1930</option>
									<option value="1929">1929</option>
									<option value="1928">1928</option>
									<option value="1927">1927</option>
									<option value="1926">1926</option>
									<option value="1925">1925</option>
									<option value="1924">1924</option>
									<option value="1923">1923</option>
									<option value="1922">1922</option>
									<option value="1921">1921</option>
									<option value="1920">1920</option>
									<option value="1919">1919</option>
									<option value="1918">1918</option>
									<option value="1917">1917</option>
									<option value="1916">1916</option>
									<option value="1915">1915</option>
									<option value="1914">1914</option>
									<option value="1913">1913</option>
									<option value="1912">1912</option>
									<option value="1911">1911</option>
									<option value="1910">1910</option>
									<option value="1909">1909</option>
									<option value="1908">1908</option>
									<option value="1907">1907</option>
									<option value="1906">1906</option>
									<option value="1905">1905</option>
									<option value="1904">1904</option>
									<option value="1903">1903</option>
									<option value="1902">1902</option>
									<option value="1901">1901</option>
									<option value="1900">1900</option>
								</select>
                </div>
							</div>
              </div>
              <div class="row">
							<div class="col-md-6 col-sm-12 col-xs-12">
								
                <div class="form-group">
              
            </div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12">
								<label for="" class="control-label">Responsibilities</label>
							</div>
							<div class="col-sm-12 row-space-1">
								<textarea class="form-control" name="workJobResponsibility" placeholder=""
									style="width: 100%; max-width: 100%;" rows="6"><%=rs.getString(23)%></textarea>
							</div>
						</div>

					</fieldset>
				</div>
			</div>

			<!--Project-->
			<div class="panel panel-default">
				<div class="panel-heading" id="project">
					<h3 class="panel-title text-uppercase">Project</h3>
				</div>
				<div class="panel-body">
					<fieldset>
						<div class="row">
							<div class="col-sm-12 row-space-1">
								<label class="control-label" for="">Project Name</label>
								<div id="">
									<input type="text" class="form-control" id="" placeholder="" name="projectName" value="<%=rs.getString(24)%>">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12">
								<label for="" class="control-label">Project Description</label>
							</div>
							<div class="col-sm-12 row-space-1">
								<textarea class="form-control" name="projectDescription" placeholder=""
									style="width: 100%; max-width: 100%;" rows="6"><%=rs.getString(25)%></textarea>
							</div>
						</div>


					</fieldset>
				</div>
			</div>


			<!--Skills-->
			<div class="panel panel-default">
				<div class="panel-heading" id="skills">
					<h3 class="panel-title text-uppercase">Skills & Tools (Comma Separated)</h3>
				</div>
				<div class="panel-body">
					<fieldset>
						<div class="row">
							<div class="col-sm-12 row-space-1">
								<div id="">
									<textarea class="form-control" name="skills" placeholder=""
										style="width: 100%; max-width: 100%;" rows="6"><%=rs.getString(9)%></textarea>

								</div>
							</div>
						</div>



					</fieldset>
				</div>
			</div>

			<div class="row row-space-top-3">
				<div class="col-sm-6 col-xs-12">
					<button class="btn btn-primary btn-block btn-wide text-capitalize"
						type="submit">Save</button>
				</div>
				<div class="col-sm-6 col-xs-12">
					<a href="profile-view.jsp"
						class="btn btn-block btn-default text-capitalize"> Cancel </a>
				</div>
			</div>
      </form>
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
	<%
       }
%>
</body>
</html>
