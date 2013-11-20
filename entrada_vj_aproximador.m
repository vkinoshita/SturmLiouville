# vj aproximador dado pelo enunciado do ep

# recebe o tamanho do intervado
function vj = entrada_vj_aproximador(tamanho_do_intervalo)
	funcao = modelo_funcao_aproximadora();

	vj.funcao                  = @(j, x) sin((j * pi * x) / tamanho_do_intervalo);
	vj.derivada_da_funcao_em_x = @(j, x) j * pi * cos((j * pi * x) / tamanho_do_intervalo) / tamanho_do_intervalo;
	vj.tamanho_da_serie        = 20;
endfunction