# modelo de todas as informacoes necessarias para realizar
# a sturm liouville

function modelo = modelo_informacoes_sturm_liouville()
	modelo = struct(
		"funcao_exata"        , @(x) 0,
		"intervalo"           , modelo_intervalo(),
		"funcao_aproximadora" , modelo_funcao_aproximadora(),
		"funcoes_coeficientes", modelo_funcoes_coeficientes()
		);
endfunction