package AvaInter1_EzequielDeOliveira;

import java.awt.Component;
import java.util.Arrays;
import java.util.Scanner;

import javax.swing.JOptionPane;

import alunoAvaInter1.Aluno;
import escolaAvaInter1.Escola;

public class AppAvaInter1 {
	static Scanner leitor = new Scanner(System.in);
	static String nome;
	static String telefone;
	static Double notas[] = new Double[5];
	static Double mensalidade;
	

	static Validacao valida = new Validacao();
	static Boolean nomeValido = false;

	public static String leString() {
		Scanner leitor = new Scanner(System.in);
		return leitor.nextLine();
	}

	public static Double leDouble() {
		Scanner leitor = new Scanner(System.in);
		return leitor.nextDouble();
	}

	public static void main(String[] args) {
		Escola escolaCriada = new Escola();
		
		while (nomeValido == false) {
			System.out.println("Escreva o nome do Aluno: ");
			nome = leString();
			nomeValido = valida.validaNome(nome);
		}

		System.out.println("Digite o telefone: ");
		telefone = leString();

		for (int i = 0; i < notas.length; i++) {
			System.out.println("Digite a Nota " + (i + 1) + " :");
			notas[i] = leDouble();
		}

		System.out.println("Valor da mensalidade?");
		mensalidade = leDouble();
		System.out.println();

		Aluno alunoCriado = new Aluno(null, nome, telefone, notas, mensalidade);
		alunoCriado.geraCodigo();

		int options = 0;
		while (options <= 4) {
			System.out.println("Sistema Escolar Automatizado - SEA\n\n\tO que voce deseja fazer?\n");
			System.out.println(
					"1- Imprimir Dados do Aluno || 2- Imprimir Média do Aluno\n3- Imprimir Total a Pagar  || 4- Alterar Dados do Aluno \n5- SAIR");
			options = leitor.nextInt();
			switch (options) {
			case 5:
				break;
			case 1:
				System.out.println("================================================================");
				System.out.println("Codigo: " + alunoCriado.getCodigo() + "\nNome: " + alunoCriado.imprimeNome()
						+ "\nTelefone: " + alunoCriado.getTelefone() + "\nNotas: "
						+ Arrays.toString(alunoCriado.getNotas()) + "\nMensalidade: " + alunoCriado.getMensalidade());
				System.out.println("================================================================");
				break;
			case 2:
				System.out.println("================================================================");
				System.out.println("Media do Aluno: " + alunoCriado.calcularMedia());
				System.out.println("================================================================");
				break;
			case 3:
				System.out.println("================================================================");
				System.out.println("Total a pagar: " + escolaCriada.calcularTotalAPagar(mensalidade));
				System.out.println("================================================================");
				break;
			case 4:
				int subOption;
				System.out.println("================================================================");
				System.out.println("Qual dado será alterado?\n1- Telefone || 2- Notas || 3- Mensalidade");
				System.out.println("================================================================");
				subOption = leitor.nextInt();
				switch (subOption) {
				case 1:
					System.out.println("================================================================");
					System.out.println("Digite o telefone: ");
					telefone = leString();
					System.out.println("================================================================");
					alunoCriado.setTelefone(telefone);
					break;
				case 2:
					System.out.println("================================================================");
					for (int i = 0; i < notas.length; i++) {
						System.out.println("Digite a Nota " + (i + 1) + " :");
						notas[i] = leDouble();
					}
					alunoCriado.setNotas(notas);
					System.out.println("================================================================");
					break;
				case 3:
					System.out.println("================================================================");
					System.out.println("Valor da mensalidade?");
					mensalidade = leDouble();
					System.out.println("================================================================");
					alunoCriado.setMensalidade(mensalidade);
					break;
				}
			}
	}
	}
}
