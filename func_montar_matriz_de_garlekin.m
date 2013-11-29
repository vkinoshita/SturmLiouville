# monta a matriz de garlekin

function matriz_normal = func_montar_matriz_de_garlekin(_informacoes_sturm_liouville)
	p = _informacoes_sturm_liouville.funcoes_coeficientes.p;
	q = _informacoes_sturm_liouville.funcoes_coeficientes.q;
	vj = _informacoes_sturm_liouville.funcao_aproximadora.funcao;
	dvjdx = _informacoes_sturm_liouville.funcao_aproximadora.derivada_da_funcao_em_x;
	tamanho_da_serie = _informacoes_sturm_liouville.funcao_aproximadora.tamanho_da_serie;
	_intervalo = _informacoes_sturm_liouville.intervalo;

	for i = 1:tamanho_da_serie
		for j = i:tamanho_da_serie
			funcao_a_ser_integrada = @(x) p(x).*dvjdx(j,x).*dvjdx(i,x) + q(x).*vj(j,x).*vj(i,x);
			matriz_normal(i, j) = func_integral_simpson(_intervalo,funcao_a_ser_integrada);
			matriz_normal(j, i) = matriz_normal(i, j);
		end
	end
endfunction