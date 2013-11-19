# Modelo de Dados
# Modelo para os dados de entrada

function modelo = modelo_entrada()
	modelo = struct(
		"tamanho_da_serie"         , 0,
		"funcao_exata"             , @(x) 0
		);
endfunction