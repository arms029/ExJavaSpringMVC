<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<tags:pageTemplateCadastro titulo="Lista de produtos">
		
		
		
	<section id="index-section" class="container middle">
		
				<div class="container">
				<h1>Lista de Produtos</h1>

				<div>${sucesso}</div>
				<div>${pagamentoSucesso}</div>
				<div>${erro}</div>
			
				<table class="table table-bordered table-striped table-hover">
					<tr>
						<th>Título</th>
						<th>Descrição</th>
						<th>Preços</th>
						<th>Páginas</th>
						<th>Excluir</th>
					</tr>
					
					<c:forEach items="${produtos}" var="produto">
						<tr>
							<td><a
								href="${s:mvcUrl('PC#detalhe').arg(0,produto.id).build() }">${produto.titulo}</a>
							</td>
							<td>${produto.descricao}</td>
							<td>${produto.precos}</td>
							<td>${produto.paginas}</td>
							<td>
							<form:form action="${s:mvcUrl('PC#remover').arg(0,produto.id).build()}">
								<input type="submit" class="checkout" name="checkout" value="Deletar" />
							</form:form>
						</td>
						</tr>
					</c:forEach>
					
				</table>
			</div>
	</section>



</tags:pageTemplateCadastro>