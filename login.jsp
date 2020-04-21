<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%>
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
					<li><a href="register.jsp" id="registerbtn">
						<span class="glyphicon glyphicon-user" href="register.jsp" ></span> Register</a>
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
			<h3> Log-in to our platform: </h3>
			<br/>
		   <form class="my-form" class="form-horizontal"  method="post" action="loginController.jsp" >
				<div class="form-group">
				<label>AM:</label>
					<input type="text" name="am" placeholder="Enter your am">
				</div>
				<div class="form-group">
				<label>Password:</label>
					<input type="Password"  name="password" placeholder="Enter your password">
				</div>
				<div class="form-group">
				<label>
				<input type="checkbox" checked="checked" name="remember"> Remember me
				</label>
				</div>
				 <div >
				<button type="submit" class="button" style="width:200px" formaction="loginController.jsp" >Submit</button>
			     </div>
				<br/>				
				<br/>
				<div class="form-group">
				<span class="psw">Forgot your <a href="contactus.jsp">password?</a></span>
				</div>
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