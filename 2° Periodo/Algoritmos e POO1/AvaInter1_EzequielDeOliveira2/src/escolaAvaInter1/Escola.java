package escolaAvaInter1;

public class Escola {
	private int codigo;
	private String nome;
	
	public Double calcularDesconto(Double v) {
		if(v ==0) {
			return 0.0;
		}else if(v <= 400.0) {
			return v*0.05;
		} else {
			return (v*0.10) + calcularDesconto(v/2);
		}
	}
	public Double calcularTotalAPagar(Double mensalidade) {
		return mensalidade - calcularDesconto(mensalidade);
	}

	public int getCodigo() {
		return codigo;
	}

	public String getNome() {
		return nome;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

}
