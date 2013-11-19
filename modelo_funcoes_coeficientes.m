# Modelo de Dados
# Modelo para as funcoes coeficientes

function funcoes = modelo_funcoes_coeficientes()
	funcoes = struct(
		"p", @(x) 0,
		"q", @(x) 0,
		# (-p(x) funcao_exata'(x))' + q(x) funcao_exata(x)
		"f", @(x) 0
		);
endfunction