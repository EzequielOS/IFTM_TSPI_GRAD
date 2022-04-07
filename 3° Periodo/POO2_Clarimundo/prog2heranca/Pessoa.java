package prog2heranca;

import java.util.Date;

public class Pessoa {
    private String nome;
    private String cpf;
    private Date data_nascimento;
    
    public Pessoa(String nome, String cpf, Date data_nascimento){
        this.nome = nome;
        this.cpf = cpf;
        this.data_nascimento = data_nascimento;
    } 

    public String getNome() {
        return nome;
    }

    public String getCpf() {
        return cpf;
    }

    public Date getData_nascimento() {
        return data_nascimento;
    }
     
    public double valorDasCopias(int qtd) { //Retorna o preço para tirar copias
		return 0.10 * (double) qtd;
	}
}
