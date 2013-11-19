function coeficientes = func_montar_resposta_interpoladora(_informacoes_sturm_liouville)
    _funcao_aproximadora = _informacoes_sturm_liouville.funcao_aproximadora;
    f = _informacoes_sturm_liouville.funcoes_coeficientes.f;
	for i = 1:_informacoes_sturm_liouville.tamanho_da_serie
		v = @(x) _funcao_aproximadora.funcao(i, x);
		coeficientes(i) = func_produto_interno(_informacoes_sturm_liouville.intervalo, f, v);
	end
endfunction