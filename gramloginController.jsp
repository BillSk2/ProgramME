<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="ProgramME.*"%>

<%

String username = request.getParameter("username");
String password = request.getParameter("password");
FrontOfficeDAO fdao = new FrontOfficeDAO();
FrontOffice officer = null;

try {
  officer = fdao.authenticate(username, password);
  if (officer != null){
	  session.setAttribute("officer", officer);
	  %>
	  <jsp:forward page="gramhome.jsp"/>
	  <%
  }

} catch (Exception e) {
  request.setAttribute("message","Wrong username or password " + e);
  %>
  <jsp:forward page="gramlogin.jsp"/>
  <%
}
%>
