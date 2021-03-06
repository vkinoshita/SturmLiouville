#EXERCICIO PROGRAMA
#MAP2220
#PROBLEMA DE STURM-LIOUVILLE - METODO DE GALERKIN
###################################################################
##### Caique Ferreira Lima #### NUSP # 7657711 ####################
##### Carlos Akutagawa kawai ## NUSP # 5386146 ####################
##### Victor Shin Kinoshita ### NUSP # 5947051 ####################
###################################################################



function principal()

	# Realiza o sturm liouville para os dados do item 1
	
	printf("\n*******************************************\n");
	printf("************* ENTRADA 1 *******************\n");
	printf("*******************************************\n");

	infos_1 = entrada_1_principal();

	coeficientes_1 = func_sturm_liouville(infos_1);

	printf("Coeficientes encontrados\n");
	for i = 1:length(coeficientes_1)
		printf("b%d = %f\n",i,coeficientes_1(i));
	end

	#func_gerar_relatorio_de_grafico_e_tabela(infos_1,coeficientes_1,"interpolacao_tipo_1", "Interpolacao com funcoes do tipo 1");


	# Realiza o sturm liouville para os dados do item 2

	printf("\n*******************************************\n");
	printf("************* ENTRADA 2 *******************\n");
	printf("*******************************************\n");

	infos_2 = entrada_2_principal();

	coeficientes_2 = func_sturm_liouville(infos_2);

	printf("Coeficientes encontrados\n");
	for i = 1:length(coeficientes_2)
		printf("b%d = %f\n",i,coeficientes_2(i));
	end

	#func_gerar_relatorio_de_grafico_e_tabela(infos_2,coeficientes_2,"interpolacao_tipo_2", "Interpolacao com funcoes do tipo 2");


	# Realiza o sturm liouville para os dados do item 3

	printf("\n*******************************************\n");
	printf("************* ENTRADA 3 *******************\n");
	printf("*******************************************\n");

	infos_3 = entrada_3_principal();

	coeficientes_3 = func_sturm_liouville(infos_3);

	printf("Coeficientes encontrados\n");
	for i = 1:length(coeficientes_3)
		printf("b%d = %f\n",i,coeficientes_3(i));
	end

	#func_gerar_relatorio_de_grafico_e_tabela(infos_3,coeficientes_3,"interpolacao_tipo_3", "Interpolacao com funcoes do tipo 3");


endfunction