package AvaInter1_EzequielDeOliveira;

public class Auxiliar {
	public Double somaValores(Double valores[], int pos) {
		if (pos >= valores.length) {
			return 0.0;
		} else if (pos - 1 == valores.length) {
			return valores[pos];
		} else {
			return valores[pos] + somaValores(valores, pos + 1);
		}
	}
}
