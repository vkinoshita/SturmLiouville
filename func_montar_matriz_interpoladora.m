function matriz_normal = func_montar_matriz_interpoladora(_modelo_entrada,_modelo_funcao_aproximadora,p,q)
	vj = _modelo_funcao_aproximadora.funcao;
	dvjdx = _modelo_funcao_aproximadora.derivada_da_funcao_em_x;

	for i = 1:_modelo_entrada.tamanho_da_serie
		for j = 1:_modelo_entrada.tamanho_da_serie
			dvj_dvi = @(x) dvjdx(j,x)*dvjdx(i,x);
			matriz_normal(i, j) = func_produto_interno(_modelo_entrada,p, dvj_dvi);

			vj_vi = @(x) vj(j,x)*vj(i,x);
			matriz_normal(i, j) += func_produto_interno(_modelo_entrada,q,vj_vi);
		end
	end
endfunction