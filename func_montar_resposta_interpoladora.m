function coeficientes = func_montar_resposta_interpoladora(_modelo_entrada,_modelo_funcao_aproximadora,f)
	for i = 1:_modelo_entrada.tamanho_da_serie
		vj = _modelo_funcao_aproximadora.funcao;
		coeficientes(i) = func_produto_interno(_modelo_entrada,f,@(x) vj(i,x));
	end
endfunction