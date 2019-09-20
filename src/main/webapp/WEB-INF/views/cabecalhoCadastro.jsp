<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<header id="layout-header">
		<nav class="navbar navbar-inverse">
		  <div class="container">
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="${s:mvcUrl('HC#index').build() }">Casa do Código</a>
		    </div>
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		      <ul class="nav navbar-nav">
					<li><a href="${s:mvcUrl('PC#listar').build() }">Lista de Produtos</a></li>
					<li><a href="${s:mvcUrl('PC#form').build() }">Cadastro de Produtos</a></li>
		      </ul>
		      <ul class="nav navbar-nav navbar-right">
		      	<li><a href="#">
		      		<security:authentication property="principal" var="usuario"/>
		      		Usuario: ${usuario.username}
		      	</a></li>
		      </ul>
		    </div><!-- /.navbar-collapse -->
		  </div>
		</nav>
	</header>