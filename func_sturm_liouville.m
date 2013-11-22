# recebe um modelo do tipo modelo_informacoes_sturm_liouville

function coeficientes = func_sturm_liouville(_informacoes_sturm_liouville)
	A = func_montar_matriz_interpoladora(_informacoes_sturm_liouville);
	B = func_montar_resposta_interpoladora(_informacoes_sturm_liouville);
	coeficientes = B / A;
	
	_intervalo = _informacoes_sturm_liouville.intervalo;
	dominio = _intervalo.inicio:0.01:_intervalo.fim;

	printf("Coeficientes encontrados\n");
	for i = 1:length(coeficientes)
		printf("b%d = %f\n",i,coeficientes(i));
	end
	
endfunction