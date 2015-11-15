<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<title>Login Page</title>
</head>
<body>
	<h2>Struts2: Login Application with Annotations</h2>
	<s:form action="login.jsp" method="post">
		<s:textfield name="username" key="label.username" size="20"/>
		<s:password name="password" key="label.password" size="20"/>
		<s:submit key="label.login" align="center"/>
	</s:form>
</body>
</html>