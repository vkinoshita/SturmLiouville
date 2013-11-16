function func_gerar_tabela(a,b,n,f_exata, f_aproximada,nome_arquivo)
	dominio = a:(b-a)/n:b;
	solucao_exata = f_exata(dominio);
	solucao_aproximada = f_aproximada(dominio);
	erro_absoluto = abs(solucao_exata - solucao_aproximada);
	tabela = [dominio; solucao_aproximada; solucao_exata; erro_absoluto]'; #'
	save("-ascii", nome_arquivo,"tabela");
	printf("Arquivo %s gerado com sucesso\n", nome_arquivo);
endfunction