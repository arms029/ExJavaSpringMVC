<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<c:url value="/" var="contextPath" />

	<header id="layout-header">
		<div class="clearfix container">
			<a href="${s:mvcUrl('HC#index').build()}" id="logo"> </a>
			<div id="header-content">
				<nav id="main-nav">

					<ul class="clearfix">
						<security:authorize access="hasRole('ROLE_ADMIN')">
							<li><a href="${s:mvcUrl('PC#listar').build() }">Produtos</a></li>
							<li><a href="${s:mvcUrl('PC#form').build() }">Cadastro</a></li>
						</security:authorize>
						
							<li>
								<a href="${s:mvcUrl('CCC#itens').build() }" rel="nofollow">
									<s:message code="menu.carrinho"
									arguments="${carrinhoCompras.qtde }"/>
								</a>
							</li>

							<li><a href="${s:mvcUrl('JC#index').build() }" rel="nofollow">Jojo</a></li>
							
							<li>
								<a href="#" rel="nofollow">
									<fmt:message key="menu.sobre"/>
								</a>
							</li>
								
							<li>
								<a class="idioma" href="?locale=pt_BR" rel="nofollow">
									<s:message code="menu.pt"/>
								</a>
							</li>
							<li>
								<a class="idioma" href="?locale=en_US" rel="nofollow">
									<s:message code="menu.en"/>
								</a>
							</li>
					</ul>
				</nav>
			</div>
		</div>
	</header>
	
	<nav class="categories-nav">
		<ul class="container">
			<li class="category"><a href="${s:mvcUrl('HC#index').build()}">
				<fmt:message key="navegacao.categoria.home"/></a></li>
			<li class="category"><a href="/collections/livros-de-agile">
				<fmt:message key="navegacao.categoria.agile"/></a></li>
			<li class="category"><a href="/collections/livros-de-front-end">
				<fmt:message key="navegacao.categoria.front_end"/></a></li>
			<li class="category"><a href="/collections/livros-de-games">
				<fmt:message key="navegacao.categoria.games"/></a></li>
			<li class="category"><a href="/collections/livros-de-java">
				<fmt:message key="navegacao.categoria.java"/></a></li>
			<li class="category"><a href="/collections/livros-de-mobile">
				<fmt:message key="navegacao.categoria.mobile"/></a></li>
			<li class="category"><a href="/collections/livros-desenvolvimento-web">
				<fmt:message key="navegacao.categoria.web"/></a></li>
			<li class="category"><a href="/collections/outros">
				<fmt:message key="navegacao.categoria.outros"/></a></li>
		</ul>
	</nav>