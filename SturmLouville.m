%EXERCICIO PROGRAMA
%MAP2220
%PROBLEMA DE STURM-LIOUVILLE - METODO DE GALERKIN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

entrada = entrada_principal();

tamanho_intervalo = entrada.intervalo_fim - entrada.intervalo_inicio;
vj = vj_aproximador(tamanho_intervalo);

function principal(_modelo_entrada,_modelo_funcao_aproximadora,vj,dvjdx,p,q,f)
	A = func_montar_matriz_interpoladora(_modelo_entrada, _modelo_funcao_aproximadora,p,q);
	B = func_montar_resposta_interpoladora(_modelo_entrada,_modelo_funcao_aproximadora,f);
	resultado = B / A;
	dominio = _modelo_entrada.intervalo_inicio:0.01:_modelo_entrada.intervalo_fim;

	printf("Coeficientes encontrados\n");
	for i = 1:length(resultado)
		printf("b%d = %f\n",i,resultado(i));
	end
	
	hold on;
	plot(dominio,func_aproximada(resultado,vj,dominio));
endfunction

function resultado = func_aproximada(coef,vj,x)
	resultado = 0;
	for i = 1:length(coef)
		resultado = resultado + coef(i)*vj(i,x);
	end
endfunction

x = entrada.intervalo_inicio:0.01:pi;
plot(x,entrada.funcao_exata(x));

printf("\n*******************************************\n");
printf("************* ENTRADA 1 *******************\n");
printf("*******************************************\n");

funcoes = funcoes_coeficientes_1();

principal(entrada,vj,vj.funcao,vj.derivada_da_funcao_em_x,funcoes.p,funcoes.q,funcoes.f);

printf("\n*******************************************\n");
printf("************* ENTRADA 2 *******************\n");
printf("*******************************************\n");

funcoes = funcoes_coeficientes_2();

principal(entrada,vj,vj.funcao,vj.derivada_da_funcao_em_x,funcoes.p,funcoes.q,funcoes.f);
