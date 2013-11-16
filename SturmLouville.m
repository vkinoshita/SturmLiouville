%EXERCICIO PROGRAMA
%MAP2220
%PROBLEMA DE STURM-LIOUVILLE - METODO DE GALERKIN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Definindo as entradas

entrada = struct("n",20,"a",0,"b",pi,"l",pi-0,"y",@(x) exp(x)*sin(x));

% Definindo os vjs

vj = struct ("f",@(j, x) sin((j * pi * x) / l),"d",@(j, x) j * pi * cos((j * pi * x) / l) / l);

function principal(a,b,n,vj,dvjdx,p,q,f)
	A = func_montar_matriz(a,b,n,vj,dvjdx,p,q);
	B = func_montar_coeficientes(a,b,n,vj,f);
	resultado = B / A;	
	x = a:0.01:b;

	printf("Coeficientes encontrados\n");
	for i = 1:length(resultado)
		printf("b%d = %f\n",i,resultado(i));
	end
	
	hold on;
	plot(x,func_aproximada(resultado,vj,x));
endfunction

function produto_interno = func_produto_interno(a,b,n,h,k)
	funcao_a_ser_integrada = @(x) h(x)*k(x);
	produto_interno = func_simpson(a,b,n,funcao_a_ser_integrada);
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

function resultado = func_plot_y(x)
	for i = 1:length(x)
		resultado(i) = exp(x(i)) * sin(x(i));
	end
endfunction

x = entrada.a:0.01:pi;
plot(x,func_plot_y(x));

printf("\n*******************************************\n");
printf("************* ENTRADA 1 *******************\n");
printf("*******************************************\n");

% entrada 1

funcoes = struct("p",@(x) 4,"q",@(x) exp(-x),"f",@(x) - 8 * exp(x) * cos(x) + sin(x));

principal(entrada.a,entrada.b,entrada.n,vj.f,vj.d,funcoes.p,funcoes.q,funcoes.f);

printf("\n*******************************************\n");
printf("************* ENTRADA 2 *******************\n");
printf("*******************************************\n");
% entrada 2

funcoes = struct("p",@(x) 1 + x ^ 2,"q",@(x) 2 * x,"f",@(x) - 2 * (x ^ 2 + x + 1) * exp(x) * cos(x));

principal(entrada.a,entrada.b,entrada.n,vj.f,vj.d,funcoes.p,funcoes.q,funcoes.f);
