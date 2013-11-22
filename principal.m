%EXERCICIO PROGRAMA
%MAP2220
%PROBLEMA DE STURM-LIOUVILLE - METODO DE GALERKIN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function principal()
	
	printf("\n*******************************************\n");
	printf("************* ENTRADA 1 *******************\n");
	printf("*******************************************\n");

	infos_1 = entrada_1_principal();

	coeficientes_1 = func_sturm_liouville(infos_1);

	printf("Coeficientes encontrados\n");
	for i = 1:length(coeficientes_1)
		printf("b%d = %f\n",i,coeficientes_1(i));
	end

	vj_1 = infos_1.funcao_aproximadora.funcao;

	f_aproximada_1 = @ (x) func_funcao_aproximada(coeficientes_1,vj_1,x);
	func_gerar_tabela(infos_1.intervalo, 100, infos_1.funcao_exata,f_aproximada_1, "aproximacao_1.txt");
	func_gerar_grafico_de_comparacao(infos_1.intervalo, infos_1.funcao_exata, f_aproximada_1,
		"aproximacao com funcoes do tipo 1", 
		sprintf("Tamanho da serie = %d, particoes para a integral de simpson = %d", infos_1.funcao_aproximadora.tamanho_da_serie, infos_1.intervalo.particoes_numericas),
		"aproximacao_grafico_1.png");


	printf("\n*******************************************\n");
	printf("************* ENTRADA 2 *******************\n");
	printf("*******************************************\n");

	infos_2 = entrada_2_principal();

	coeficientes_2 = func_sturm_liouville(infos_2);

	printf("Coeficientes encontrados\n");
	for i = 1:length(coeficientes_2)
		printf("b%d = %f\n",i,coeficientes_2(i));
	end

	vj_2 = infos_2.funcao_aproximadora.funcao;

	f_aproximada_2 = @ (x) func_funcao_aproximada(coeficientes_2,vj_2,x);
	func_gerar_tabela(infos_2.intervalo, 100, infos_2.funcao_exata,f_aproximada_2, "aproximacao_2.txt");
	func_gerar_grafico_de_comparacao(infos_2.intervalo, infos_2.funcao_exata, f_aproximada_2,
		"aproximacao com funcoes do tipo 2", 
		sprintf("Tamanho da serie = %d, particoes para a integral de simpson = %d", infos_2.funcao_aproximadora.tamanho_da_serie, infos_2.intervalo.particoes_numericas),
		"aproximacao_grafico_2.png");

endfunction