package br.edu.iftm.Testes_Automatizados;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;


class TestesAutomatizadosApplicationTests {

	@Test
	void testaConstrutorPagamentoInvalido() {
		Assertions.assertThrows(IllegalArgumentException.class, () -> new Funcionario("Mary", 45, 5.5));
	}

	@Test
	void testarConstrutorEntradaValorHoraValida(){
		Assertions.assertThrows(IllegalArgumentException.class, () -> new Funcionario("Mary", 45, 5.5));
	}

}
