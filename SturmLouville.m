%EXERCICIO PROGRAMA
%MAP2220
%PROBLEMA DE STURM-LIOUVILLE - METODO DE GALERKIN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

1;

function SturmLiouville(_informacoes_sturm_liouville)
	_intervalo = _informacoes_sturm_liouville.intervalo;
	_funcao_aproximadora = _informacoes_sturm_liouville.funcao_aproximadora;

	A = func_montar_matriz_interpoladora(_informacoes_sturm_liouville);
	B = func_montar_resposta_interpoladora(_informacoes_sturm_liouville);
	resultado = B / A;
	dominio = _intervalo.inicio:0.01:_intervalo.fim;

	printf("Coeficientes encontrados\n");
	for i = 1:length(resultado)
		printf("b%d = %f\n",i,resultado(i));
	end
	
	hold on;
	vj = _funcao_aproximadora.funcao;
	plot(dominio,func_aproximada(resultado,vj,dominio));
endfunction

function resultado = func_aproximada(coef,vj,x)
	resultado = 0;
	for i = 1:length(coef)
		resultado = resultado + coef(i)*vj(i,x);
	end
endfunction


intervalo = entrada_intervalo_a_ser_interpolado();
tamanho_intervalo = intervalo.fim - intervalo.inicio;
vj = entrada_vj_aproximador(tamanho_intervalo);


infos = modelo_informacoes_sturm_liouville();
infos.tamanho_da_serie = 5;
infos.funcao_exata = @(x) exp(x) .* sin(x);
infos.funcao_aproximadora = vj;
infos.intervalo = intervalo;

printf("\n*******************************************\n");
printf("************* ENTRADA 1 *******************\n");
printf("*******************************************\n");

infos.funcoes_coeficientes = entrada_funcoes_coeficientes_1();

SturmLiouville(infos);

printf("\n*******************************************\n");
printf("************* ENTRADA 2 *******************\n");
printf("*******************************************\n");

infos.funcoes_coeficientes = entrada_funcoes_coeficientes_2();

SturmLiouville(infos);


x = intervalo.inicio:0.01:intervalo.fim;
plot(x,entrada.funcao_exata(x));