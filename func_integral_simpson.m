function integral = func_integral_simpson(a, b, n, funcao_a_ser_integrada)
	h = (b - a)/n;
	x = a:((b - a) / n):b;

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