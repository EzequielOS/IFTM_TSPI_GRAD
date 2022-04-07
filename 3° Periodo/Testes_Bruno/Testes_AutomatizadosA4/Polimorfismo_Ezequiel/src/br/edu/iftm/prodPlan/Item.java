package br.edu.iftm.prodPlan;

public class Item {
    private Parte parte;
    private int quantidade;

    public float calculaValor() {
        return quantidade * parte.calculaValor();
    }
}
