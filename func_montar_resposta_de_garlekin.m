# monta a resposta do garlekin

function coeficientes = func_montar_resposta_de_garlekin(_informacoes_sturm_liouville)
    _funcao_aproximadora = _informacoes_sturm_liouville.funcao_aproximadora;
    f = _informacoes_sturm_liouville.funcoes_coeficientes.f;
    tamanho_da_serie = _informacoes_sturm_liouville.funcao_aproximadora.tamanho_da_serie;
    _intervalo = _informacoes_sturm_liouville.intervalo;

	for i = 1:tamanho_da_serie
		v = @(x) _funcao_aproximadora.funcao(i, x);
		coeficientes(i) = func_produto_interno(_intervalo, f, v);
	end
endfunction