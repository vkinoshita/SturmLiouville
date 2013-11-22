function integral = func_integral_simpson(_intervalo, funcao_a_ser_integrada)
	h = (_intervalo.fim - _intervalo.inicio)/_intervalo.particoes_numericas;
	x = _intervalo.inicio:((_intervalo.fim - _intervalo.inicio) / _intervalo.particoes_numericas):_intervalo.fim;
	
	for i = 2:length(x) - 1
		if mod(i, 2) == 0
			fx(i) = 4 * funcao_a_ser_integrada(x(i)); 
		else
			fx(i) = 2 * funcao_a_ser_integrada(x(i)); 
		end 
	end

	integral = funcao_a_ser_integrada(x(1)) + funcao_a_ser_integrada(x(length(x))) + sum(fx);

	integral = h/3 * integral; 

endfunction