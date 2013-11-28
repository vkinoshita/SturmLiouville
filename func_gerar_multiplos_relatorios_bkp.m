function func_gerar_multiplos_relatorios_bkp()
	mkdir("relatorios");

	max_tamanho_da_serie = 6;
	max_particoes_simpson = 8;	

	for mult_tamanho_da_serie = 1:max_tamanho_da_serie
		for mult_particoes_simpson = 1:max_particoes_simpson
			tamanho_da_serie = 5 * mult_tamanho_da_serie;
			particoes_simpson = 5 * mult_particoes_simpson;

			sufixo_arquivo = sprintf("serie_%d_simpson_%d", tamanho_da_serie, particoes_simpson);
			descricao_do_grafico = sprintf("Tamanho da serie = %d, particoes para a integral de simpson = %d", tamanho_da_serie, particoes_simpson);

			printf("\n");
			printf(descricao_do_grafico);

			printf("\n* ENTRADA 1\nGerando relatorios...\n");

			infos_1 = entrada_1_principal();
			infos_1.funcao_aproximadora.tamanho_da_serie = tamanho_da_serie;
			infos_1.intervalo.particoes_numericas = particoes_simpson;

			coeficientes_1 = func_sturm_liouville(infos_1);

			vj_1 = infos_1.funcao_aproximadora.funcao;

			f_aproximada_1 = @ (x) func_funcao_aproximada(coeficientes_1,vj_1,x);

			nome_arquivo_log = sprintf("relatorios/interpolacao_1_%s.txt", sufixo_arquivo);
			func_gerar_tabela_relatorio(infos_1.intervalo, 100, infos_1.funcao_exata,f_aproximada_1, nome_arquivo_log);

			nome_arquivo_imagem = sprintf("relatorios/interpolacao_grafico_1_%s.png", sufixo_arquivo);
			func_gerar_grafico_de_comparacao(infos_1.intervalo, infos_1.funcao_exata, f_aproximada_1,
				"Aproximacao com funcoes do tipo 1", 
				descricao_do_grafico,
				nome_arquivo_imagem);
			printf("Relatorios gerados com sucesso.\n");

			printf("* ENTRADA 2\nGerando relatorios...\n");

			infos_2 = entrada_2_principal();
			infos_2.funcao_aproximadora.tamanho_da_serie = tamanho_da_serie;
			infos_2.intervalo.particoes_numericas = particoes_simpson;

			coeficientes_2 = func_sturm_liouville(infos_2);

			vj_2 = infos_2.funcao_aproximadora.funcao;

			f_aproximada_2 = @ (x) func_funcao_aproximada(coeficientes_2,vj_2,x);

			nome_arquivo_log = sprintf("relatorios/interpolacao_2_%s.txt", sufixo_arquivo);
			func_gerar_tabela_relatorio(infos_2.intervalo, 100, infos_2.funcao_exata,f_aproximada_2, nome_arquivo_log);

			nome_arquivo_imagem = sprintf("relatorios/interpolacao_grafico_2_%s.png", sufixo_arquivo);
			func_gerar_grafico_de_comparacao(infos_2.intervalo, infos_2.funcao_exata, f_aproximada_2,
				"Interpolacao com funcoes do tipo 2", 
				descricao_do_grafico,
				nome_arquivo_imagem);
			printf("Relatorios gerados com sucesso.\n");
		end

	end

	printf("\n\nTodos os arquivos foram gravados na pasta \"relatorios\".\n");

endfunction