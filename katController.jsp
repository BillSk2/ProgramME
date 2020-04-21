<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="ProgramME.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%


Student studentin = (Student)session.getAttribute("student"); 
  
String[] values= request.getParameterValues("coursecheck");
CourseDAO cDAO = new CourseDAO();
if ( values == null) { %>
	<jsp:forward page="free.jsp"></jsp:forward> 
	<%
	} else {
		cDAO.checkedInsert(values,studentin);
	%>
	<jsp:forward page="free.jsp"></jsp:forward>
	<%
	} 



	%>

