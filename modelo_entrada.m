# Modelo de Dados
# Modelo para os dados de entrada

function modelo = modelo_entrada()
	modelo = struct(
		"tamanho_da_serie", 0,
		"intervalo_inicio", 0,
		"intervalo_fim"   , 0,
		"funcao_exata"    , @(x) 0
		);
endfunction