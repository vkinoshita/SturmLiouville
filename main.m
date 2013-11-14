%EXERCICIO PROGRAMA
%MAP2220
%PROBLEMA DE STURM-LIOUVILLE - METODO DE GALERKIN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

n = 20

% intervalo
a = 0
b = pi
l = b - a

y = inline('(exp(x))*(sin(x))')


% implementacao do primeiro item

target_functions
input_functions_1
simpson(a, b, n, vj)

% implementacao do segundo item

target_functions
input_functions_1
simpson(a, b, n, vj)