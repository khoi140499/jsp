<%@page import="com.sun.java_cup.internal.runtime.Scanner"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="i" begin="1" end="10" step="2">
		Item<c:out value="${i}">
		</c:out><br>
	</c:forEach><br>
	<c:forTokens items="Hoang,Dang,Khoi" delims="," var="name">
		Name: <c:out value="${name}"></c:out><br>
	</c:forTokens><br>
	<c:set var="name" scope="session" value="${100}"/>
		Name 1: <c:out value="${name}"/>
	<c:catch var="catchExeption">
			<% int i=5/0; %>
	</c:catch>
	<c:if test="${catchExeption != null}" >
	    	<p> This Exeption is: ${catchExeption}<br>
	    	This is an Exeption: ${catchExeption.message}</p>
	<p>
		<%
			for(int i=0;i<9;i++){
				out.println("Item"+i);
			}
		%>
	</p>
 </c:if>	
</body>
</html>