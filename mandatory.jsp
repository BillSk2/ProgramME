<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="ProgramME.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%
Student studentin = (Student)session.getAttribute("student"); 
if (studentin == null) {
	request.setAttribute("message","You are not authorized to access this resource. Please login.");
%> 
<jsp:forward page="login.jsp"/>
<%
}
%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content
		must come *after* these tags -->
		<title> Υποχρεωτικά</title>
		<!-- Bootstrap core CSS -->
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/teliko.css" type="text/css" >
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
					
					<% if (studentin != null){%>
					<li><a href="program.jsp" id="mybtn">
						<span class="glyphicon glyphicon-education" href="program.jsp" ></span> My Program</a>
					</li><%} %> <% if (studentin != null){ %>
					<li><a href="mandatory.jsp" id="editbtn">
						<span class="glyphicon glyphicon-pencil" href="mandatory.jsp" ></span> Edit your program</a>
					</li> <% } %>
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
			<h1> <img src="images/ME.png" alt="programMe logo"</h1>
			<br/>
			
			<h3> Επιλέξτε Υποχρεωτικά Μαθήματα  </h3>
			<br/>
			<form method ="POST" action="mandatoryController.jsp">
			<%
			int semestercount = 1;
			for (semestercount = 1; semestercount <=8 ; semestercount++){ %>
				<div class="block3">
				<h4><u><%= semestercount %>ο Εξάμηνο</u> </h4>
				<%
				CourseDAO cDAO = new CourseDAO ();
				List<Course> courses1 =  new ArrayList<Course>();
				courses1 = cDAO.getCourses(1 ,semestercount);
				
				int counter = 0;
				for (Course course : courses1) { 
					counter++;%>
					<p><input type="checkbox" name = "coursecheck" value = "<%= course.getCourseID() %>"><%= course.getCourseName() %></p>
					
				<%} if (counter == 0) { %>
					<b> ΚΑΝΕΝΑ ΜΑΘΗΜΑ ΑΥΤΟ ΤΟ ΕΞΑΜΗΝΟ </b>
				<% }
				%>
				</div>
				
			<%
			}
			%>

			
			
			<button type="submit" class="button" style="width:200px" formaction="mandatoryController.jsp" >Submit</button>

			</form>
			
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