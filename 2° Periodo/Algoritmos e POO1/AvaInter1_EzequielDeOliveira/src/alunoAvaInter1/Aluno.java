package alunoAvaInter1;

import AvaInter1_EzequielDeOliveira.Auxiliar;

public class Aluno {
	private String codigo;
	private String nome;
	private String telefone;
	private Double[] notas = new Double[5];
	private Double mensalidade;
	private Auxiliar auxilia = new Auxiliar();

	public void geraCodigo() {
		String letras = nome.substring(0, 3);
		StringBuilder textoCifrado = new StringBuilder();
		int numero = nome.length();

		for (int i = 0; i < letras.length(); i++) {
			int letraCifradaASCII = ((int) letras.charAt(i)) + 2;
			while (letraCifradaASCII > 126) {
				letraCifradaASCII -= 94;
			}
			textoCifrado.append((char) letraCifradaASCII);
		}
		setCodigo(textoCifrado.toString() + numero);
	}

	public String imprimeNome() {
		String inicial = nome.substring(0, 1);
		String[] nomeSeparado = nome.split(" ");

		return "Aluno " + nome.toUpperCase() + " - " + nomeSeparado[nomeSeparado.length - 1] + " " + inicial;
	}

	public Double calcularMedia() {
		Double resultado = auxilia.somaValores(notas, 0);
		return resultado/5;
	}

	public Aluno(String codigo, String nome, String telefone, Double[] notas, Double mensalidade) {
		this.codigo = codigo;
		this.nome = nome;
		this.telefone = telefone;
		this.notas = notas;
		this.mensalidade = mensalidade;
	}

	public String getCodigo() {
		return codigo;
	}

	public String getNome() {
		return nome;
	}

	public String getTelefone() {
		return telefone;
	}

	public Double[] getNotas() {
		return notas;
	}

	public Double getMensalidade() {
		return mensalidade;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public void setNotas(Double[] notas) {
		this.notas = notas;
	}

	public void setMensalidade(Double mensalidade) {
		this.mensalidade = mensalidade;
	}

}
