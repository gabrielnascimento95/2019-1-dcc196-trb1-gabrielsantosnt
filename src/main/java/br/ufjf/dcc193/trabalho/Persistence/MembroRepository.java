package br.ufjf.dcc193.trabalho.Persistence;

import org.springframework.data.jpa.repository.JpaRepository;
import br.ufjf.dcc193.trabalho.Models.Membro;

public interface MembroRepository extends JpaRepository<Membro, Long>{

    
} 