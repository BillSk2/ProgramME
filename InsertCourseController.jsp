<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="ProgramME.*"%>
<%@ page import="java.util.List"%>

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
String code = request.getParameter("code");
String semester = request.getParameter("semester");
String ProfessorName = request.getParameter("ProfessorName");
String courseType = request.getParameter("courseType");

String flag = "true";
String flagName = "true";
String flagCode = "true";
String flagSemester = "true";
String flagProfessor = "true";
String flagCourseType = "true";

if(name.length() < 5) {
	flagName = "false";
	flag = "false";
}
if(code.length() != 4) {
	flagCode = "false";
	flag = "false";
}
if(Integer.parseInt(semester) < 1 || Integer.parseInt(semester)> 8) {
	flagSemester = "false";
	flag = "false";
}
if(ProfessorName.length() < 5) {
	flagProfessor = "false";
	flag = "false";
}

if(Integer.parseInt(courseType) < 1 || Integer.parseInt(courseType) > 3) {
	flagCourseType = "false";
	flag = "false";
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
<%
if(flag=="true") {
%>
               <div class="page-header">
				<h1> H εγγραφή ολοκληρώθηκε επιτυχώς</h1>
				
				  
				
			
				<b> Όνομα Μαθήματος: </b><%=name%><br>
				<b> Κωδικός Μαθήματος: </b><%=code%><br>
				<b> Εξάμηνο: </b><%=semester %><br>
				<b> Καθηγήτης: </b><%=ProfessorName %><br>
			  </div>
<%
FrontOfficeDAO frontOfficeD = new FrontOfficeDAO();
Course course = new Course(Integer.parseInt(code), name, Integer.parseInt(semester), Integer.parseInt(courseType), ProfessorName, "D", officer.getId());
frontOfficeD.insertCourse(course);
%>
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
				    <li>Το όνομα "<%=name%>" είναι λάθος , πρέπει να έχειτουλάχιστον 5 χαρακτήρες </li>
				 <% } %>
				 
				 <%  
				 if (flagCode=="false") {
				 %>
				    <li>Ο κωδικός "<%=code%>" είναι λάθος, πρέπει να είναι 4ψήφιος αριθμός</li> 
					
				<% } %>
				
				<%  
				 if (flagSemester=="false") {
				%>
				    <li>Το εξάμηνο "<%=semester%>" είναι λάθος, πρέπει να είναι μονοψήφιος ή 2ψήφιος αριθμός</li> 
					
				<% } %>
				
				<%  
				 if (flagProfessor=="false") {
				%>
				    <li>Το όνομα καθηγητή "<%=ProfessorName%>" είναι λάθος, πρέπει να έχειτουλάχιστον 5 χαρακτήρες</li> 
					
				<% } %>
				
				<%  
				 if (flagCourseType=="false") {
				 %>
				    <li>Μη παίζετε με τα radio buttons!</li>
				 <% } %>
					
				</ol>
			  </div>
				
				
			</div>
			<form action="InsertCourse.jsp">
				<button type="submit" class="btn btn-info">Πίσω στη Φόρμα</button>
			</form>
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
						<a href="InsertCourse.jsp" class="btn btn-aueb btn-lg">Νέο Μάθημα </a>
					    </div>
					</div>
					
				</div>
	     </div>
     </div>
	 <br>
	 
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

	
			
			
			
		