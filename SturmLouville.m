%EXERCICIO PROGRAMA
%MAP2220
%PROBLEMA DE STURM-LIOUVILLE - METODO DE GALERKIN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

n = 20;

a = 0;
b = pi;

l = b - a;

% Definido os vjs

vj = @(j, x) sin((j * pi * x) / l);

dvjdx = @(j, x) j * pi * cos((j * pi * x) / l) / l;

y = @(x) exp(x)*sin(x);

function principal(a,b,n,vj,dvjdx,p,q,f)
	A = func_montar_matriz(a,b,n,vj,dvjdx,p,q);
	B = func_montar_coeficientes(a,b,n,vj,f);
	resultado = A / B;
	x = a:(b-a)/n:1;
	#n
	#a
	#b
	#vj
	#dvjdx
	#p
	#q
	#f
	#resultado

	hold on;
	plot(x,func_aproximada(resultado,vj,x));
endfunction

function produto_interno = func_produto_interno(a,b,n,h,k)
	funcao_a_ser_integrada = @(x) h(x)*k(x);
	produto_interno = func_simpson(a,b,100,funcao_a_ser_integrada);
endfunction

function matriz_normal = func_montar_matriz(a,b,n,vj,dvjdx,p,q)
	for i = 1:n
		for j = 1:n
			matriz_normal(i, j) = func_produto_interno(a,b,n,p,@(x) dvjdx(j,x)*dvjdx(i,x)) + func_produto_interno(a,b,n,q,@(x) vj(j,x)*vj(i,x));
		end
	end
endfunction

function coeficientes = func_montar_coeficientes(a,b,n,vj,f)
	for i = 1:n
		coeficientes(i) = func_produto_interno(a,b,n,f,@(x) vj(i,x));
	end
endfunction

function integral = func_simpson(a, b, n, func)
	h = (b - a)/n;
	x = a:((b - a) / n):b;

	for i = 2:length(x) - 1
		if mod(i, 2) == 0
			fx(i) = 4 * func(x(i)); 
		else
			fx(i) = 2 * func(x(i)); 
		end 
	end

	integral = func(x(1)) + func(x(length(x))) + sum(fx);

	integral = h/3 * integral; 

endfunction

function resultado = func_aproximada(coef,vj,x)
	resultado = 0;
	for i = 1:length(coef)
		resultado = resultado + coef(i)*vj(i,x);
	end
endfunction

function func_plota_graficos(a,b,n,funcao)
	$plota os graficos
	x = a:((b-a)/n):b;
	plot(x,funcao)
endfunction

printf("*******************************************\n");
printf("************* ENTRADA 1 *******************\n");
printf("*******************************************\n");

% entrada 1
p = @(x) 4;
q = @(x) exp(-x);
f = @(x) -8 * exp(x) * cos(x) + sin(x);

principal(a,b,n,vj,dvjdx,p,q,f);

printf("*******************************************\n");
printf("************* ENTRADA 2 *******************\n");
printf("*******************************************\n");
% entrada 2
p = @(x) 1 + x ^ 2;
q = @(x) 2 * x;
f = @(x) - 2 * (x ^ 2 + x + 1) * exp(x) * cos(x);

principal(a,b,n,vj,dvjdx,p,q,f);