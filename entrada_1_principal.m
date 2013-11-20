function infos = entrada_1_principal()
	infos = modelo_informacoes_sturm_liouville();

	infos.tamanho_da_serie = 5;
	infos.funcao_exata = @(x) exp(x) .* sin(x);

	infos.intervalo = entrada_intervalo_a_ser_interpolado();
	infos.funcao_aproximadora = entrada_vj_aproximador(infos.intervalo.tamanho);
	infos.funcoes_coeficientes = entrada_funcoes_coeficientes_1();
endfunction