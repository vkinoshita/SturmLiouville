function integral = simpson(a, b, n, func)
	h = (b - a)/n;
	x = a:((b - a) / n):b;

%	func = inline(func);
	for i = 2:length(x) - 1
		printf("entrou!");
		if mod(i, 2) == 0
			fx(i) = 4 * func(x(i)); 
		else
			fx(i) = 2 * func(x(i)); 
		end 
	end

	integral = func(x(1)) + func(x(length(x))) + sum(fx);

	integral = h/3 * integral; 

endfunction