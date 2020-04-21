<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
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

String name = request.getParameter("name");
String surname = request.getParameter("surname");
String amfield = request.getParameter("AMfield");
String admissionyear = request.getParameter("admissionyear");

String flag = "true";
String flagName = "true";
String flagSurname = "true";
String flagAM = "true";
String flagYear = "true";


if(name.length() < 3) {
	flagName = "false";
	flag = "false";
}
if(surname.length() < 5) {
	flagSurname = "false";
	flag = "false";
}
if(amfield.length()!=7) {
	flagAM = "false";
	flag = "false";
}
if(admissionyear.length() !=4) {
	flagYear = "false";
	flag = "false";
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
<%
if(flag=="true") {
%>
               <div class="page-header">
				<h1> H εγγραφή ολοκληρώθηκε επιτυχώς!</h1>
				
				  
				
			
				<b> Όνομα Φοιτητή: </b><%=name%><br>
				<b> Επώνυμο Φοιτητή: </b><%=surname%><br>
				<b> AM: </b><%=amfield  %><br>
				<b>΄ΕτοςΕισαγωγής: </b><%= admissionyear%><br>
				
			  </div>
<%
FrontOfficeDAO FrontOfficeD = new FrontOfficeDAO();
Student student = new Student( name, surname, amfield, officer.getId(), Integer.parseInt(admissionyear));
FrontOfficeD.insertStudent(student);
} else {
%>
			<div class="page-header">
				<h1>Λάθος Καταχωρημένα Στοιχεία</h1>
				<br>
			    <div class="alert alert-danger" role="alert" style="text-align:left;">
			    <ol>
				 <%  
				 if (flagName=="false") {
				 %>
				    <li>Το όνομα "<%=name%>" είναι λάθος , πρέπει να έχειτουλάχιστον 3 χαρακτήρες </li>
				 <% } %>
				 
				 <%  
				 if (flagSurname=="false") {
				 %>
				    <li>Το επίθετο "<%=surname%>" είναι λάθος , πρέπει να έχειτουλάχιστον 5 χαρακτήρες </li> 
					
				<% } %>
				
				<%  
				 if (flagAM =="false") {
				%>
				    <li>Το ΑΜ "<%=amfield%>" είναι λάθος, πρέπει να αποτελείται απο 7 ψηφία</li> 
					
				<% } %>
				
				<%  
				 if (flagYear=="false") {
				%>
				    <li>Το έτος "<%= admissionyear%>" είναι λάθος, πρέπει να είναι 4ψήφιος αριθμός</li> 
					
				<% } %>
				
				
				
					
				</ol>
			  </div>
		
		
	
		</div>
	</div>
		
<% 
}
%>	

        <div class="row top-buffer">
				<div class="col-xs-12">
					<div class="col-xs-6 ">
						<div class="text-right">
							<a href="gramhome.jsp" class="btn btn-aueb btn-lg"> Πίσω στην Αρχική </a>
						</div>
					</div>
					<div class="col-xs-6">
					   <div class="text-left">
						<a href="InsertStudent.jsp" class="btn btn-aueb btn-lg">Νέος Φοιτητής </a>
					    </div>
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
