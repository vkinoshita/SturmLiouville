function integral = func_integral_simpson(_modelo_entrada, funcao_a_ser_integrada)
	intervalo_inicio = _modelo_entrada.intervalo_inicio;
	intervalo_fim = _modelo_entrada.intervalo_fim;
	numero_particoes = _modelo_entrada.numero_particoes_simpson;

	h = (intervalo_fim - intervalo_inicio)/numero_particoes;
	x = intervalo_inicio:((intervalo_fim - intervalo_inicio) / numero_particoes):intervalo_fim;

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