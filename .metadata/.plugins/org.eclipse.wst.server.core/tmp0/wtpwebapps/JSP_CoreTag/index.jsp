<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:set var="age" value="${21}"/>
	<c:if test="${age<30}">
		<p>Ok</p>
	</c:if>
	<a href="<c:url value="http://www.google.vn"/>">Click</a><br>
	<c:set var="age1" value="${21}"/>
	<c:choose>
		<c:when test="${age<0}">No</c:when>
		<c:when test="${age>20}">Yes</c:when>
		<c:otherwise>No cmt...</c:otherwise>
	</c:choose>
	<%
		Random rd=new Random();
		int random=rd.nextInt(10);
	%>
	<h1>Random value: <%=random %></h1>
</body>
</html>