function matriz_normal = func_montar_matriz_interpoladora(_modelo_entrada, vj,dvjdx,p,q)
	for i = 1:_modelo_entrada.tamanho_da_serie
		for j = 1:_modelo_entrada.tamanho_da_serie
			matriz_normal(i, j) = func_produto_interno(_modelo_entrada,
				p, @(x) dvjdx(j,x)*dvjdx(i,x)) + func_produto_interno(_modelo_entrada,q,@(x) vj(j,x)*vj(i,x));
		end
	end
endfunction