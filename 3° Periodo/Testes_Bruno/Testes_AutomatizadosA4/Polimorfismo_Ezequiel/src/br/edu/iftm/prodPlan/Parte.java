package br.edu.iftm.prodPlan;

abstract class Parte {
    private int codigo;
    private String nome;
    private String descricao;
    private float valor;

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public float getValor() {
        return valor;
    }

    public void setValor(float valor) {
        this.valor = valor;
    }

    public Parte(){};
    public Parte(int codigo, String nome, String descricao, float valor) {
        this.codigo = codigo;
        this.nome = nome;
        this.descricao = descricao;
        this.valor = valor;
    }

    public abstract float calculaValor();

    public String toString(){
        return "Codigo: " + codigo +" Nome: " + nome + " Descrição: " + descricao + " Valor: " + valor ;
    }

}
