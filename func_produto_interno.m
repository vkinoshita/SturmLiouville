function produto_interno = func_produto_interno(_intervalo,h,k)
	# por padrao, a intergracao por simpson tem 50 particoes

	funcao_a_ser_integrada = @(x) h(x) .* k(x);
	produto_interno = func_integral_simpson(
		_intervalo, 50,
		funcao_a_ser_integrada);
endfunction