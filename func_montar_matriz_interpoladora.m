function matriz_normal = func_montar_matriz_interpoladora(a,b,n,vj,dvjdx,p,q)
	for i = 1:n
		for j = 1:n
			matriz_normal(i, j) = func_produto_interno(a,b,n,p,@(x) dvjdx(j,x)*dvjdx(i,x)) + func_produto_interno(a,b,n,q,@(x) vj(j,x)*vj(i,x));
		end
	end
endfunction