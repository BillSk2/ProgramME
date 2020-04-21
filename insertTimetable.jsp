<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%>
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

FrontOfficeDAO frontOfficeD = new FrontOfficeDAO();
List<Course> courses = frontOfficeD.getCourses();
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
			   <h2> <b> Εισαγωγή Ωραρίων </b> </h2>
			</div>
			</div>
			<div class="row">
				<form class="my-form" class="form-horizontal" name="InsertCourse" method="POST" action="insertTimetableControler.jsp">
					<div class="form-group">
							<label>Μάθημα</label>
							<select name="code">
								<option disabled selected style="display:none;">Επιλογή μαθήματος</option>
<%
							for(int i=0; i<courses.size();i++) { 
%>
								<option value=<%=courses.get(i).getCourseID()%>><%=courses.get(i).getCourseName()%></option>
<%
}
%>
							</select>
						</div>
						<div class="form-group">
							<table class="table table-striped table-bordered">
								<thead>
									<tr class="bg-danger">
										<th>Timeslot</th>
										<th>Δευτέρα</th>
										<th>Τρίτη</th>
										<th>Τετάρτη</th>
										<th>Πέμπτη</th>
										<th>Παρασκευή</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="bg-danger">9-11</td>
										<td><input type="checkbox" name="slot" value="1"></td>
										<td><input type="checkbox" name="slot" value="2"></td>
										<td><input type="checkbox" name="slot" value="3"></td>
										<td><input type="checkbox" name="slot" value="4"></td>
										<td><input type="checkbox" name="slot" value="5"></td>
									</tr>
									<tr>
										<td class="bg-danger">11-1</td>
										<td><input type="checkbox" name="slot" value="6"></td>
										<td><input type="checkbox" name="slot" value="7"></td>
										<td><input type="checkbox" name="slot" value="8"></td>
										<td><input type="checkbox" name="slot" value="9"></td>
										<td><input type="checkbox" name="slot" value="10"></td>
									</tr>
									<tr>
										<td class="bg-danger">1-3</td>
										<td><input type="checkbox" name="slot" value="11"></td>
										<td><input type="checkbox" name="slot" value="12"></td>
										<td><input type="checkbox" name="slot" value="13"></td>
										<td><input type="checkbox" name="slot" value="14"></td>
										<td><input type="checkbox" name="slot" value="15"></td>
									</tr>
									<tr>
										<td class="bg-danger">3-5</td>
										<td><input type="checkbox" name="slot" value="16"></td>
										<td><input type="checkbox" name="slot" value="17"></td>
										<td><input type="checkbox" name="slot" value="18"></td>
										<td><input type="checkbox" name="slot" value="19"></td>
										<td><input type="checkbox" name="slot" value="20"></td>
									</tr>
									<tr>
										<td class="bg-danger">5-7</td>
										<td><input type="checkbox" name="slot" value="21"></td>
										<td><input type="checkbox" name="slot" value="22"></td>
										<td><input type="checkbox" name="slot" value="23"></td>
										<td><input type="checkbox" name="slot" value="24"></td>
										<td><input type="checkbox" name="slot" value="25"></td>
									</tr>
									<tr>
										<td class="bg-danger">7-9</td>
										<td><input type="checkbox" name="slot" value="26"></td>
										<td><input type="checkbox" name="slot" value="27"></td>
										<td><input type="checkbox" name="slot" value="28"></td>
										<td><input type="checkbox" name="slot" value="29"></td>
										<td><input type="checkbox" name="slot" value="30"></td>
									</tr>
								</tbody>
							</table>
						</div>
							<input class="button btn-aueb" type="submit" value="Εισαγωγή" name=""></a>
						<br/>				
						<br/>
						
					</form>
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
