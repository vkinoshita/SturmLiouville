# gera um grafico com a funcao exata e a funcao interpolada

function func_gerar_grafico_de_comparacao(_intervalo,f1,f2,titulo,descricao,nome_arquivo)
	clf();
	hold on;
	dominio = _intervalo.inicio:(_intervalo.fim-_intervalo.inicio)/200:_intervalo.fim;
	plot(dominio,f1(dominio), "r","linewidth", 1.5);
	plot(dominio,f2(dominio),"linewidth", 1.5);
	legend("Funcao exata", "Funcao interpolada");
	title(titulo,"fontsize", 16);
	xlabel(descricao);
	print(nome_arquivo,"-dpng");
	printf("O grafico %s foi gravado com sucesso!\n",nome_arquivo);
	hold off;
endfunction