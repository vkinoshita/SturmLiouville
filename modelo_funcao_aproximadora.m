# Modelo de Dados
# Modelo para a funcao aproximadora

function modelo = modelo_funcao_aproximadora()
	modelo = struct (
		"funcao", @(j, x) 0,
		"derivada_da_funcao_em_x", @(j, x) 0,
		"tamanho_da_serie", 0,
		"vetor_das_funcoes", []
		);
endfunction