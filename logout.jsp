<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
session.invalidate();
%>


<!DOCTYPE html>
<html lang="en">
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title> ProgramME </title>

	<!-- automatically will redirect to login.jsp after 2 seconds -->
	<meta http-equiv="refresh" content="2;url=<%=request.getContextPath() %>/ProgramME/login.jsp" />

	<meta name="description" content="Sign out">

	<!-- Bootstrap core CSS -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/teliko.css" type="text/css" >

	</head>

<body>

	<div class="container" role="main">
		<h3> 
		<div class="alert alert-success text-center" role="alert">Η έξοδος σας πραγματοποιηθηκε με επιτυχία</div> 	<!-- thelei diorthosi css -->
		</h3>
	</div>
	<!-- /container -->

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
