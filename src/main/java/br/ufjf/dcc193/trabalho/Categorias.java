package br.ufjf.dcc193.trabalho;

/**
 * Categorias
 */
public class Categorias {

    int tipo;
    int horas;

    public Categorias(){

    }

    /**
     * @return the horas
     */
    public int getHoras() {
        return horas;
    }

    /**
     * @return the tipo
     */
    public int getTipo() {
        return tipo;
    }

    /**
     * @param horas the horas to set
     */
    public void setHoras(int horas) {
        this.horas = horas;
    }

    /**
     * @param tipo the tipo to set
     */
    public void setTipo(int tipo) {
        this.tipo = tipo;
    }
}