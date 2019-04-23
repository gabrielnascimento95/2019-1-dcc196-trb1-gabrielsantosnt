package br.ufjf.dcc193.trabalho.persistence;

import org.springframework.data.jpa.repository.JpaRepository;

import br.ufjf.dcc193.trabalho.model.Atividade;;

/**
 * AtivadadeRepository
 */
public interface AtividadeRepository extends JpaRepository<Atividade,Long>{

    
}