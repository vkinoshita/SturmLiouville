# recebe um modelo do tipo modelo_informacoes_sturm_liouville
# e encontra os coeficientes

function coeficientes = func_sturm_liouville(_informacoes_sturm_liouville)
	A = func_montar_matriz_de_garlekin(_informacoes_sturm_liouville);
	B = func_montar_resposta_de_garlekin(_informacoes_sturm_liouville);
	coeficientes = B / A;
endfunction