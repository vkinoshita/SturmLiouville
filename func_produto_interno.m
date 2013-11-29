# faz o produto interno de duas funcoes

function produto_interno = func_produto_interno(_intervalo,h,k)
	funcao_a_ser_integrada = @(x) h(x) .* k(x);
	produto_interno = func_integral_simpson(_intervalo, funcao_a_ser_integrada);
endfunction