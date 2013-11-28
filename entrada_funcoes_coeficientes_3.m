# Funcoes coeficientes dadas pelo enunciado
# terceiro conjunto de funcoes
# p e q inventados

function funcoes = entrada_funcoes_coeficientes_3()
	funcoes = modelo_funcoes_coeficientes();

	funcoes.p = @(x) 1 + x ^ 2;
	funcoes.q = @(x) 2 * x;
	funcoes.f = @(x) - 2 * (x ^ 2 + x + 1) * exp(x) * cos(x);
endfunction