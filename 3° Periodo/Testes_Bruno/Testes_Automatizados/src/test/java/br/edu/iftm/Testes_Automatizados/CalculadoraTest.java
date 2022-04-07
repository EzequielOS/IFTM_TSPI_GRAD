package br.edu.iftm.Testes_Automatizados;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class CalculadoraTest {

    //instanciar os objetos necessários
    //cenário de teste - define entradas e saídas esperadas
    // execução
    // comparação

    @Test
    public void testaConstrutorInicioComZero() {
        //declaração/instanciação os objetos necessários
        Calculadora calculadora1;
        //cenário de teste - define entradas e saídas esperadas
        double resultadoEsperado = 0.0;
        // execução
        calculadora1 = new Calculadora();
        // comparação
        Assertions.assertEquals(resultadoEsperado, calculadora1.getMemoria());

    }

    @Test
    public void testaValorZeroConstrutorComParametros(){
        double numEsperado = 0;
        Calculadora calculadora2;

        calculadora2 = new Calculadora(0);
        Assertions.assertEquals(numEsperado, calculadora2.getMemoria());
    }
    @Test
    public void testaValorDezConstrutorComParametros(){
        double numEsperado2 = 10;
        Calculadora calculadora3;

        calculadora3 = new Calculadora(10);
        Assertions.assertEquals(numEsperado2, calculadora3.getMemoria());
    }
    @Test
    public void testaValorDezNegConstrutorComParametros(){
        double numEsperado3 = -10;
        Calculadora calculadora4;


        calculadora4 = new Calculadora(-10);
        Assertions.assertEquals(numEsperado3, calculadora4.getMemoria());
    }
    @Test
    public void testaSomaNegativa(){
        Calculadora calculadora5 = new Calculadora(-5);
        double resultadoEsperado = 5;

        calculadora5.somar(10);
        Assertions.assertEquals(resultadoEsperado, calculadora5.getMemoria());
    }
    @Test
    public void testaSomarValorZero(){
        Calculadora calculadora6 = new Calculadora();
        double resultadoEsperado = 0;

        calculadora6.somar(0);
        Assertions.assertEquals(resultadoEsperado, calculadora6.getMemoria()
        );
    }
    @Test
    public void testaSomarValorAlto(){
        Calculadora calculadora7 = new Calculadora(162);
        double resultadoEsperado = 1162;

        calculadora7.somar(1000);
        Assertions.assertEquals(resultadoEsperado, calculadora7.getMemoria());
    }
    @Test
    public void testaSubtracaoNegativa(){
        Calculadora calculadora8 = new Calculadora(-12);
        double resultadoEsperado = -2;

        calculadora8.subtrair(-10);
        Assertions.assertEquals(resultadoEsperado, calculadora8.getMemoria());
    }
    @Test
    public void testaSubtracaoValorZero(){
        Calculadora calculadora9 = new Calculadora(12);
        double resultadoEsperado = 12;

        calculadora9.subtrair(0);
        Assertions.assertEquals(resultadoEsperado, calculadora9.getMemoria());
    }
    @Test
    public void testaSubtracaoValorAlto(){
        Calculadora calculadora10 = new Calculadora();
        double resultadoEsperado = -1000;

        calculadora10.subtrair(1000);
        Assertions.assertEquals(resultadoEsperado, calculadora10.getMemoria());
    }
    @Test
    public void testaMultiplicacaoNegativa(){
        Calculadora calculadora11 = new Calculadora(-12);
        double resultadoEsperado = 24;

        calculadora11.multiplicar(-2);
        Assertions.assertEquals(resultadoEsperado, calculadora11.getMemoria());
    }
    @Test
    public void testaMultiplicacaoValorZero(){
        Calculadora calculadora12 = new Calculadora(15);
        double resultadoEsperado = 0;

        calculadora12.multiplicar(0);
        Assertions.assertEquals(resultadoEsperado, calculadora12.getMemoria());
    }
    @Test
    public void testaMultiplicacaoValorAlto(){
        Calculadora calculadora13 = new Calculadora(20);
        double resultadoEsperado = 20000;

        calculadora13.multiplicar(1000);
        Assertions.assertEquals(resultadoEsperado, calculadora13.getMemoria());
    }
    @Test
    public void testaDivisaoPorZero(){
        Calculadora calculadora14 = new Calculadora(5);
        double resultadoEsperado = Double.POSITIVE_INFINITY;

        calculadora14.dividir(0);
        Assertions.assertEquals(resultadoEsperado, calculadora14.getMemoria());
    }
    @Test
    public  void testaZerarMemoria(){
        Calculadora calculadora15 = new Calculadora(32);
        double resultadoEsperado = 0;

        calculadora15.zerarMemoria();
        Assertions.assertEquals(resultadoEsperado, calculadora15.getMemoria());
    }

}
