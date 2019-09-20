package br.com.casadocodigo.loja.daos;

import java.math.BigDecimal;
import java.util.List;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import br.com.casadocodigo.loja.builders.ProdutoBuilder;
import br.com.casadocodigo.loja.configuracoes.DataSourceConfigurationTest;
import br.com.casadocodigo.loja.configuracoes.JPAConfiguration;
import br.com.casadocodigo.loja.models.Produto;
import br.com.casadocodigo.loja.models.TipoPreco;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes={JPAConfiguration.class, ProdutoDAO.class, DataSourceConfigurationTest.class})
@ActiveProfiles("test")
public class ProdutoDAOTest {
	
	@Autowired
	private ProdutoDAO produtoDao;
	
	@Test
	@Transactional
	public void SomarTodosLivrosPorTipoPreco() {

		List<Produto> livrosImpressos = ProdutoBuilder
				.newProduto(TipoPreco.IMPRESSO, BigDecimal.TEN)
				.more(3).buildAll();
		
		List<Produto> livrosEbook = ProdutoBuilder
				.newProduto(TipoPreco.EBOOK, BigDecimal.TEN)
				.more(3).buildAll();

		List<Produto> livrosCombo = ProdutoBuilder
				.newProduto(TipoPreco.COMBO, BigDecimal.ZERO)
				.more(3).buildAll();

		livrosImpressos.stream().forEach(produtoDao::gravar);
		livrosEbook.stream().forEach(produtoDao::gravar);
		livrosCombo.stream().forEach(produtoDao::gravar);

		BigDecimal valor = produtoDao.somaPrecosPorTipoPreco(TipoPreco.EBOOK);
		Assert.assertEquals(new BigDecimal(40).setScale(2), valor);

	}
}
