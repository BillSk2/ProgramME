<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="ProgramME.*"%>

<% 
Student studentin = (Student)session.getAttribute("student"); 
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
					<li><a href="login.jsp" id="registerbtn">
						<span class="glyphicon glyphicon-log-in" href="login.jsp" ></span> Log In</a>
					</li>
					<%if (studentin != null){%>
					<li><a href="program.jsp" id="mybtn">
						<span class="glyphicon glyphicon-education" href="program.jsp" ></span> My Program</a>
					</li><%}%> <%if (studentin != null){%> <li><a href="mandatory.jsp" id="editbtn">
						<span class="glyphicon glyphicon-pencil" href="mandatory.jsp" ></span> Edit your program</a>
					</li> <%}%> 
					
					<li><a href="contactus.jsp" id="contactusbtn">
						<span class="glyphicon glyphicon-envelope" href="contactus.jsp" ></span> Contact us</a>
					</li>
					<li><a href="gramlogin.jsp" id="officebtn">
						<span class="glyphicon glyphicon-folder-open" href="gramlogin.jsp" ></span> Front-Office</a>
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
		
			<% if(request.getAttribute("message") != null) { %>
			<div class="alert alert-danger text-center" role="alert"><%=(String)request.getAttribute("message") %></div>
			<% } %>
		
			<h1> <img src="images/ME.png" alt="programMe logo"</h1>
			<h3> Create your account: </h3>
			<br/>
			<form class="my-form" class="form-horizontal" name="register" method="POST" action="registerController.jsp">
				<div class="form-group">
				<label>Όνομα:</label>
					<input type="text" name=name placeholder="Enter your name">
				</div>
				<div class="form-group">
				<label>Επώνυμο:</label>
					<input type="text" name=surname placeholder="Enter your surname">
				</div>
				<div class="form-group">
				<label>Aριθμός Mητρώου:</label>
					<input type="text" name=am placeholder="8XXXXXX">
				</div>
				<div class="form-group">
				<label>Email:</label>
					<input type="Email" name=email placeholder="Enter your email">
				</div>
				<div class="form-group">
				<label>Κωδικός Πρόσβασης:</label>
					<input type="Password"  name="password" placeholder="Enter your password">
				</div>
				<div class="form-group">
				<label>Επιβεβαίωση κωδικού πρόσβασης:</label>
					<input type="Password"  name="confirm" placeholder="Enter the same password">
				</div>
				<br/>
				 <div >
				<button type="submit" class="button" style="width:200px" formaction="registerController.jsp" >Submit</button>
			     </div>

				<br/>				
				<br/>
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
			
			
			
			
			
			
			