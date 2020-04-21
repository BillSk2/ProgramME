<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="ProgramME.*, java.util.*"%>


	
<%  

Student student = (Student)session.getAttribute("student"); 
if (student == null) {
	request.setAttribute("message","You are not authorized to access this resource. Please login.");
%> 
<jsp:forward page="login.jsp"/>
<%
}
StudentDAO stdao = new StudentDAO();

ArrayList<Integer> coursesid = stdao.getCoursesId(student);
List<Course> courses = stdao.getCourses(coursesid);
CoursePrint cp = new CoursePrint();
String table1[][]=cp.TablePrint(courses);


	
%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content
		must come *after* these tags -->
		<title> ProgramME </title>
		<!-- Bootstrap core CSS -->
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/teliko.css" type="text/css" >
		<style>
	 


</style>
	</head>
<body>
<!-- Fixed navbar -->
		<nav class="navbar navbar-inverse navbar-fixed-top">
		  <div class="container">
			<div class="navbar-header">
			 <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
			</button>
			  <img src = "images/dmstlogo.jpg" alt= "dmst logo">
			</div>
			<div id="navbar" class="navbar-collapse collapse">
			  <ul class="nav navbar-nav">
			  </ul>
				<ul class="nav navbar-nav navbar-right">
					
					<li><a href="program.jsp" id="mybtn">
						<span class="glyphicon glyphicon-education" href="program.jsp" ></span> My Program</a>
					</li><li><a href="mandatory.jsp" id="editbtn">
						<span class="glyphicon glyphicon-pencil" href="mandatory.jsp" ></span> Edit your program</a>
					</li>
					<li><a href="contactus.jsp" id="contactusbtn">
						<span class="glyphicon glyphicon-envelope" href="contactus.jsp" ></span> Contact us</a>
					</li>
					
					<li><a href="logout.jsp" id="logoutbtn">
						<span class="glyphicon glyphicon-log-out" href="logout.jsp" ></span> Log-out</a>
					</li>
				</ul>
			  
			</div><!--/.nav-collapse -->
		  </div>
		</nav>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
				
<center>
<h1> <img src="images/ME.png" alt="programMe logo"</h1>
			
<h3><u>Το Πρόγραμμά μου:</u> </h3>
<br/>
<div class=programTable >
	<table id="myTable">
	<% 
		for(int i=0;i<7;i++){
			%> <tr>
			<%
			for(int j=0;j<6;j++){
				%> <th> <%=table1[i][j]%>
			<%
			}
			%> </tr>
			<%
		
	}
	%>
	
</table>
</div>
</center>
<br/>
<br/>
<h3><u>ΌΠΑ - NEWS:</u> </h3>
<BR/>
<div class="container">
			<!-- first row -->
			<div class="row row-content">
				<div class="col-xs-12">

					<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1" class="active" ></li>							
						</ol>

						<!-- Wrapper for slides -->
						<div class="carousel-inner" role="listbox">
							<div class="item active">
								<img src="images/logoEcon.jpg" alt="laptop" class="img-responsive">
								<div class="carousel-caption">
									<h2>Άρθρο του Καθ. Γ. Δουκίδη στην Οικονομική Επιθεώρηση</h2>
									<p>
									Άρθρο του καθηγητή Ηλεκτρονικού Επιχειρείν και Διευθυντή Εργαστηρίου ELTRUN, Γεωργίου Ι. Δουκίδη, δημοσιεύτηκε στο περιοδικό Οικονομική Επιθεώρηση (τεύχος Oκτωβρίου 2019).
										<a href="https://www.economia.gr/gr/journal2/blog/post?journal_blog_post_id=2182" class="btn btn-danger btn-xs">More</a>
									</p>
								</div>
							</div>
							<div class="item">
								<img src="images/FSDET.jpg" alt="mobile" class="img-responsive">
								<div class="carousel-caption">
									<h2>Πρόσκληση Εκδήλωσης Ενδιαφέροντος ΦΣΔΕΤ</h2>
									<p>
										Πρόσκληση Εκδήλωσης Ενδιαφέροντος για τους Φοιτητές του Τμήματος Διοικητικής Επιστήμης και Τεχνολογίας  (ΔΕΤ) για την Οργανωτική Επιτροπή του 17ου Φοιτητικού Συνεδρίου ΔΕΤ
										
									</p>
									<p>
										<a href="https://www.dept.aueb.gr/el/dmst/content/%CF%80%CF%81%CF%8C%CF%83%CE%BA%CE%BB%CE%B7%CF%83%CE%B7-%CE%B5%CE%BA%CE%B4%CE%AE%CE%BB%CF%89%CF%83%CE%B7%CF%82-%CE%B5%CE%BD%CE%B4%CE%B9%CE%B1%CF%86%CE%AD%CF%81%CE%BF%CE%BD%CF%84%CE%BF%CF%82-%CF%86%CF%83%CE%B4%CE%B5%CF%84" class="btn btn-danger btn-xs">More</a>
									</p>
								</div>
							</div>
						
						</div>

						<!-- Controls -->
						<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
						</a>
						<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
						</a>
						
					</div>
				</div>
			</div>
		




		<br/>
		<footer class="navbar-inverse">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<p class="text-center">&copy; Copyright 2019 ProgramME </p>
					</div>
				</div>
			</div>
		</footer>
		
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
</body>
</html>