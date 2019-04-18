package br.ufjf.dcc193.trabalho;

import java.util.ArrayList;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


/**
 * Atividade
 */
public class Atividade {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private long id;
    Long idSede;
    String titulo;
    String descricao;
    String dataInicio;
    String dataFim;
    Float numHoras;
    ArrayList listcategorias = new ArrayList<Categorias>();

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
     * @return the idSede
     */
    public Long getIdSede() {
        return idSede;
    }

    /**
     * @param idSede the idSede to set
     */
    public void setIdSede(Long idSede) {
        this.idSede = idSede;
    }

    /**
     * @return the titulo
     */
    public String getTitulo() {
        return titulo;
    }

    /**
     * @return the descricao
     */
    public String getDescricao() {
        return descricao;
    }

    /**
     * @return the dataInicio
     */
    public String getDataInicio() {
        return dataInicio;
    }

    /**
     * @return the dataFim
     */
    public String getDataFim() {
        return dataFim;
    }

    /**
     * @return the numHoras
     */
    public Float getNumHoras() {
        return numHoras;
    }

    /**
     * @return the listcategorias
     */
    public ArrayList getListcategorias() {
        return listcategorias;
    }

    /**
     * @param listcategorias the listcategorias to set
     */
    public void setListcategorias(ArrayList listcategorias) {
        this.listcategorias = listcategorias;
    }

}