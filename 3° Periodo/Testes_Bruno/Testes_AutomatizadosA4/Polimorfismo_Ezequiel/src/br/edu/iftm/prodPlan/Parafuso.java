package br.edu.iftm.prodPlan;

public class Parafuso extends Parte {
    private float comprimento;
    private float diametro;

    public Parafuso(int codigo, String nome, String descricao, float valor, float comprimento, float diametro) {
        super(codigo, nome, descricao, valor);
        this.comprimento = comprimento;
        this.diametro = diametro;
    }

    public float calculaValor() {
        return getValor();
    }

    @Override
    public String toString(){
        return super.toString() + " Comprimento: " +comprimento+ " Diametro: " +diametro;
    }

}
