package br.ufjf.dcc193.trabalho;

import java.util.List;

import org.apache.catalina.Context;
import org.apache.tomcat.util.scan.StandardJarScanner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.Bean;

import br.ufjf.dcc193.trabalho.model.Atividade;
import br.ufjf.dcc193.trabalho.model.Membro;
import br.ufjf.dcc193.trabalho.model.Sede;
import br.ufjf.dcc193.trabalho.persistence.AtividadeRepository;
import br.ufjf.dcc193.trabalho.persistence.MembroRepository;
import br.ufjf.dcc193.trabalho.persistence.SedeRepository;

@SpringBootApplication
public class MainApplication {

	public static void main(String[] args) {
		ConfigurableApplicationContext ctx = SpringApplication.run(MainApplication.class, args);
		
		SedeRepository repositorioSede = ctx.getBean(SedeRepository.class);
		MembroRepository repositorioMembro = ctx.getBean(MembroRepository.class);
		AtividadeRepository repositorioAtividade = ctx.getBean(AtividadeRepository.class);

		
		List<Sede> sedes = repositorioSede.findAll();

		for (Sede sede : sedes) {
			
			System.err.println(sede.toString());
		}

		List<Membro> membros = repositorioMembro.findAll();

		for (Membro membro : membros) {
			System.err.println(membro.toString());
		}

		List<Atividade> atividades = repositorioAtividade.findAll();

		for (Atividade atividade : atividades) {
			System.err.println(atividade.toString());
		}
		
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
