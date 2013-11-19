function produto_interno = func_produto_interno(a,b,n,h,k)
	funcao_a_ser_integrada = @(x) h(x) .* k(x);
	produto_interno = func_integral_simpson(a,b,n,funcao_a_ser_integrada);
endfunction