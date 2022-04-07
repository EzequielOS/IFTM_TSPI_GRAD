package prog2heranca;

import java.util.Date;

public class Aluno extends Pessoa{
    private long matricula;
    
    public Aluno(String nome, String cpf, Date data_nascimento, long matricula){
        super(nome,cpf,data_nascimento);
        this.matricula = matricula;
    }

    public long getMatricula() {
        return matricula;
    }   
    
    public double valorDasCopias(int qtd) { //Preço para tirar copias para alunos
	return 0.07 * (double) qtd;
    }
    
}
