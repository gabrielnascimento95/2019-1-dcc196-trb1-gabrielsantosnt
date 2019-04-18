package br.ufjf.dcc193.trabalho;

/**
 * Membro
 */
public class Membro {

    String nomeCompleto;
    String funcao;
    String email;
    String dataEntrada;
    String dataSaida;

    /**
     * @return the nomeCompleto
     */
    public String getNomeCompleto() {
        return nomeCompleto;
    }

    /**
     * @return the funcao
     */
    public String getFuncao() {
        return funcao;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @return the dataEntrada
     */
    public String getDataEntrada() {
        return dataEntrada;
    }

    /**
     * @return the dataSaida
     */
    public String getDataSaida() {
        return dataSaida;
    }

    /**
     * @param nomeCompleto the nomeCompleto to set
     */
    public void setNomeCompleto(String nomeCompleto) {
        this.nomeCompleto = nomeCompleto;
    }

    /**
     * @param funcao the funcao to set
     */
    public void setFuncao(String funcao) {
        this.funcao = funcao;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @param dataEntrada the dataEntrada to set
     */
    public void setDataEntrada(String dataEntrada) {
        this.dataEntrada = dataEntrada;
    }

    /**
     * @param dataSaida the dataSaida to set
     */
    public void setDataSaida(String dataSaida) {
        this.dataSaida = dataSaida;
    }

}