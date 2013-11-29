# Funcoes coeficientes dadas pelo enunciado
# terceiro conjunto de funcoes
# p e q inventados

function funcoes = entrada_funcoes_coeficientes_3()
	funcoes = modelo_funcoes_coeficientes();

	funcoes.p = @(x) x .* exp(-x);
	funcoes.q = @(x) x .^ 2 + 100;
	#funcoes.f = @(x) - 2 * (x .^ 2 + x + 1) .* exp(x) .* cos(x);
	funcoes.f = @(x) exp(x) .* (-x .* exp(-x) .* 2 .* cos(x) + exp(-x) .* (x - 1) .* (sin(x) + cos(x)) + (x .^ 2 + 100) .* sin(x));
endfunction