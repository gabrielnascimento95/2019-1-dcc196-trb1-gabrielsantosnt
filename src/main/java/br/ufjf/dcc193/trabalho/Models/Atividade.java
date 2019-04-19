package br.ufjf.dcc193.trabalho.Models;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;


/**
 * Atividade
 */
@Entity
public class Atividade implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    private Long idAtividade;
    Sede sede;
    String titulo;
    String descricao;
    String dataInicio;
    String dataFim;
    private int horaAssistencial;
    private int horaJuridica;
    private int horaExecutiva;
    private int horaFinanceira;

    public Atividade(String titulo, String descricao, String data_inicio, String data_fim, int hora_assistencial,
    int hora_juridica, int hora_executiva, int hora_financeira){
        this.titulo = titulo;
        this.descricao = descricao;
        this.dataInicio = data_inicio;
        this.dataFim = data_fim;
        this.horaAssistencial = hora_assistencial;
        this.horaJuridica = hora_juridica;
        this.horaExecutiva = hora_executiva;
        this.horaFinanceira = hora_financeira;
    }

    public Atividade(Sede sede, String titulo, String descricao, String data_inicio, String data_fim,
    int hora_assistencial, int hora_juridica, int hora_executiva, int hora_financeira){
        this.sede = sede;
        this.titulo = titulo;
        this.descricao = descricao;
        this.dataInicio = data_inicio;
        this.dataFim = data_fim;
        this.horaAssistencial = hora_assistencial;
        this.horaJuridica = hora_juridica;
        this.horaExecutiva = hora_executiva;
        this.horaFinanceira = hora_financeira;
    }

    /**
     * @return the id
     */
    public long getId() {
        return idAtividade;
    }

    /**
     * @param id the id to set
     */
    public void setId(long id) {
        this.idAtividade = id;
    }

    /**
     * @return the idSede
     */
    public Sede getSede() {
        return sede;
    }

    /**
     * @param idSede the idSede to set
     */
    public void setSede(Sede sede) {
        this.sede = sede;
    }

    /**
     * @return the titulo
     */
    public String getTitulo() {
        return titulo;
    }

    /**
     * @param titulo the titulo to set
     */
    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    /**
     * @return the descricao
     */
    public String getDescricao() {
        return descricao;
    }

    /**
     * @param descricao the descricao to set
     */
    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    /**
     * @return the dataInicio
     */
    public String getDataInicio() {
        return dataInicio;
    }

    /**
     * @param dataInicio the dataInicio to set
     */
    public void setDataInicio(String dataInicio) {
        this.dataInicio = dataInicio;
    }

    /**
     * @return the dataFim
     */
    public String getDataFim() {
        return dataFim;
    }

    /**
     * @param dataFim the dataFim to set
     */
    public void setDataFim(String dataFim) {
        this.dataFim = dataFim;
    }

    /**
     * @return the horaAssistencial
     */
    public int getHoraAssistencial() {
        return horaAssistencial;
    }

    /**
     * @param horaAssistencial the horaAssistencial to set
     */
    public void setHoraAssistencial(int horaAssistencial) {
        this.horaAssistencial = horaAssistencial;
    }

    /**
     * @return the horaExecutiva
     */
    public int getHoraExecutiva() {
        return horaExecutiva;
    }

    /**
     * @param horaExecutiva the horaExecutiva to set
     */
    public void setHoraExecutiva(int horaExecutiva) {
        this.horaExecutiva = horaExecutiva;
    }

    /**
     * @return the horaJuridica
     */
    public int getHoraJuridica() {
        return horaJuridica;
    }

    /**
     * @param horaJuridica the horaJuridica to set
     */
    public void setHoraJuridica(int horaJuridica) {
        this.horaJuridica = horaJuridica;
    }

    /**
     * @return the horaFinanceira
     */
    public int getHoraFinanceira() {
        return horaFinanceira;
    }

    /**
     * @param horaFinanceira the horaFinanceira to set
     */
    public void setHoraFinanceira(int horaFinanceira) {
        this.horaFinanceira = horaFinanceira;
    }

    public int getTotalHoras(){
        return this.horaAssistencial+this.horaJuridica+this.horaExecutiva+this.horaFinanceira;
    }

}