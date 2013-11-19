# Modelo de Dados
# Modelo para as funcoes coeficientes

function funcoes = modelo_funcoes_coeficientes()
	funcoes = struct(
		"p", @(x) 0,
		"q", @(x) 0,
		"f", @(x) 0
		);
endfunction