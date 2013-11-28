function func_gerar_tabela_relatorio(_intervalo,numero_de_comparacoes,f_exata, f_aproximada, nome_arquivo)
	dominio = _intervalo.inicio:(_intervalo.fim-_intervalo.inicio)/numero_de_comparacoes:_intervalo.fim;
	solucao_exata = f_exata(dominio);
	solucao_aproximada = f_aproximada(dominio);
	erro_absoluto = abs(solucao_exata - solucao_aproximada);
	tabela = [dominio; solucao_aproximada; solucao_exata; erro_absoluto]'; #'
	save("-ascii", nome_arquivo,"tabela");
	printf("O arquivo %s foi gravado com sucesso\n", nome_arquivo);
endfunction