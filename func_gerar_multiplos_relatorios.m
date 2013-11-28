function func_gerar_multiplos_relatorios()
	mkdir("relatorios");

	max_tamanho_da_serie = 6;
	max_particoes_simpson = 8;	

	for mult_tamanho_da_serie = 1:max_tamanho_da_serie
		for mult_particoes_simpson = 1:max_particoes_simpson
			tamanho_da_serie = 5 * mult_tamanho_da_serie;
			particoes_simpson = 6 * mult_particoes_simpson;

			printf("\nTamanho da serie = %d\n", tamanho_da_serie);
			printf("Particoes de Simpson = %d\n", particoes_simpson);

			printf("\n* ENTRADA 1\nGerando relatorios...\n");
			infos_1 = entrada_1_principal();
			infos_1.funcao_aproximadora.tamanho_da_serie = tamanho_da_serie;
			infos_1.intervalo.particoes_numericas = particoes_simpson;
			coeficientes_1 = func_sturm_liouville(infos_1);
			func_gerar_relatorio_de_grafico_e_tabela(infos_1, coeficientes_1,"relatorios/interpolacao_tipo_1", "Interpolacao tipo 1");

			printf("* ENTRADA 2\nGerando relatorios...\n");
			infos_2 = entrada_2_principal();
			infos_2.funcao_aproximadora.tamanho_da_serie = tamanho_da_serie;
			infos_2.intervalo.particoes_numericas = particoes_simpson;
			coeficientes_2 = func_sturm_liouville(infos_2);
			func_gerar_relatorio_de_grafico_e_tabela(infos_2, coeficientes_2,"relatorios/interpolacao_tipo_2", "Interpolacao tipo 2");
		end

	end

	printf("\n\nTodos os arquivos foram gravados na pasta \"relatorios\".\n");

endfunction