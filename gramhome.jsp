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
		<title>ProgramME</title>
		<!-- Bootstrap core CSS -->
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/teliko.css" type="text/css">
		
				
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
					<H1><img src="images/ME.png" alt="ProgramMe Logo"></H1>
			<div class="text-center">
			   <h2> <b> Εισαγωγή Στοιχείων στο Σύστημα </b> </h2>
			</div>
			<div class="row top-buffer">
				<a href="InsertCourse.jsp" class="btn btn-aueb btn-lg">Εισαγωγή Μαθημάτων </a>
				<a href="InsertStudent.jsp" class="btn btn-aueb btn-lg">Εισαγωγή Φοιτητών </a>
				<a href="insertTimetable.jsp" class="btn btn-aueb btn-lg">Εισαγωγή Ωραρίων </a>
			</div>
		</div>
		
			
		</div><!-- /.container -->`
		<!-- footer -->
		<footer class="navbar-fixed-bottom">
			<div class="container">
				<div class="row">             
					<div class="col-xs-12">
						<p class="text-center">&copy; Copyright 2019 ProgramME</p>
					</div>
				</div>
			</div>
		</footer>
		<!-- End footer -->
	
		<!-- JavaScript files -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
	</body>
</html>
