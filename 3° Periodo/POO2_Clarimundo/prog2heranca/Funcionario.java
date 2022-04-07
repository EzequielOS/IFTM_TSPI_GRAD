package prog2heranca;

import java.util.Date;

public class Funcionario extends Pessoa {
    
    private double salario;
    private Date data_admissao;
    private String cargo;
    
    public Funcionario(String nome, String cpf, Date data_nascimento, double salario, Date data_admissao, String cargo) {
	super(nome, cpf, data_nascimento);
        this.salario = salario;
        this.data_admissao = data_admissao;
        this.cargo = cargo;
    }
	
}

