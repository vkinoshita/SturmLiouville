function matriz_normal = func_montar_matriz_interpoladora(_informacoes_sturm_liouville)
	p = _informacoes_sturm_liouville.funcoes_coeficientes.p;
	q = _informacoes_sturm_liouville.funcoes_coeficientes.q;
	vj = _informacoes_sturm_liouville.funcao_aproximadora.funcao;
	dvjdx = _informacoes_sturm_liouville.funcao_aproximadora.derivada_da_funcao_em_x;
	tamanho_da_serie = _informacoes_sturm_liouville.funcao_aproximadora.tamanho_da_serie;
	_intervalo = _informacoes_sturm_liouville.intervalo;

	for i = 1:tamanho_da_serie
		for j = 1:tamanho_da_serie
			dvj_dvi = @(x) dvjdx(j,x)*dvjdx(i,x);
			matriz_normal(i, j) = func_produto_interno(_intervalo,p, dvj_dvi);

			vj_vi = @(x) vj(j,x)*vj(i,x);
			matriz_normal(i, j) += func_produto_interno(_intervalo,q,vj_vi);
		end
	end
endfunction