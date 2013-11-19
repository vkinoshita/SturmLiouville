%EXERCICIO PROGRAMA
%MAP2220
%PROBLEMA DE STURM-LIOUVILLE - METODO DE GALERKIN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

1;

function SturmLiouville(_modelo_informacoes_sturm_liouville)
	_modelo_entrada = _modelo_informacoes_sturm_liouville.entrada;
	_modelo_funcao_aproximadora = _modelo_informacoes_sturm_liouville.funcao_aproximadora;
	_modelo_funcoes_coeficientes = _modelo_informacoes_sturm_liouville.funcoes_coeficientes;
	p = _modelo_funcoes_coeficientes.p;
	q = _modelo_funcoes_coeficientes.q;
	f = _modelo_funcoes_coeficientes.f;

	A = func_montar_matriz_interpoladora(_modelo_entrada, _modelo_funcao_aproximadora,p,q);
	B = func_montar_resposta_interpoladora(_modelo_entrada,_modelo_funcao_aproximadora,f);
	resultado = B / A;
	dominio = _modelo_entrada.intervalo_inicio:0.01:_modelo_entrada.intervalo_fim;

	printf("Coeficientes encontrados\n");
	for i = 1:length(resultado)
		printf("b%d = %f\n",i,resultado(i));
	end
	
	hold on;
	vj = _modelo_funcao_aproximadora.funcao;
	plot(dominio,func_aproximada(resultado,vj,dominio));
endfunction

function resultado = func_aproximada(coef,vj,x)
	resultado = 0;
	for i = 1:length(coef)
		resultado = resultado + coef(i)*vj(i,x);
	end
endfunction


entrada = entrada_principal();
tamanho_intervalo = entrada.intervalo_fim - entrada.intervalo_inicio;
vj = vj_aproximador(tamanho_intervalo);


infos = modelo_informacoes_sturm_liouville();
infos.entrada = entrada;
infos.funcao_aproximadora = vj;

printf("\n*******************************************\n");
printf("************* ENTRADA 1 *******************\n");
printf("*******************************************\n");

infos.funcoes_coeficientes = funcoes_coeficientes_1();

SturmLiouville(infos);

printf("\n*******************************************\n");
printf("************* ENTRADA 2 *******************\n");
printf("*******************************************\n");

infos.funcoes_coeficientes = funcoes_coeficientes_2();

SturmLiouville(infos);



x = entrada.intervalo_inicio:0.01:pi;
plot(x,entrada.funcao_exata(x));