package br.edu.iftm.aulas_testes;

public class Calculadora {

	private double memoria;
	
	
	public Calculadora() {
		zerarMemoria();
	}
	public Calculadora(double memoria) {
		super();
		this.memoria = memoria;
	}

	
	public void somar(double valor) { 
		memoria += valor;
	}

	public void subtrair(double valor) { 
		memoria -= valor;
	}

	
	public void multiplicar(double valor) {
		memoria *= valor;
	}

	public void dividir(double valor) { 
		memoria /= valor;
	}
	
	
	public double getMemoria() {
		return memoria;
	}
	
	public void zerarMemoria() {
		memoria = 0;
	}
	
	
}
