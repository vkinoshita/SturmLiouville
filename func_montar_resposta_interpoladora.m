function coeficientes = func_montar_resposta_interpoladora(_modelo_entrada,vj,f)
	for i = 1:_modelo_entrada.tamanho_da_serie
		coeficientes(i) = func_produto_interno(_modelo_entrada,f,@(x) vj(i,x));
	end
endfunction