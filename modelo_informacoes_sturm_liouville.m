function modelo = modelo_informacoes_sturm_liouville()
	modelo = struct(
		"entrada", modelo_entrada(),
		"funcao_aproximadora", modelo_funcao_aproximadora(),
		"funcoes_coeficientes", modelo_funcoes_coeficientes()
		);
endfunction