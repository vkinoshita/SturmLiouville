# entrada principal dada pelo enunciado do ep

function entrada = entrada_principal()
	entrada = modelo_entrada();
		entrada.tamanho_da_serie = 5;
		entrada.funcao_exata     = @(x) exp(x) .* sin(x);
endfunction 