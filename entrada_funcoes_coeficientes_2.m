# Funcoes coeficientes dadas pelo enunciado
# primeiro conjunto de funcoes

function funcoes = entrada_funcoes_coeficientes_2()
	funcoes = modelo_funcoes_coeficientes();

	funcoes.p = @(x) 1 + x ^ 2;
	funcoes.q = @(x) 2 * x;
	funcoes.f = @(x) - 2 * (x ^ 2 + x + 1) * exp(x) * cos(x);
endfunction