%EXERCICIO PROGRAMA
%MAP2220
%PROBLEMA DE STURM-LIOUVILLE - METODO DE GALERKIN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function principal()
	
	printf("\n*******************************************\n");
	printf("************* ENTRADA 1 *******************\n");
	printf("*******************************************\n");

	infos = entrada_1_principal();

	func_sturm_liouville(infos);

	printf("\n*******************************************\n");
	printf("************* ENTRADA 2 *******************\n");
	printf("*******************************************\n");

	infos = entrada_2_principal();

	func_sturm_liouville(infos);


	x = infos.intervalo.inicio:infos.intervalo.tamanho/infos.intervalo.particoes_numericas:infos.intervalo.fim;
	plot(x,infos.funcao_exata(x));

endfunction