<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<c:url value="/" var="contextPath" />
<c:url value="/resources/css/" var="cssPath" />
<meta charset="utf-8">

<title>BookStore</title>
<link rel="stylesheet" href="${cssPath}bootstrap.min.css" >
<link rel="stylesheet" href="${cssPath}bootstrap-theme.min.css" >
<link rel="stylesheet" href="${cssPath}form.css" >

</head>
<body>

 

	<div class="container">
	
	<h1>Login nível PUTIN</h1>
	
		<form:form servletRelativeAction="/login" method="POST">
		
			<div class="form-group">
				<label >E-mail</label> 
				<input name="username" type="text" class="form-control" />
			</div>
			<div class="form-group">
				<label>Senha</label>
				<input type="password" name="password" class="form-control" />
			</div>
			<button  type="submit" class="btn btn-primary">Logar</button>
		</form:form>
	</div>

</body>
</html>