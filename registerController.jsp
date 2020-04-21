<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="ProgramME.*" %>


<% request.setCharacterEncoding("utf-8"); %>

<%
String name = request.getParameter("name");
String surname = request.getParameter("surname");
String am = request.getParameter("am");
String email = request.getParameter("email");
String password = request.getParameter("password");
String confirm = request.getParameter("confirm");

String flag = "true";
String flagName = "true";
String flagSurname = "true";
String flagAm = "true";
String flagEmail = "true";
String flagPassword= "true";
String flagConfirm= "true";


if(name.length() < 2) {
	flagName = "false";
	flag = "false";
}
if(surname.length() < 3) {
	flagSurname = "false";
	flag = "false";
}
if(am.length() != 7) {
	flagAm = "false";
	flag = "false";
}
if(email == null) {
	flagEmail = "false";
	flag = "false";
}
if(password.length() < 4) {
	flagPassword = "false";
	flag = "false";
}
if(!(password.equals(confirm))) {
	flagConfirm = "false";
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
					<li><a href="register.jsp" id="registerbtn">
						<span class="glyphicon glyphicon-user" href="register.jsp" ></span> Register</a>
					</li>
					<li><a href="program.jsp" id="mybtn">
						<span class="glyphicon glyphicon-education" href="program.jsp" ></span> My Program</a>
					</li><li><a href="mandatory.jsp" id="editbtn">
						<span class="glyphicon glyphicon-pencil" href="mandatory.jsp" ></span> Edit your program</a>
					</li>
					<li><a href="contactus.jsp" id="contactusbtn">
						<span class="glyphicon glyphicon-envelope" href="contactus.jsp" ></span> Contact us</a>
					</li>
					<li><a href="gramhome.jsp" id="officebtn">
						<span class="glyphicon glyphicon-folder-open" href="gramhome.jsp" ></span> Front-Office</a>
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
	StudentDAO stdao = new StudentDAO();
	Student student = new Student(name, surname, am, email, password);
	Student student2 = stdao.authenticate(student);
	if (student2 == null) { 
%>
		<div class="alert alert-danger text-center" role="alert">
		System problem: The user is not registered in the database
		</div>
<%	}
	boolean  mpike =stdao.studentvalues(student2);
	if (!mpike){
		throw new Exception("kako insert");
	}

%>
	
               <div class="page-header">
				<h1> H εγγραφή σου ολοκληρώθηκε με επιτυχία!</h1>			
				<b> Όνοματεπώνυμο Φοιτητή: </b><%=name+" "+surname%><br>
				<b> AM: </b><%=am%><br>
				<b> Email: </b><%=email%><br>
			   </div>
			
<%
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
				    <li> Το όνομα είναι λάθος , πρέπει να έχει τουλάχιστον 2 χαρακτήρες </li>
				 <% } %>
				 
				 <%  
				 if (flagSurname=="false") {
				 %>
				    <li> Το επίθετο είναι λάθος , πρέπει να έχει τουλάχιστον 3 χαρακτήρες </li>
				 <% } %>
				 
				 <%  
				 if (flagAm=="false") {
				 %>
				    <li>Ο αριθμός μητρώου είναι λάθος, πρέπει να είναι 7ψήφιος αριθμός</li> 
					
				<% } %>
				 
				<%  
				 if (flagEmail=="false") {
				%>
				    <li>Συμπληρώστε το πεδίο email</li> 
					
				<% } %>
				
				<%  
				 if (flagPassword=="false") {
				 %>
				    <li>Ο κωδικός πρόσβασης δεν είναι έγκυρος, πρέπει να  έχει τουλάχιστον 4 χαρακτήρες </li> 
					
				<% } %>
				<%  
				 if (flagConfirm=="false") {
				 %>
				    <li>Ο κωδικός πρόσβασης και η επιβεβαίωση κωδικού δεν ταιριάζουν</li> 
					
				<% } %>
				
				</ol>
			  </div>
				
			</div>
			<form action="register.jsp">
				<button type="submit" class="btn btn-info">Πίσω στη Φόρμα Εγγραφής</button>
			</form>
			<br/>
<% 
}
%>
     </div>
        <footer class="navbar-inverse">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<p class="text-center">&copy; Copyright 2019 ProgramME </p>
					</div>
				</div>
			</div>
		</footer>
		
	</body>
</html>