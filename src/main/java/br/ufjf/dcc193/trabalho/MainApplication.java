package br.ufjf.dcc193.trabalho;

import org.apache.catalina.Context;
import org.apache.tomcat.util.scan.StandardJarScanner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.Bean;

import br.ufjf.dcc193.trabalho.Models.Atividade;
import br.ufjf.dcc193.trabalho.Models.Membro;
import br.ufjf.dcc193.trabalho.Models.Sede;
import br.ufjf.dcc193.trabalho.Persistence.AtividadeRepository;
import br.ufjf.dcc193.trabalho.Persistence.MembroRepository;
import br.ufjf.dcc193.trabalho.Persistence.SedeRepository;

@SpringBootApplication
public class MainApplication {

	public static void main(String[] args) {
		//SpringApplication.run(MainApplication.class, args);
		ConfigurableApplicationContext ctx = SpringApplication.run(MainApplication.class, args);

		SedeRepository bancoSede = ctx.getBean(SedeRepository.class);
		MembroRepository bancoMembro = ctx.getBean(MembroRepository.class);
		AtividadeRepository bancoAtividade = ctx.getBean(AtividadeRepository.class);

		Sede sede1 = new Sede("Sudeste", "Minas Gerais", "Juiz de Fora", "Centro", 32211123, "www.sudtmg.com.br");
		Sede sede2 = new Sede("Sul", "Paraná", "Londrina", "Centro", 34511656, "www.sulprl.com.br");
		bancoSede.save(sede1);
		bancoSede.save(sede2);

		Membro membro1 = new Membro(sede1, "José da Silva", "Voluntário", "jose@gmail.com", "01/01/2015", "01/06/2017");
		Membro membro2 = new Membro(sede1, "João de Souza", "Voluntário", "joao@gmail.com", "01/01/2014", "01/06/2017");
		Membro membro3 = new Membro(sede2, "Maria Aparecida", "Cozinheira", "maria@gmail.com", "01/01/2013", "01/06/2017");
		bancoMembro.save(membro1);
		bancoMembro.save(membro2);
		bancoMembro.save(membro3);

		Atividade atividade1 = new Atividade(sede1, "Limpeza", "Telhado", "01/06/2016", "01/07/2016", 60,
				0, 0, 0);
		Atividade atividade2 = new Atividade(sede1, "Manutenção", "Eletríca", "01/06/2016", "01/10/2018", 100,
				0, 0, 0);
		Atividade atividade3 = new Atividade(sede2, "Coffe Break", "Recepção", "01/06/2016", "01/06/2017", 30,
				0, 30, 0);
		bancoAtividade.save(atividade1);
		bancoAtividade.save(atividade2);
		bancoAtividade.save(atividade3);
	}
	
	@Bean
	public TomcatServletWebServerFactory tomcatFactory() {
   		return new TomcatServletWebServerFactory() {
      @Override
      protected void postProcessContext(Context context) {
         ((StandardJarScanner) context.getJarScanner()).setScanManifest(false);
	   }};
	}

}
