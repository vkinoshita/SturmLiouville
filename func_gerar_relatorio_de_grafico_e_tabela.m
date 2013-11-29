# gera um grafico e uma tabela a partir da funcao interpolada

function func_gerar_relatorio_de_grafico_e_tabela(_informacoes_sturm_liouville, coeficientes, nome_arquivo_sem_sufixo_e_sem_extensao, titulo_grafico)
	tamanho_da_serie = _informacoes_sturm_liouville.funcao_aproximadora.tamanho_da_serie;
	particoes_simpson = _informacoes_sturm_liouville.intervalo.particoes_numericas;	

	vj = _informacoes_sturm_liouville.funcao_aproximadora.funcao;
	funcao_aproximada = @ (x) func_funcao_aproximada(coeficientes,vj,x);

	sufixo_arquivo = sprintf("_serie_%d_simpson_%d", tamanho_da_serie, particoes_simpson);
	descricao_do_grafico = sprintf("Tamanho da serie = %d, particoes para a integral de simpson = %d", tamanho_da_serie, particoes_simpson);

	nome_arquivo_log = sprintf("%s%s%s", nome_arquivo_sem_sufixo_e_sem_extensao, sufixo_arquivo, ".txt");
	func_gerar_tabela_relatorio(_informacoes_sturm_liouville.intervalo, 100, _informacoes_sturm_liouville.funcao_exata, funcao_aproximada, nome_arquivo_log);

	nome_arquivo_imagem = sprintf("%s%s%s%s", nome_arquivo_sem_sufixo_e_sem_extensao, "_grafico", sufixo_arquivo, ".png");
	func_gerar_grafico_de_comparacao(_informacoes_sturm_liouville.intervalo, _informacoes_sturm_liouville.funcao_exata, funcao_aproximada,
		titulo_grafico, 
		descricao_do_grafico,
		nome_arquivo_imagem);
	printf("Tabela e grafico gerados com sucesso.\n");
endfunction