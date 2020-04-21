<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="ProgramME.*" %>


<%

String am = request.getParameter("am");
String password = request.getParameter("password");
StudentDAO stdao = new StudentDAO();
Student student ;

try {
  student = stdao.authenticatelogin(am, password);
if (student != null){
	  session.setAttribute("student", student);
	  %>
	  <jsp:forward page="program.jsp"/>
	  <%
  }

} catch (Exception e) {
  request.setAttribute("message","Wrong am or password " );
  %>
  <jsp:forward page="login.jsp"/>
  <%
}
%>
  
  
  
  
  
  
  
  
  
  

