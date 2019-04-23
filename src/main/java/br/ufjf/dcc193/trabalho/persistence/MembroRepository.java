package br.ufjf.dcc193.trabalho.persistence;

import org.springframework.data.jpa.repository.JpaRepository;

import br.ufjf.dcc193.trabalho.model.Membro;

/**
 * MembroRepository
 */
public interface MembroRepository extends JpaRepository<Membro,Long>{

    
}