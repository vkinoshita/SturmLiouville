# entrada principal dada pelo enunciado do ep

function entrada = entrada_principal()
	entrada = modelo_entrada();
		entrada.tamanho_da_serie         = 5;
		entrada.intervalo_inicio         = 0;
		entrada.intervalo_fim            = pi;
		entrada.funcao_exata             = @(x) exp(x) .* sin(x);
		entrada.numero_particoes_simpson = 5;
endfunction 