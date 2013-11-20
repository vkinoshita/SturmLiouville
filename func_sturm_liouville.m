# recebe um modelo do tipo modelo_informacoes_sturm_liouville

function coeficientes = func_sturm_liouville(_informacoes_sturm_liouville)
	_intervalo = _informacoes_sturm_liouville.intervalo;
	_funcao_aproximadora = _informacoes_sturm_liouville.funcao_aproximadora;

	A = func_montar_matriz_interpoladora(_informacoes_sturm_liouville);
	B = func_montar_resposta_interpoladora(_informacoes_sturm_liouville);
	coeficientes = B / A;


	
	dominio = _intervalo.inicio:0.01:_intervalo.fim;

	printf("Coeficientes encontrados\n");
	for i = 1:length(coeficientes)
		printf("b%d = %f\n",i,coeficientes(i));
	end
	
	hold on;
	vj = _funcao_aproximadora.funcao;
	plot(dominio,func_funcao_aproximada(coeficientes,vj,dominio));
endfunction