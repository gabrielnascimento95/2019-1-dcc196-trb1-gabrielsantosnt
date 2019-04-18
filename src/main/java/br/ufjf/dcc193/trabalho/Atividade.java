package br.ufjf.dcc193.trabalho;

/**
 * Atividade
 */
public class Atividade {

    String titulo;
    String descricao;
    String dataInicio;
    String dataFim;
    Float numHoras;
    String categorias[] = {"assistencial", "juridica", "financeira", "executiva"};

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
     * @return the categorias
     */
    public String[] getCategorias() {
        return categorias;
    }

    public String getExactCategoria(int i){
        return this.categorias[i];
    }
}