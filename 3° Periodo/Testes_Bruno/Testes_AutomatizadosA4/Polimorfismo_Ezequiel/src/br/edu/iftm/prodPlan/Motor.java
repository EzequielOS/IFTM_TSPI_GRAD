package br.edu.iftm.prodPlan;

public class Motor extends Parte{
    private float potencia;
    private float corrente;
    private int rpm;

    public Motor(int codigo, String nome, String descricao, float valor, float potencia, float corrente, int rpm) {
        super(codigo, nome, descricao, valor);
        this.potencia = potencia;
        this.corrente = corrente;
        this.rpm = rpm;
    }

    public float calculaValor(){
        return getValor();
    }

    @Override
    public String toString(){
        return super.toString() + " Potencia: " +potencia+ " Corrente: " +corrente+ " RPM: " +rpm;
    }
}
