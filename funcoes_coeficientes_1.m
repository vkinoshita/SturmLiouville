# Funcoes coeficientes dadas pelo enunciado
# primeiro conjunto de funcoes

function funcoes = funcoes_coeficientes_1()
	funcoes = modelo_funcoes_coeficientes();

	funcoes.p = @(x) 4;
	funcoes.q = @(x) exp(-x);
	funcoes.f = @(x) - 8 * exp(x) .* cos(x) + sin(x);
endfunction