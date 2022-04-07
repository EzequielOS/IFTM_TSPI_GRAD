package br.edu.iftm.Testes_Automatizados;

public class Funcionario {
    private String nomeFuncionario;
    private int horasTrabalhadas;
    private double valorHora;

    public int validaHorasTrabalhadas(int horasTrabalhadas){
        this.horasTrabalhadas = horasTrabalhadas;
        if(horasTrabalhadas > 40){
            throw new IllegalArgumentException("Horas acima do limite esperado, espera-se menor ou igual 40 horas trabalhadas");
        }
        return horasTrabalhadas;
    }

    public double validaValorHora(double valorHora){
        this.valorHora = valorHora;
        if(valorHora <= (1212.0*0.04) || valorHora >= (1212.0*0.1)){
            throw new IllegalArgumentException("Valor hora fora do limite esperado, espera-se entre 4% e 10% de R$1212.00");
        }
        return valorHora;
    }

    public Funcionario(String nomeFuncionario, int horasTrabalhadas, double valorHora) {
        this.nomeFuncionario = nomeFuncionario;
        this.horasTrabalhadas = validaHorasTrabalhadas(horasTrabalhadas);
        this.valorHora = validaValorHora(valorHora);
    }

    public double calcularPagamento(){
        return horasTrabalhadas*valorHora;
    }

}
