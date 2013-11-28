function integral = func_integral_simpson(_intervalo, funcao_a_ser_integrada)
	dominio_de_integracao = linspace(_intervalo.inicio, _intervalo.fim, _intervalo.particoes_numericas + 1);

	for i = 2:length(dominio_de_integracao) - 1
		if mod(i, 2) == 0
			fx(i) = 4 * funcao_a_ser_integrada(dominio_de_integracao(i)); 
		else
			fx(i) = 2 * funcao_a_ser_integrada(dominio_de_integracao(i)); 
		end 
	end

	integral = funcao_a_ser_integrada(dominio_de_integracao(1)) + funcao_a_ser_integrada(dominio_de_integracao(length(dominio_de_integracao))) + sum(fx);

	h = _intervalo.tamanho/_intervalo.particoes_numericas;
	integral = h/3 * integral; 

endfunction