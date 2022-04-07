package prog2heranca;

import java.text.DecimalFormat;
import java.util.Date;

public class Prog2Heranca {


    public static void main(String[] args) {

        Aluno al = new Aluno("Jose Francisco", "123.456.789-00", new Date(), 123456);
	Professor pr = new Professor("Maria Antônia", "190.333.789-01", new Date(), 8500,"POO");
        int qtd = 10;
        DecimalFormat df = new DecimalFormat("#,###.00");
        
        System.out.println("O aluno irá gastar R$"+df.format(al.valorDasCopias(qtd))+" com as "+qtd+" cópias");
	System.out.println("O professor irá gastar R$"+df.format(pr.valorDasCopias(qtd))+" com as "+qtd+" cópias");

    }
    
}
