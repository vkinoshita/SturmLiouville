%EXERCICIO PROGRAMA
%MAP2220
%PROBLEMA DE STURM-LIOUVILLE - METODO DE GALERKIN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


n = 20
a = 0
b = pi
y = inline('(exp(x))*(sin(x))')

%Definido os vjs

function resultado = vj (j, x, a, b)
	l = b - a
	resultado = sin((j * pi * x) / l);
	return;
endfunction

function resultado = dvjdx (j, x, a, b)
	l = b - a
	resultado = cos((j * pi * x) / l);
	return;
endfunction

function integral = simpson(a, b, n, func)
	h = (b - a)/n;
	x = a:((b - a) / n):b;

	func = inline(func);
	for i = 2:length(x)-1
		if mod(i, 2) == 0
			fx(i) = 4 * func(x(i)); 
		else
			fx(i) = 2 * func(x(i)); 
		end 
	end

	integral = func(x(1))+func(x(length(x)))+sum(fx);
	
	integral = h/3*integral; 

endfunction