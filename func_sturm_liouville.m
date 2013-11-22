# recebe um modelo do tipo modelo_informacoes_sturm_liouville

function coeficientes = func_sturm_liouville(_informacoes_sturm_liouville)
	A = func_montar_matriz_interpoladora(_informacoes_sturm_liouville);
	B = func_montar_resposta_interpoladora(_informacoes_sturm_liouville);
	coeficientes = B / A;
endfunction