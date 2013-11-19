function coeficientes = func_montar_resposta_interpoladora(a,b,n,vj,f)
	for i = 1:n
		coeficientes(i) = func_produto_interno(a,b,n,f,@(x) vj(i,x));
	end
endfunction