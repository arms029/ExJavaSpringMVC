<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ attribute name="titulo" required="true"%>
<%@ attribute name="bodyClass" required="false"%>

<!DOCTYPE html>
<html>
<head>
<c:url value="/" var="contextPath" />
<c:url value="/resources/css/" var="cssPath" />
<meta charset="utf-8">
<title>${titulo}</title>
<link rel="stylesheet" href="${cssPath}bootstrap.min.css" >
<link rel="stylesheet" href="${cssPath}bootstrap-theme.min.css" >
<link rel="stylesheet" href="${cssPath}lista.css" >

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
</head>

<body>


<%@include file="/WEB-INF/views/cabecalhoCadastro.jsp"%>

<jsp:doBody/>


<!-- <script>
Scripts da página
</script> -->

</body>
</html>
