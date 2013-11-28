function intervalo = entrada_intervalo_a_ser_interpolado()
	intervalo = modelo_intervalo();

	intervalo.inicio  = 0;
	intervalo.fim     = pi;
	intervalo.tamanho = pi - 0;

	# contempla particoes pra plot e integracao de simpson
	intervalo.particoes_numericas = 42;
endfunction