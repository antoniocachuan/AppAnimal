<%-- 
    Document   : error
    Created on : 05/10/2013, 04:36:48 PM
    Author     : Gustavo Coronel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>JSP Page</title>
	</head>
	<body>
		<h2>ERROR</h2>
		<p style="background-color: red; color: white;">${requestScope.error}</p>
	</body>
</html>
