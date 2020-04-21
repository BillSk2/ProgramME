<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%>
<%@ page import="ProgramME.*"%>

<%
FrontOffice officer;

if(session.getAttribute("officer")== null) {
	request.setAttribute("message","You are not authorized to access this resource. Please Login.");
%>
<jsp:forward page="gramlogin.jsp"/>
<% 
} else {
	officer = (FrontOffice)session.getAttribute("officer");
}
%>
<!DOCTYPE html>
<!-- This HTML page was written by AM 8150037 -->
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content
		must come *after* these tags -->
		<title>ProgramME</title>
		<!-- Bootstrap core CSS -->
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/teliko.css">
		
			
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
				
				    <li><a href="gramhome.jsp" id="officebtn">
						<span class="glyphicon glyphicon-folder-open" href="gramhome.jsp" ></span> Front-Office</a>
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
		
		<div class="container">
			<div class="row row-header" id="logorow">
				<div class="text-center">
					<h1> <img src="images/ME.png" class="img-fluid" alt="ProgramMe Logo"> </h1>
				</div>
			</div>
			<div class="row">
			<div class="text-center">
			   <h2> <b> Εισαγωγή Μαθήματος </b> </h2>
			</div>
			</div>
			<div class="row">
			<div class="top-buffer">
				<form class="my-form" class="form-horizontal" name="InserCourse" method="POST" action="InsertCourseController.jsp">
					<div class="form-group">
							<label>Όνομα:</label>
							<input type="text" name="name" placeholder="Enter your name">
						</div>
						<div class="form-group">
							<label> Κωδικός Μαθήματος:</label>
							<input type="number" min="1000" max="9999" name="code" placeholder="Enter the Course Code">
						</div>
						<div class="form-group">
							<label> Εξάμηνο:</label>
							<input type="number" min="1" name="semester" placeholder="Enter the semester">
						</div>
						<div class="form-group">
							<label> Διδάσκων:</label>
							<input type="text" name="ProfessorName" placeholder="Enter Professor's name">
						</div>
						<div class="form-group">
						    <label> Τύπος Μαθήματος:</label>
							Υποχρεωτικό<input type="radio" name="courseType" value="1" checked>
							Κατεύθυνσης<input type="radio" name="courseType" value="2">
							Επιλογής<input type="radio" name="courseType" value="3">
						</div>							
							<input class="button btn-aueb" type="submit" value="Εισαγωγή" name=""></a>
						<br/>				
						<br/>
						
					</form>
				</div>
			</div>
		</div>
		<br/>
		
			
		</div><!-- /.container -->
		
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
