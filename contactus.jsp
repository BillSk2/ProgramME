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
					<%if (studentin == null){%>
					<li><a href="register.jsp" id="registerbtn">
						<span class="glyphicon glyphicon-user" href="register.jsp" ></span> Register</a>
					</li>
					<li><a href="login.jsp" id="registerbtn">
						<span class="glyphicon glyphicon-log-in" href="login.jsp" ></span> Log In</a>
					</li>
					<%}%>
					<%if (studentin != null){%>
					<li><a href="program.jsp" id="mybtn">
						<span class="glyphicon glyphicon-education" href="program.jsp" ></span> My Program</a>
					</li>
					<%}%>
					<%if (studentin != null){%>
					<li><a href="mandatory.jsp" id="editbtn">
						<span class="glyphicon glyphicon-pencil" href="mandatory.jsp" ></span> Edit your program</a>
					</li>
					<%}%>
					<li><a href="contactus.jsp" id="contactusbtn">
						<span class="glyphicon glyphicon-envelope" href="contactus.jsp" ></span> Contact us</a>
					</li>
					<li><a href="gramlogin.jsp" id="officebtn">
						<span class="glyphicon glyphicon-folder-open" href="gramlogin.jsp" ></span> Front-Office</a>
					</li>
					<%if (studentin != null){%>
					<li><a href="logout.jsp" id="logoutbtn">
						<span class="glyphicon glyphicon-log-out" href="logout.jsp" ></span> Log-out</a>
					</li>
					<%}%>

					
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
			<h3> Επικοινωνήστε μαζί μας:</h3>
			<br/>
		</div>
		<div class="aboutus">
			<img src="images/afro.jpg" alt="Afroditi-Athina Agathou" class="img-thumbnail" >
			<br/>
			<h2> Afroditi-Athina Agathou <small> 8160197 </small></h2>
			<p>  <i class = "fa fa-envelope "> </i> afrodite_gr26@hotmail.com </p>
			<br/>
			<img src="images/chrys.jpg" alt="Chrysavgi Ioannidi" class="img-thumbnail">
			<br/>
			<h2> Chrysavgi Ioannidi <small> 8150037 </small></h2>
			<p>  <i class = "fa fa-envelope "> </i> chrysavgi97@gmail.com </p>
			<br/>
			<img src="images/ody.jpg" alt="Odysseas Mpletsas" class="img-thumbnail" >
			<br/>
			<h2>Odysseas Mpletsas <small> 8160084 </small></h2>
			<p>  <i class = "fa fa-envelope "> </i> bletsasodysseas@gmail.com </p>
			<br/>	
			
			<img src="images/soko.jpg" alt="Vassilis Sokolakis" class="img-thumbnail" >
			<br/>
			<h2> Vassilis Sokolakis <small> 8160119 </small></h2>
			<p>  <i class = "fa fa-envelope "> </i> billsk22@outlook.com.gr </p>
		</div>
		<br/>
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
			
			