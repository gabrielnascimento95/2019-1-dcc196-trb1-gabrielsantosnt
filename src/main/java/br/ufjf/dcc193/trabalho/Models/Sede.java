package br.ufjf.dcc193.trabalho.Models;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import java.util.ArrayList;
import java.util.List;


/**
 * Sede
 */
@Entity
public class Sede{
    @Id
    @GeneratedValue(strategy = GenerationType.TABLE)
    private Long id;
    private String nome;
    private String estado;
    private String cidade;
    private String bairro;
    private Integer telefone;
    private String site;
    @OneToMany(cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Membro> membros;
    @OneToMany(cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Atividade> atividades;


    public Sede(){

    }

    public Sede(String nome, String estado, String cidade, String bairro, Integer telefone, String site){
        this.nome = nome;
        this.estado = estado;
        this.cidade = cidade;
        this.bairro = bairro;
        this.telefone = telefone;
        this.site = site;
    }

    /**
     * @return the id
     */
    public long getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(long id) {
        this.id = id;
    }
    
    /**
     * @return the nome
     */
    public String getNome() {
        return nome;
    }

    /**
     * @return the estado
     */
    public String getEstado() {
        return estado;
    }

    /**
     * @return the cidade
     */
    public String getCidade() {
        return cidade;
    }

    /**
     * @return the bairro
     */
    public String getBairro() {
        return bairro;
    }

    /**
     * @return the telefone
     */
    public Integer getTelefone() {
        return telefone;
    }

    /**
     * @return the site
     */
    public String getSite() {
        return site;
    }

    /**
     * @param nome the nome to set
     */
    public void setNome(String nome) {
        this.nome = nome;
    }

    /**
     * @param estado the estado to set
     */
    public void setEstado(String estado) {
        this.estado = estado;
    }

    /**
     * @param cidade the cidade to set
     */
    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    /**
     * @param bairro the bairro to set
     */
    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    /**
     * @param site the site to set
     */
    public void setSite(String site) {
        this.site = site;
    }

    /**
     * @param telefone the telefone to set
     */
    public void setTelefone(Integer telefone) {
        this.telefone = telefone;
    }

    @Override
    public String toString() {
        return super.toString();
    }

}