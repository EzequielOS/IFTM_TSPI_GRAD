package AvaInter1_EzequielDeOliveira;

public class Validacao {
	
	
	public Boolean validaNome(String nome) {
		
		String[] nomeSeparado = nome.split(" ");
		
		if (nomeSeparado[0].length() < 3 || nomeSeparado.length < 3) {
			return false;
		} else {
			return true;
		}
		
	}
}
