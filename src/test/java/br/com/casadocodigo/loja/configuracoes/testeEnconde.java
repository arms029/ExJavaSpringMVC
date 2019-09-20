package br.com.casadocodigo.loja.configuracoes;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class testeEnconde {

	public static void main(String[] args) {

		int i = 0;
		while (i < 10) {
			String password = "putin";
			BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
			String hashedPassword = passwordEncoder.encode(password);

			System.out.println(hashedPassword);
			i++;
		}
		
	}

}
