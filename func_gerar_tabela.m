function func_gerar_tabela(a,b,n,f_exata, f_aproximada,nome_arquivo)
	dominio = a:(b-a)/n:b;
	sol_exata = f_exata(dominio);
	sol_aproximada = f_aproximada(dominio);
	erro_absoluto = abs(sol_exata - sol_aproximada);
	tabela = [dominio; sol_aproximada; sol_exata; erro_absoluto]'; #'
	#save nome_arquivo tabela
	save("-ascii", nome_arquivo,"tabela");
endfunction