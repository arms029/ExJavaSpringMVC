<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
	
	<title>Jojo</title>
	
	<link rel="icon" href="//cdn.shopify.com/s/files/1/0155/7645/t/177/assets/favicon.ico?11981592617154272979" type="image/ico" />
	<link href="https://plus.googlecom/108540024862647200608" rel="publisher" />
	
	<c:url value="/" var="contextPath" />
	<c:url value="/resources/css/" var="cssPath" />
	<c:url value="/resources/imagens/" var="imgPath" />
	
	<link rel="shortcut icon" href="imagens/favicon.png">
	<link rel="stylesheet" href="${cssPath}reset.css">
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Crimson+Text:400,400italic,600">
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans+Condensed:700">
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Shadows+Into+Light">
	<link rel="stylesheet" href="${cssPath}form.css" >
	<link rel="stylesheet" href="${cssPath}site.css">
	<link rel="stylesheet" href="${cssPath}index.css">
	<link rel="stylesheet" href="${cssPath}ex01.css">
</head>

<body>
	<header class="titulo-principal">
		<img class="foto-home" src="${imgPath}jotaro.pnj.jpeg"
			alt="Foto de Jotaro">
		<h1>Jotaro kujo</h1>
		<p class="subtitulo-principal">Ora ora ora ora ora ora</p>

		<ul class="palavras-home">
			<li class="palavra-home eficiencia">Ora</li>
			<li class="palavra-home boas-praticas">Ora</li>
			<li class="palavra-home codigo-limpo">Ora</li>
			<li class="palavra-home css3">Ora</li>
			<li class="palavra-home html5">Ora</li>
			<li class="palavra-home javascript">Ora</li>
			<li class="palavra-home acessibilidade">Ora</li>
			<li class="palavra-home responsivo">Ora</li>
			<li class="palavra-home otimizacoes">Ora</li>
			<li class="palavra-home agilidade">Ora</li>
			<li class="palavra-home design">Ora</li>
		</ul>

	</header>

	<section class="secao-inicio saudacao">
		<p class="saudacao">
			<span class="saudacao-inicio">Bom dia,</span> meu nome é <strong>Jotaro
				Kujo</strong> <span class="saudacao-ultima-linha">e vou quebrar a <em>sua
					cara!!!</em></span>
		</p>

		<a class="botao-index" href="#">Veja a
			lista completa de Stands!</a>

	</section>
	<section class="secao-inicio trabalhos">
		<h2>Trabalhos</h2>
		<ul>
			<li><img src="${imgPath}starPlatinum.jpg" alt="Star Platinum"></li>
			<li><img src="${imgPath}dio.jpg" alt="Dio"></li>
			<li class="joseph"><img src="${imgPath}joseph.jpg" alt="Joseph"></li>
		</ul>
		<a class="botao-index">Veja mais</a>
	</section>
	<section class="secao-inicio blog">
		<h2>Blog</h2>
		<small>últimos posts</small>
		<ol>
			<li class="mais-recente"><a>Dio Brando</a>
				<p class="inicio-post">Dio Brando, Conhecido como DIO em diante,
					é o principal antagonista de ambos Parte I: Phantom Blood e Parte
					III: Stardust Crusaders. Por sua popularidade e influência na
					cultura pop, pode-se dizer que Dio é o vilão mais popular da série.
					Originalmente um homem de origem humilde, mas a ambição
					inigualável, Dio é um vilão de pouca consciência, grande astúcia e
					uma fome insaciável de poder.</p></li>
			<li><a>Joseph joestar</a></li>
			<li><a>Jotaro Kujo</a></li>
		</ol>
	</section>


	<div class="banner-twitter"><a href="${s:mvcUrl('HC#index').build() }">Siga-me no inferno!</a></div>

	<footer>
		<h2>Vamos conversar?</h2>
		<p>
			Você pode entrar em contato comigo <a>por e-mail</a> ou pelo telefone
			<a>(12) 3456-7890</a>
		</p>
		<p>&copy; StarPlatinum.com
		<p>
	</footer>
	
</body>
</html>
