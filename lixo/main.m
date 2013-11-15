%EXERCICIO PROGRAMA
%MAP2220
%PROBLEMA DE STURM-LIOUVILLE - METODO DE GALERKIN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

n = 20

y = inline('(exp(x))*(sin(x))')


% implementacao do primeiro item

funcao_de_destino()
funcoes_de_entrada_1()
simpson(a, b, n, vj)

% implementacao do segundo item

funcao_de_destino()
funcoes_de_entrada_2()
simpson(a, b, n, vj)

%implementacao do terceiro item

% encontra o valor exato...