# solucao da integral de simpson

function integral = func_integral_simpson(_intervalo, funcao_a_ser_integrada)
	dominio_de_integracao = linspace(_intervalo.inicio, _intervalo.fim, _intervalo.particoes_numericas + 1);
	h = _intervalo.tamanho/_intervalo.particoes_numericas;

	impares = 2 * funcao_a_ser_integrada(dominio_de_integracao(3:2:_intervalo.particoes_numericas-1));
	pares = 4 * funcao_a_ser_integrada(dominio_de_integracao(2:2:_intervalo.particoes_numericas));
	pontas = funcao_a_ser_integrada(dominio_de_integracao([1 _intervalo.particoes_numericas+1]));
	integral = h .* (sum(pontas) + sum(impares) + sum(pares))./3;

endfunction