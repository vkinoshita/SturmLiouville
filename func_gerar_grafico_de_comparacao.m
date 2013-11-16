function func_gerar_grafico_de_comparacao(a,b,f1,f2,titulo,nome_arquivo)
	dominio = a:(b-a)/200:b;
	hold on;
	plot(dominio,f1(dominio), "r","linewidth", 1.5);
	plot(dominio,f2(dominio),"linewidth", 1.5);
	title(titulo,"fontsize", 16);
	hold off;
	print(nome_arquivo,"-dpng");
endfunction