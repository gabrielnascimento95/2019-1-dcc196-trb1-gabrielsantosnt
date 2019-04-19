package br.ufjf.dcc193.trabalho.Persistence;

import org.springframework.data.jpa.repository.JpaRepository;

import br.ufjf.dcc193.trabalho.Models.Atividade;

public interface AtividadeRepository extends JpaRepository<Atividade, Long>{

    
} 