function modelo = modelo_intervalo()
	modelo = struct(
		"inicio", 0,
		"fim", 0,
		"tamanho", 0,
		"particoes_numericas", 1 # contempla particoes pra plot e integracao de simpson
		);
endfunction