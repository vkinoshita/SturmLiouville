function infos = entrada_3_principal()
	infos = modelo_informacoes_sturm_liouville();

	infos.funcao_exata         = @(x) exp(x) .* sin(x);
	infos.intervalo            = entrada_intervalo_a_ser_interpolado();
	infos.funcao_aproximadora  = entrada_vj_aproximador(infos.intervalo.tamanho);

	# segundo tipo de funcoes
	infos.funcoes_coeficientes = entrada_funcoes_coeficientes_3();
endfunction