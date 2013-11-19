# recebe um modelo do tipo modelo_informacoes_sturm_liouville

function sturm_liouville(_informacoes_sturm_liouville)
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
	plot(dominio,func_funcao_aproximada(resultado,vj,dominio));
endfunction